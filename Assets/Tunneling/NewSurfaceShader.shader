// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4290,x:32870,y:32739,varname:node_4290,prsc:2;n:type:ShaderForge.SFN_ArcTan2,id:567,x:32073,y:32788,varname:node_567,prsc:2,attp:0|A-9188-G,B-9188-R;n:type:ShaderForge.SFN_TexCoord,id:2370,x:31511,y:32776,varname:node_2370,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:1186,x:31685,y:32776,varname:node_1186,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2370-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:9188,x:31852,y:32776,varname:node_9188,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1186-OUT;n:type:ShaderForge.SFN_RemapRange,id:8336,x:32247,y:32788,varname:node_8336,prsc:2,frmn:-3.14,frmx:3.14,tomn:0,tomx:1|IN-567-OUT;n:type:ShaderForge.SFN_Subtract,id:4674,x:32456,y:32788,varname:node_4674,prsc:2|A-8336-OUT,B-1619-OUT;n:type:ShaderForge.SFN_Slider,id:6886,x:31916,y:32988,ptovrint:False,ptlb:Value,ptin:_Value,varname:node_6886,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Ceil,id:5592,x:32665,y:32788,varname:node_5592,prsc:2|IN-4674-OUT;n:type:ShaderForge.SFN_OneMinus,id:1619,x:32280,y:32989,varname:node_1619,prsc:2|IN-6886-OUT;proporder:6886;pass:END;sub:END;*/

Shader "Custom/Arctangent2" {
    Properties {
        _Value ("Value", Range(0, 1)) = 0
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
