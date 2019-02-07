// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1387,x:33122,y:32710,varname:node_1387,prsc:2|emission-2107-OUT;n:type:ShaderForge.SFN_Code,id:2107,x:32072,y:32882,varname:node_2107,prsc:2,code:ZgBsAG8AYQB0ACAAZAAgAD0AIAAwAC4AMAAsACAAbAA7AAoAZgBsAG8AYQB0ADIAIABzACAAPQAgAHAAOwAKAAoAZgBvAHIAIAAoAGkAbgB0ACAAaQAgAD0AIAAwADsAIABpACAAPAAgAEkAVABFAFIAQQBUAEkATwBOADsAIABpACsAKwApACAAewANAAoAIAAgACAAIABzACAAPQAgAGYAbABvAGEAdAAyACgAcwAuAHgAIAAqACAAcwAuAHgAIAAtACAAcwAuAHkAIAAqACAAcwAuAHkAIAArACAAcAAuAHgALAAgADIALgAwACAAKgAgAHMALgB4ACAAKgAgAHMALgB5ACAAKwAgAHAALgB5ACkAOwANAAoAIAAgACAAIABsACAAPQAgAGwAZQBuAGcAdABoACgAcwApADsADQAKACAAIAAgACAAZAAgACsAPQAgAGwAIAArACAALgAwADsADQAKACAAIAAgACAAaQBmACAAKABsACAAPgAgADIALgAwACkAIAByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAzACgAMQAuACwAMQAuACwAMQAuACkAKgBkADsADQAKACAAIAB9AAoAcgBlAHQAdQByAG4AIABmAGwAbwBhAHQAMwAoADAALgAsADAALgAsADAALgApADsA,output:2,fname:Mandelbrot,width:720,height:197,input:1,input:0,input_1_label:p,input_2_label:ITERATION|A-5334-OUT,B-3263-OUT;n:type:ShaderForge.SFN_TexCoord,id:8379,x:31287,y:32807,varname:node_8379,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector1,id:3263,x:31787,y:33039,varname:node_3263,prsc:2,v1:30;n:type:ShaderForge.SFN_RemapRange,id:6587,x:31532,y:32807,varname:node_6587,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8379-UVOUT;n:type:ShaderForge.SFN_Divide,id:5334,x:31787,y:32844,varname:node_5334,prsc:2|A-6587-OUT,B-6389-OUT;n:type:ShaderForge.SFN_Vector1,id:6389,x:31398,y:32599,varname:node_6389,prsc:2,v1:0.5;pass:END;sub:END;*/

Shader "Hidden/mandelbrot" {
    Properties {
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            float3 Mandelbrot( float2 p , float ITERATION ){
            float d = 0.0, l;
            float2 s = p;
            
            for (int i = 0; i < ITERATION; i++) {
                s = float2(s.x * s.x - s.y * s.y + p.x, 2.0 * s.x * s.y + p.y);
                l = length(s);
                d += l + .0;
                if (l > 2.0) return float3(1.,1.,1.)*d;
              }
            return float3(0.,0.,0.);
            }
            
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float3 emissive = Mandelbrot( ((i.uv0*2.0+-1.0)/0.5) , 30.0 );
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
