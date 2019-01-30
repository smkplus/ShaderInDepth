// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6950,x:33035,y:32916,varname:node_6950,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:511,x:31796,y:32872,varname:node_511,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:4635,x:31975,y:32872,varname:node_4635,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-511-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:638,x:32156,y:32800,varname:node_638,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4635-OUT;n:type:ShaderForge.SFN_ArcTan2,id:2162,x:32309,y:33204,varname:node_2162,prsc:2,attp:0|A-9933-G,B-9933-R;n:type:ShaderForge.SFN_ArcTan,id:2119,x:32517,y:32810,varname:node_2119,prsc:2|IN-8358-OUT;n:type:ShaderForge.SFN_Divide,id:8358,x:32337,y:32810,varname:node_8358,prsc:2|A-638-G,B-638-R;n:type:ShaderForge.SFN_TexCoord,id:4070,x:31797,y:33191,varname:node_4070,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:969,x:31979,y:33191,varname:node_969,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4070-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:9933,x:32131,y:33191,varname:node_9933,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-969-OUT;pass:END;sub:END;*/

Shader "Unlit/AtanAndAtan2" {
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
