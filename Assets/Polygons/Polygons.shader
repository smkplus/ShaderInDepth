// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6059,x:33764,y:33717,varname:node_6059,prsc:2|emission-8818-OUT;n:type:ShaderForge.SFN_TexCoord,id:6759,x:31170,y:33286,varname:node_6759,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:8591,x:31335,y:33286,varname:node_8591,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6759-UVOUT;n:type:ShaderForge.SFN_ArcTan2,id:3100,x:31676,y:33306,varname:node_3100,prsc:2,attp:0|A-8847-G,B-8847-R;n:type:ShaderForge.SFN_ComponentMask,id:8847,x:31494,y:33286,varname:node_8847,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8591-OUT;n:type:ShaderForge.SFN_Vector1,id:5643,x:31619,y:33838,varname:node_5643,prsc:2,v1:6.28;n:type:ShaderForge.SFN_Divide,id:3136,x:31810,y:33884,varname:node_3136,prsc:2|A-5643-OUT,B-4756-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3477,x:31417,y:33952,ptovrint:False,ptlb:PolygonNumber,ptin:_PolygonNumber,varname:node_3477,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Add,id:3675,x:31910,y:33409,varname:node_3675,prsc:2|A-3100-OUT,B-2610-OUT;n:type:ShaderForge.SFN_Vector1,id:2610,x:31676,y:33478,varname:node_2610,prsc:2,v1:1.570796;n:type:ShaderForge.SFN_Divide,id:981,x:32094,y:33684,varname:node_981,prsc:2|A-3675-OUT,B-3136-OUT;n:type:ShaderForge.SFN_Add,id:3219,x:32265,y:33744,varname:node_3219,prsc:2|A-981-OUT,B-1106-OUT;n:type:ShaderForge.SFN_Vector1,id:1106,x:32094,y:33818,varname:node_1106,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:9400,x:32749,y:33864,varname:node_9400,prsc:2|A-1927-OUT,B-3136-OUT;n:type:ShaderForge.SFN_Floor,id:1927,x:32431,y:33744,varname:node_1927,prsc:2|IN-3219-OUT;n:type:ShaderForge.SFN_Subtract,id:8281,x:32935,y:33783,varname:node_8281,prsc:2|A-9400-OUT,B-3675-OUT;n:type:ShaderForge.SFN_Cos,id:6039,x:33148,y:33783,varname:node_6039,prsc:2|IN-8281-OUT;n:type:ShaderForge.SFN_Multiply,id:6021,x:33384,y:33896,varname:node_6021,prsc:2|A-6039-OUT,B-2188-OUT;n:type:ShaderForge.SFN_RemapRange,id:6137,x:32935,y:33998,varname:node_6137,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4575-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:4575,x:32749,y:33998,varname:node_4575,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Length,id:2188,x:33147,y:33998,varname:node_2188,prsc:2|IN-6137-OUT;n:type:ShaderForge.SFN_Vector1,id:6477,x:33384,y:33766,varname:node_6477,prsc:2,v1:0.42;n:type:ShaderForge.SFN_Smoothstep,id:8818,x:33593,y:33818,varname:node_8818,prsc:2|A-6477-OUT,B-2300-OUT,V-6021-OUT;n:type:ShaderForge.SFN_Vector1,id:2300,x:33384,y:33832,varname:node_2300,prsc:2,v1:0.4;n:type:ShaderForge.SFN_Floor,id:4756,x:31619,y:33993,varname:node_4756,prsc:2|IN-3477-OUT;proporder:3477;pass:END;sub:END;*/

Shader "Unlit/Polygons" {
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
                float node_3675 = (atan2(node_8847.g,node_8847.r)+1.570796);
                float node_3136 = (6.28/floor(_PolygonNumber));
                float node_8818 = smoothstep( 0.42, 0.4, (cos(((floor(((node_3675/node_3136)+0.5))*node_3136)-node_3675))*length((i.uv0*2.0+-1.0))) );
                float3 emissive = float3(node_8818,node_8818,node_8818);
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
