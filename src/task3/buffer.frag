#version 330

layout (location = 0) out vec4 AlbedoSpec;

in vec2 TexCoords;

uniform sampler2D texture_diffuse1;

void main()
{
        AlbedoSpec = texture(texture_diffuse1, TexCoords);
}
