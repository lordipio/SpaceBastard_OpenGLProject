#version 410 core

layout(location = 0) in vec2 UV;
out vec4 color;
uniform vec3 u_Color;
uniform sampler2D MeteorTexture;

void main()
{
	vec4 TextureColor = texture(MeteorTexture, UV);
	color = TextureColor * vec4(u_Color, 1.f);
}


