// Fragment Shader
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

vec3 hsv2rgb(vec3 c) 
{
    vec4 K = vec4(1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0);
    vec3 p = abs(fract(c.xxx + K.xyz) * 6.0 - K.www);
    return c.z * mix(K.xxx, clamp(p - K.xxx, 0.0, 1.0), c.y);
}

void main()
{
    vec3 col = vec3(v_vTexcoord.x, 1.0, 1.0);
    float alpha = texture2D(gm_BaseTexture, v_vTexcoord).a;
    gl_FragColor = v_vColour * vec4(hsv2rgb(col), alpha);
}