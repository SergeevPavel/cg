#version 330 core
layout (location = 0) in vec3 position;
// layout (location = 1) in vec3 normal;
layout (location = 2) in vec2 texCoords;

out vec2 TexCoords;

out vec4 ProjectionCoords;

uniform mat4 model;
uniform mat4 view;
uniform mat4 projection;

uniform mat4 projectorProjection;
uniform mat4 projectorView;

void main()
{
    gl_Position = projection * view * model * vec4(position, 1.0f);
    TexCoords = texCoords;
    ProjectionCoords = projectorProjection * projectorView * (model * vec4(position, 1.0f));
}
