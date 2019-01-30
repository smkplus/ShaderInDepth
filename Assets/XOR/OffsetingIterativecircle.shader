// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8012,x:33328,y:32782,varname:node_8012,prsc:2|emission-4319-OUT;n:type:ShaderForge.SFN_TexCoord,id:3260,x:31656,y:32723,varname:node_3260,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:1434,x:31841,y:32723,varname:node_1434,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3260-UVOUT;n:type:ShaderForge.SFN_Length,id:5654,x:32251,y:32935,varname:node_5654,prsc:2|IN-807-OUT;n:type:ShaderForge.SFN_Frac,id:4428,x:32644,y:32894,varname:node_4428,prsc:2|IN-8921-OUT;n:type:ShaderForge.SFN_Multiply,id:8921,x:32466,y:32894,varname:node_8921,prsc:2|A-9293-OUT,B-5654-OUT;n:type:ShaderForge.SFN_Vector1,id:9293,x:32251,y:32849,varname:node_9293,prsc:2,v1:5;n:type:ShaderForge.SFN_Subtract,id:807,x:32087,y:32935,varname:node_807,prsc:2|A-1434-OUT,B-1896-OUT;n:type:ShaderForge.SFN_Vector2,id:1896,x:31919,y:32984,cmnt:Offset,varname:node_1896,prsc:2,v1:0.3,v2:0.3;n:type:ShaderForge.SFN_Length,id:9635,x:32251,y:32718,varname:node_9635,prsc:2|IN-1434-OUT;n:type:ShaderForge.SFN_Multiply,id:7621,x:32466,y:32757,varname:node_7621,prsc:2|A-9635-OUT,B-9293-OUT;n:type:ShaderForge.SFN_Frac,id:8446,x:32644,y:32757,varname:node_8446,prsc:2|IN-7621-OUT;n:type:ShaderForge.SFN_Append,id:4319,x:33135,y:32882,varname:node_4319,prsc:2|A-9410-OUT,B-6069-OUT;n:type:ShaderForge.SFN_Step,id:9410,x:32935,y:32758,varname:node_9410,prsc:2|A-8446-OUT,B-2573-OUT;n:type:ShaderForge.SFN_Vector1,id:2573,x:32765,y:32835,varname:node_2573,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Step,id:6069,x:32935,y:32904,varname:node_6069,prsc:2|A-4428-OUT,B-3155-OUT;n:type:ShaderForge.SFN_Vector1,id:3155,x:32765,y:33010,varname:node_3155,prsc:2,v1:0.5;pass:END;sub:END;*/

Shader "Custom/OffsetingIterativecircle" {
    Properties {
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 200
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
                float2 node_1434 = (i.uv0*2.0+-1.0);
                float node_9293 = 5.0;
                float3 emissive = float3(float2(step(frac((length(node_1434)*node_9293)),0.5),step(frac((node_9293*length((node_1434-float2(0.3,0.3))))),0.5)),0.0);
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
