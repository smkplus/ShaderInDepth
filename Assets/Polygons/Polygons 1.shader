// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6059,x:32710,y:33316,varname:node_6059,prsc:2|emission-2111-OUT;n:type:ShaderForge.SFN_TexCoord,id:6759,x:31065,y:33346,varname:node_6759,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:8591,x:31230,y:33346,varname:node_8591,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6759-UVOUT;n:type:ShaderForge.SFN_ArcTan2,id:3100,x:31651,y:33361,varname:node_3100,prsc:2,attp:0|A-8847-G,B-8847-R;n:type:ShaderForge.SFN_ComponentMask,id:8847,x:31389,y:33346,varname:node_8847,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8591-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3477,x:31651,y:33567,ptovrint:False,ptlb:PolygonNumber,ptin:_PolygonNumber,varname:node_3477,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Multiply,id:3049,x:31866,y:33442,varname:node_3049,prsc:2|A-3100-OUT,B-3477-OUT;n:type:ShaderForge.SFN_Cos,id:1355,x:32159,y:33440,varname:node_1355,prsc:2|IN-3049-OUT;n:type:ShaderForge.SFN_Length,id:9413,x:32347,y:33726,varname:node_9413,prsc:2|IN-3155-OUT;n:type:ShaderForge.SFN_Smoothstep,id:2111,x:32539,y:33416,varname:node_2111,prsc:2|A-5516-OUT,B-1355-OUT,V-9413-OUT;n:type:ShaderForge.SFN_Add,id:5516,x:32344,y:33318,varname:node_5516,prsc:2|A-3543-OUT,B-1355-OUT;n:type:ShaderForge.SFN_Vector1,id:3543,x:32159,y:33262,varname:node_3543,prsc:2,v1:0.02;n:type:ShaderForge.SFN_Relay,id:3155,x:31680,y:33727,varname:node_3155,prsc:2|IN-8847-OUT;proporder:3477;pass:END;sub:END;*/

Shader "Unlit/Flower" {
    Properties {
        _PolygonNumber ("PolygonNumber", Float ) = 3
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
            uniform float _PolygonNumber;
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
                float2 node_8847 = (i.uv0*2.0+-1.0).rg;
                float node_3100 = atan2(node_8847.g,node_8847.r);
                float node_1355 = cos((node_3100*_PolygonNumber));
                float node_5516 = (0.02+node_1355);
                float node_9413 = length(node_8847);
                float node_2111 = smoothstep( node_5516, node_1355, node_9413 );
                float3 emissive = float3(node_2111,node_2111,node_2111);
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
