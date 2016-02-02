// Std. Includes
#include <string>

// GLEW
#define GLEW_STATIC
#include <GL/glew.h>

// GLFW
#include <GLFW/glfw3.h>

// GL includes
#include <learnopengl/shader.h>
#include <learnopengl/camera.h>
#include <learnopengl/model.h>

// GLM Mathemtics
#include <glm/glm.hpp>
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtc/type_ptr.hpp>

// Other Libs
#include <SOIL.h>
#include <learnopengl/filesystem.h>

// Properties
GLuint screenWidth = 800, screenHeight = 600;
GLint filter_type = GL_NEAREST;
bool isDynamicTexture = false;

// Function prototypes
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode);
void scroll_callback(GLFWwindow* window, double xoffset, double yoffset);
void mouse_callback(GLFWwindow* window, double xpos, double ypos);
void Do_Movement();
GLuint loadTextureWithoutRepeat(std::string path);

// Camera
Camera camera(glm::vec3(0.0f, 0.0f, 3.0f));
Camera projectorCamera(glm::vec3(0.0, 0.0, 3.0));

bool keys[1024];
GLfloat lastX = 400, lastY = 300;
bool firstMouse = true;

GLfloat deltaTime = 0.0f;
GLfloat lastFrame = 0.0f;

// The MAIN function, from here we start our application and run our Game loop
int main()
{
    // Init GLFW
    glfwInit();
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 3);
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 3);
    glfwWindowHint(GLFW_OPENGL_PROFILE, GLFW_OPENGL_CORE_PROFILE);
    glfwWindowHint(GLFW_RESIZABLE, GL_FALSE);

    GLFWwindow* window = glfwCreateWindow(screenWidth, screenHeight, "LearnOpenGL", nullptr, nullptr); // Windowed
    glfwMakeContextCurrent(window);

    // Set the required callback functions
    glfwSetKeyCallback(window, key_callback);
    glfwSetCursorPosCallback(window, mouse_callback);
    glfwSetScrollCallback(window, scroll_callback);

    // Options
    glfwSetInputMode(window, GLFW_CURSOR, GLFW_CURSOR_DISABLED);

    // Initialize GLEW to setup the OpenGL Function pointers
    glewExperimental = GL_TRUE;
    glewInit();

    // Define the viewport dimensions
    glViewport(0, 0, screenWidth, screenHeight);

    // Setup some OpenGL options
    glEnable(GL_DEPTH_TEST);

    // Setup and compile our shaders
    Shader shader("shader.vs", "shader.frag");
    Shader cameraShader("camera.vs", "camera.frag");
    Shader bufferShader("buffer.vs", "buffer.frag");

    // Load models
    Model ourModel(FileSystem::getPath("resources/objects/building/house.obj").c_str());

    // Frame buffer setup
    GLuint gBuffer;
    glGenFramebuffers(1, &gBuffer);
    glBindFramebuffer(GL_FRAMEBUFFER, gBuffer);
    
    GLuint gAlbedoSpec;
    
    glGenTextures(1, &gAlbedoSpec);
    glBindTexture(GL_TEXTURE_2D, gAlbedoSpec);
    glTexImage2D(GL_TEXTURE_2D, 0, GL_RGBA, screenWidth, screenHeight, 0, GL_RGBA, GL_UNSIGNED_BYTE, nullptr);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, GL_NEAREST);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_BORDER);
    glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_BORDER);
    
    GLuint rboDepth;
    glGenRenderbuffers(1, &rboDepth);
    glBindRenderbuffer(GL_RENDERBUFFER, rboDepth);
    glRenderbufferStorage(GL_RENDERBUFFER, GL_DEPTH_COMPONENT, screenWidth, screenHeight);
    glFramebufferRenderbuffer(GL_FRAMEBUFFER, GL_DEPTH_ATTACHMENT, GL_RENDERBUFFER, rboDepth);
    
    glFramebufferTexture(GL_FRAMEBUFFER, GL_COLOR_ATTACHMENT0, gAlbedoSpec, 0);
    
    GLuint attachments[1] = { GL_COLOR_ATTACHMENT0 };
    glDrawBuffers(1, attachments);
    
    if (glCheckFramebufferStatus(GL_FRAMEBUFFER) != GL_FRAMEBUFFER_COMPLETE)
    	std::cout << "Framebuffer not complete!" << std::endl;
    glBindFramebuffer(GL_FRAMEBUFFER, 0);


    // Camera vertexes setup
    float pf = 100.0f;
    float pn = 0.1f;

    glm::vec3 ftl = glm::vec3(-1, +1, pf); //far top left
    glm::vec3 fbr = glm::vec3(+1, -1, pf); //far bottom right
    glm::vec3 fbl = glm::vec3(-1, -1, pf); //far bottom left
    glm::vec3 ftr = glm::vec3(+1, +1, pf); //far top right
    glm::vec3 ntl = glm::vec3(-1, +1, pn); //near top left
    glm::vec3 nbr = glm::vec3(+1, -1, pn); //near bottom right
    glm::vec3 nbl = glm::vec3(-1, -1, pn); //near bottom left
    glm::vec3 ntr = glm::vec3(+1, +1, pn); //near top right

    glm::vec3 frustum_coords[36] = {
            // near
            ntl, nbl, ntr, // 1 triangle
            ntr, nbl, nbr,
            // right
            nbr, ftr, ntr,
            ftr, nbr, fbr,
            // left
            nbl, ftl, ntl,
            ftl, nbl, fbl,
            // far
            ftl, fbl, fbr,
            fbr, ftr, ftl,
            //bottom
            nbl, fbr, fbl,
            fbr, nbl, nbr,
            //top
            ntl, ftr, ftl,
            ftr, ntl, ntr
    };

    GLuint camVAO, camVBO;

    glGenVertexArrays(1, &camVAO);
    glGenBuffers(1, &camVBO);

    glBindVertexArray(camVAO);
    glBindBuffer(GL_ARRAY_BUFFER, camVBO);
    glBufferData(GL_ARRAY_BUFFER, sizeof(frustum_coords), &frustum_coords, GL_STATIC_DRAW);

    glVertexAttribPointer(0, 3, GL_FLOAT, GL_FALSE, 3 * sizeof(GLfloat), static_cast<GLvoid *>(nullptr));
    glEnableVertexAttribArray(0);

    glBindVertexArray(0);

    // endcamera vertexes setup


    const glm::mat4 projection = glm::perspective(camera.Zoom, (float)screenWidth/(float)screenHeight, 0.1f, 100.0f);
    const glm::mat4 projectorProjection = glm::perspective(projectorCamera.Zoom, 1.0f, pn, pf);
    GLuint smileTexture = loadTextureWithoutRepeat(FileSystem::getPath("resources/textures/awesomeface.png"));

    float angle = 0.0;
   
    // Game loop
    while(!glfwWindowShouldClose(window))
    {
        // Set frame time
        GLfloat currentFrame = glfwGetTime();
        deltaTime = currentFrame - lastFrame;
        lastFrame = currentFrame;

	angle += deltaTime * 0.5;
	if (angle > 3.14 * 2)
		angle = 0;

	glm::vec3 flyingPosition = glm::vec3(7.0f * cos(angle), 1.0f, 7.0f * sin(angle));
	glm::mat4 flyingView = glm::lookAt(flyingPosition, glm::vec3(0.0f, 0.0f, 0.0f), glm::vec3(0.0, 0.0, 1.0));

        // Check and call events
        glfwPollEvents();
        Do_Movement();

        // Clear the colorbuffer
        glClearColor(0.05f, 0.05f, 0.05f, 1.0f);
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

    	glPolygonMode(GL_FRONT_AND_BACK, GL_FILL);
       
	shader.Use();   // <-- Don't forget this one!
        // Transformation matrices
        glm::mat4 view = camera.GetViewMatrix();
        glUniformMatrix4fv(glGetUniformLocation(shader.Program, "projection"), 1, GL_FALSE, glm::value_ptr(projection));
        glUniformMatrix4fv(glGetUniformLocation(shader.Program, "view"), 1, GL_FALSE, glm::value_ptr(view));

        // Draw the loaded model
        glm::mat4 model;
        model = glm::translate(model, glm::vec3(0.0f, -1.75f, 0.0f)); // Translate it down a bit so it's at the center of the scene
        // model = glm::scale(model, glm::vec3(0.5f, 0.5f, 0.5f));	// It's a bit too big for our scene, so scale it down
        glUniformMatrix4fv(glGetUniformLocation(shader.Program, "model"), 1, GL_FALSE, glm::value_ptr(model));

	// Provide projection stuff
	glm::mat4 projectorView = projectorCamera.GetViewMatrix();
	glUniformMatrix4fv(glGetUniformLocation(shader.Program, "projectorProjection"), 1, GL_FALSE, glm::value_ptr(projectorProjection));
	glUniformMatrix4fv(glGetUniformLocation(shader.Program, "projectorView"), 1, GL_FALSE, glm::value_ptr(projectorView));


	glUniform1i(glGetUniformLocation(shader.Program, "projection_texture"), 5);
	glActiveTexture(GL_TEXTURE5);
	glBindTexture(GL_TEXTURE_2D, isDynamicTexture ? gAlbedoSpec : smileTexture);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MIN_FILTER, filter_type);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_MAG_FILTER, filter_type == GL_LINEAR_MIPMAP_LINEAR ? GL_LINEAR : filter_type);
        ourModel.Draw(shader);       
	
	// Fill buffer
	glBindFramebuffer(GL_FRAMEBUFFER, gBuffer);
	glViewport(0, 0, screenWidth, screenHeight);

	glClearColor(0.5f, 0.5f, 0.5f, 1.0f);
 	glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);

	bufferShader.Use();
	glUniformMatrix4fv(glGetUniformLocation(bufferShader.Program, "projection"), 1, GL_FALSE, glm::value_ptr(projection));
	glUniformMatrix4fv(glGetUniformLocation(bufferShader.Program, "view"), 1, GL_FALSE, glm::value_ptr(flyingView));
	glUniformMatrix4fv(glGetUniformLocation(bufferShader.Program, "model"), 1, GL_FALSE, glm::value_ptr(model));
	ourModel.Draw(bufferShader);

	glBindFramebuffer(GL_FRAMEBUFFER, 0);

	// Draw cameras
    	glPolygonMode(GL_FRONT_AND_BACK, GL_LINE);
	cameraShader.Use();
        glUniformMatrix4fv(glGetUniformLocation(cameraShader.Program, "projection"), 1, GL_FALSE, glm::value_ptr(projection));
        glUniformMatrix4fv(glGetUniformLocation(cameraShader.Program, "view"), 1, GL_FALSE, glm::value_ptr(view));
	model = glm::inverse(projectorProjection * projectorCamera.GetViewMatrix());
	glUniformMatrix4fv(glGetUniformLocation(cameraShader.Program, "model"), 1, GL_FALSE, glm::value_ptr(model));
	glBindVertexArray(camVAO);
	glDrawArrays(GL_TRIANGLES, 0, 36);
	glBindVertexArray(0);

	cameraShader.Use();
        glUniformMatrix4fv(glGetUniformLocation(cameraShader.Program, "projection"), 1, GL_FALSE, glm::value_ptr(projection));
        glUniformMatrix4fv(glGetUniformLocation(cameraShader.Program, "view"), 1, GL_FALSE, glm::value_ptr(view));
	model = glm::inverse(projectorProjection * flyingView);
	glUniformMatrix4fv(glGetUniformLocation(cameraShader.Program, "model"), 1, GL_FALSE, glm::value_ptr(model));
	glBindVertexArray(camVAO);
	glDrawArrays(GL_TRIANGLES, 0, 36);
	glBindVertexArray(0);
	// end

        // Swap the buffers
        glfwSwapBuffers(window);
    }

    glfwTerminate();
    return 0;
}

GLuint loadTextureWithoutRepeat(std::string path)
{
	//Generate texture ID and load texture data 
	GLuint textureID;
	glGenTextures(1, &textureID);
	int width, height;
	unsigned char* image = SOIL_load_image(path.c_str(), &width, &height, nullptr, SOIL_LOAD_RGB);
	// Assign texture to ID
	glBindTexture(GL_TEXTURE_2D, textureID);
	glTexImage2D(GL_TEXTURE_2D, 0, GL_RGB, width, height, 0, GL_RGB, GL_UNSIGNED_BYTE, image);
	glGenerateMipmap(GL_TEXTURE_2D);

	// Parameters
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_S, GL_CLAMP_TO_BORDER);
	glTexParameteri(GL_TEXTURE_2D, GL_TEXTURE_WRAP_T, GL_CLAMP_TO_BORDER);
	glBindTexture(GL_TEXTURE_2D, 0);
	SOIL_free_image_data(image);
	return textureID;
}

#pragma region "User input"

// Moves/alters the camera positions based on user input
void Do_Movement()
{
    // Camera controls
    if(keys[GLFW_KEY_W])
        camera.ProcessKeyboard(FORWARD, deltaTime);
    if(keys[GLFW_KEY_S])
        camera.ProcessKeyboard(BACKWARD, deltaTime);
    if(keys[GLFW_KEY_A])
        camera.ProcessKeyboard(LEFT, deltaTime);
    if(keys[GLFW_KEY_D])
        camera.ProcessKeyboard(RIGHT, deltaTime);
    if(keys[GLFW_KEY_SPACE]) {
	projectorCamera = camera;
	std::cout << "new projector position" << std::endl;
	keys[GLFW_KEY_SPACE] = false;
    }
}

// Is called whenever a key is pressed/released via GLFW
void key_callback(GLFWwindow* window, int key, int scancode, int action, int mode)
{
    if(key == GLFW_KEY_ESCAPE && action == GLFW_PRESS)
        glfwSetWindowShouldClose(window, GL_TRUE);

    if(action == GLFW_PRESS)
        keys[key] = true;
    else if(action == GLFW_RELEASE)
        keys[key] = false;

    if (key == GLFW_KEY_1)
    	filter_type = GL_NEAREST;
    if (key == GLFW_KEY_2)
    	filter_type = GL_LINEAR;
    if (key == GLFW_KEY_3)
	filter_type = GL_LINEAR_MIPMAP_LINEAR;

    if (key == GLFW_KEY_C && action == GLFW_PRESS) {
	isDynamicTexture = !isDynamicTexture;
    }

}

void mouse_callback(GLFWwindow* window, double xpos, double ypos)
{
    if(firstMouse)
    {
        lastX = xpos;
        lastY = ypos;
        firstMouse = false;
    }

    GLfloat xoffset = xpos - lastX;
    GLfloat yoffset = lastY - ypos; 
    
    lastX = xpos;
    lastY = ypos;

    camera.ProcessMouseMovement(xoffset, yoffset);
}	

void scroll_callback(GLFWwindow* window, double xoffset, double yoffset)
{
    camera.ProcessMouseScroll(yoffset);
}

#pragma endregion
