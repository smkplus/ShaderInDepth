// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7022,x:33896,y:32714,varname:node_7022,prsc:2|emission-5176-OUT;n:type:ShaderForge.SFN_TexCoord,id:7110,x:32055,y:32796,varname:node_7110,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:5453,x:32336,y:32796,varname:node_5453,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7110-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4011,x:32685,y:32794,varname:node_4011,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5453-OUT;n:type:ShaderForge.SFN_Cos,id:477,x:33361,y:32649,varname:node_477,prsc:2|IN-2355-OUT;n:type:ShaderForge.SFN_Sin,id:7895,x:33352,y:32948,varname:node_7895,prsc:2|IN-2355-OUT;n:type:ShaderForge.SFN_Append,id:5936,x:33552,y:32814,varname:node_5936,prsc:2|A-477-OUT,B-7895-OUT;n:type:ShaderForge.SFN_ArcTan2,id:9858,x:32905,y:32818,varname:node_9858,prsc:2,attp:0|A-4011-G,B-4011-R;n:type:ShaderForge.SFN_Ceil,id:5176,x:33721,y:32814,varname:node_5176,prsc:2|IN-5936-OUT;n:type:ShaderForge.SFN_Multiply,id:2355,x:33117,y:32775,varname:node_2355,prsc:2|A-7444-OUT,B-9858-OUT;n:type:ShaderForge.SFN_Vector1,id:7444,x:32906,y:32753,varname:node_7444,prsc:2,v1:10;pass:END;sub:END;*/

Shader "Unlit/SimpleTwist" {
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
                float2 node_4011 = (i.uv0*2.0+-1.0).rg;
                float node_2355 = (10.0*atan2(node_4011.g,node_4011.r));
                float3 emissive = float3(ceil(float2(cos(node_2355),sin(node_2355))),0.0);
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
