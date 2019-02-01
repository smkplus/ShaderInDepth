// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4859,x:33522,y:33013,varname:node_4859,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:7613,x:32104,y:32727,varname:node_7613,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:2293,x:32320,y:32726,varname:node_2293,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7613-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4372,x:32482,y:32622,varname:node_4372,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2293-OUT;n:type:ShaderForge.SFN_ArcTan,id:5460,x:33234,y:32353,varname:node_5460,prsc:2|IN-5868-OUT;n:type:ShaderForge.SFN_Divide,id:5868,x:33019,y:32429,varname:node_5868,prsc:2|A-4372-G,B-6062-OUT;n:type:ShaderForge.SFN_ArcTan2,id:844,x:32691,y:32966,varname:node_844,prsc:2,attp:0|A-4372-G,B-4372-R;n:type:ShaderForge.SFN_Abs,id:6062,x:32692,y:32425,varname:node_6062,prsc:2|IN-4372-R;n:type:ShaderForge.SFN_Ceil,id:4423,x:32828,y:32631,varname:node_4423,prsc:2|IN-4372-R;n:type:ShaderForge.SFN_OneMinus,id:3,x:33002,y:32631,varname:node_3,prsc:2|IN-4423-OUT;n:type:ShaderForge.SFN_Ceil,id:5721,x:32828,y:32776,varname:node_5721,prsc:2|IN-4372-G;n:type:ShaderForge.SFN_Multiply,id:8682,x:33301,y:32775,varname:node_8682,prsc:2|A-3-OUT,B-5721-OUT;n:type:ShaderForge.SFN_Add,id:142,x:33591,y:32639,varname:node_142,prsc:2|A-5460-OUT,B-8682-OUT;n:type:ShaderForge.SFN_Sign,id:2862,x:33007,y:32904,varname:node_2862,prsc:2|IN-4372-R;pass:END;sub:END;*/

Shader "Custom/NewSurfaceShader" {
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
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float3 finalColor = 0;
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
