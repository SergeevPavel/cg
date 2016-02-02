#version 330 core
in vec2 TexCoords;
in vec4 ProjectionCoords;
out vec4 color;

uniform sampler2D texture_diffuse1;
uniform sampler2D projection_texture;

void main()
{    
    vec4 textureColor = texture(texture_diffuse1, TexCoords);
    vec2 ndc = (ProjectionCoords.xy / ProjectionCoords.w) / 2.0 + 0.5;
    vec4 projectionColor = vec4(0.0);
    if (ProjectionCoords.z > 0.0)
    {
    	projectionColor = texture(projection_texture, vec2(ndc.x, 1.0 - ndc.y));
    }
    color = mix(textureColor, projectionColor, 0.3);
}
