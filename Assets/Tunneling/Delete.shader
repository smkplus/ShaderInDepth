// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7151,x:32941,y:32808,varname:node_7151,prsc:2|emission-5172-OUT;n:type:ShaderForge.SFN_ArcTan2,id:3339,x:32543,y:32845,varname:node_3339,prsc:2,attp:0|A-4480-G,B-4480-R;n:type:ShaderForge.SFN_TexCoord,id:3457,x:31998,y:32835,varname:node_3457,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:293,x:32161,y:32835,varname:node_293,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3457-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4480,x:32331,y:32835,varname:node_4480,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-293-OUT;n:type:ShaderForge.SFN_Divide,id:5172,x:32723,y:32907,varname:node_5172,prsc:2|A-3339-OUT,B-9935-OUT;n:type:ShaderForge.SFN_Vector1,id:9935,x:32543,y:33006,varname:node_9935,prsc:2,v1:3.14;pass:END;sub:END;*/

Shader "Unlit/Delete" {
    Properties {
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        LOD 100
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
                float2 node_4480 = (i.uv0*2.0+-1.0).rg;
                float node_5172 = (atan2(node_4480.g,node_4480.r)/3.14);
                float3 emissive = float3(node_5172,node_5172,node_5172);
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
