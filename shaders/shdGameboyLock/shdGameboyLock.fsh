//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;


void main()
{
    vec3 col1 = vec3(0.2, 0.12, 0.31);//dark purple
    vec3 col2 = vec3(0.84, 0.56, 0.29); //light purple
    vec3 col3 = vec3(0.65, 0.22, 0.15);//dark orange
    vec3 col4 = vec3(0.97, 0.91, 0.78);//light orange
    
    vec3 c = (v_vColour * texture2D( gm_BaseTexture, v_vTexcoord )).rgb;
    
    float dist1 = length(c - col1);
    float dist2 = length(c - col2);
    float dist3 = length(c - col3);
    float dist4 = length(c - col4);

    float d = min(dist1,dist2);
    d = min(d,dist3);
    d = min(d,dist4);
    
    if(d == dist1) {
        gl_FragColor = vec4(col1,  texture2D( gm_BaseTexture, v_vTexcoord ).a);
    }
    else if(d == dist2) {
        gl_FragColor = vec4(col2,  texture2D( gm_BaseTexture, v_vTexcoord ).a);
    }
    else if(d == dist3) {
        gl_FragColor = vec4(col3,  texture2D( gm_BaseTexture, v_vTexcoord ).a);
    }
    else if(d == dist4) {
        gl_FragColor = vec4(col4,  texture2D( gm_BaseTexture, v_vTexcoord ).a);
    }
    
}