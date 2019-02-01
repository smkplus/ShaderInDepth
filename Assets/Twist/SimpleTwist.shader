// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7022,x:33870,y:32723,varname:node_7022,prsc:2|emission-7155-OUT;n:type:ShaderForge.SFN_TexCoord,id:7110,x:31942,y:32705,varname:node_7110,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:5453,x:32123,y:32705,varname:node_5453,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7110-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4011,x:32288,y:32705,varname:node_4011,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5453-OUT;n:type:ShaderForge.SFN_Length,id:8907,x:32508,y:32929,varname:node_8907,prsc:2|IN-4011-OUT;n:type:ShaderForge.SFN_Multiply,id:7328,x:32720,y:32929,varname:node_7328,prsc:2|A-8907-OUT,B-7273-OUT;n:type:ShaderForge.SFN_Add,id:3878,x:33001,y:32744,varname:node_3878,prsc:2|A-9858-OUT,B-7328-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7273,x:32508,y:33096,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_7273,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:20;n:type:ShaderForge.SFN_Cos,id:477,x:33361,y:32657,varname:node_477,prsc:2|IN-3878-OUT;n:type:ShaderForge.SFN_Sin,id:7895,x:33363,y:32969,varname:node_7895,prsc:2|IN-3878-OUT;n:type:ShaderForge.SFN_Append,id:5936,x:33552,y:32814,varname:node_5936,prsc:2|A-477-OUT,B-7895-OUT;n:type:ShaderForge.SFN_ArcTan2,id:9858,x:32508,y:32732,varname:node_9858,prsc:2,attp:0|A-4011-G,B-4011-R;n:type:ShaderForge.SFN_Append,id:1207,x:33716,y:32914,varname:node_1207,prsc:2|A-5936-OUT;n:type:ShaderForge.SFN_Ceil,id:5176,x:33600,y:33013,varname:node_5176,prsc:2|IN-5936-OUT;n:type:ShaderForge.SFN_Smoothstep,id:7155,x:34136,y:32836,varname:node_7155,prsc:2|A-6775-OUT,B-3286-OUT,V-5936-OUT;n:type:ShaderForge.SFN_Vector1,id:6775,x:34080,y:33020,varname:node_6775,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:3286,x:34260,y:32782,varname:node_3286,prsc:2,v1:0.1;proporder:7273;pass:END;sub:END;*/

Shader "Unlit/SimpleTwist" {
    Properties {
        _scale ("scale", Float ) = 20
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
            uniform float _scale;
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
                float node_6775 = 0.0;
                float node_3286 = 0.1;
                float2 node_4011 = (i.uv0*2.0+-1.0).rg;
                float node_8907 = length(node_4011);
                float node_3878 = (atan2(node_4011.g,node_4011.r)+(node_8907*_scale));
                float2 node_5936 = float2(cos(node_3878),sin(node_3878));
                float3 emissive = float3(smoothstep( float2(node_6775,node_6775), float2(node_3286,node_3286), node_5936 ),0.0);
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
