// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3676,x:33874,y:32915,varname:node_3676,prsc:2|emission-1772-RGB;n:type:ShaderForge.SFN_ArcTan2,id:39,x:32853,y:33191,cmnt:Angular Component,varname:node_39,prsc:2,attp:0|A-1552-G,B-1552-R;n:type:ShaderForge.SFN_ComponentMask,id:1552,x:32643,y:33181,varname:node_1552,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8231-OUT;n:type:ShaderForge.SFN_Tex2d,id:1772,x:33611,y:33016,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_1772,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|UVIN-3407-OUT;n:type:ShaderForge.SFN_Append,id:3407,x:33430,y:33016,varname:node_3407,prsc:2|A-6756-OUT,B-3988-OUT;n:type:ShaderForge.SFN_RemapRange,id:8231,x:32418,y:32995,varname:node_8231,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-573-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:573,x:32249,y:32995,varname:node_573,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Length,id:5093,x:32657,y:32802,cmnt:Radial Component,varname:node_5093,prsc:2|IN-8231-OUT;n:type:ShaderForge.SFN_Time,id:4979,x:32801,y:32944,varname:node_4979,prsc:2;n:type:ShaderForge.SFN_Vector1,id:79,x:32657,y:32713,varname:node_79,prsc:2,v1:1;n:type:ShaderForge.SFN_Divide,id:4589,x:32936,y:32754,varname:node_4589,prsc:2|A-79-OUT,B-5093-OUT;n:type:ShaderForge.SFN_Add,id:6756,x:33234,y:32866,varname:node_6756,prsc:2|A-4589-OUT,B-4949-OUT;n:type:ShaderForge.SFN_Multiply,id:4949,x:32986,y:32975,varname:node_4949,prsc:2|A-4979-TSL,B-9047-OUT;n:type:ShaderForge.SFN_Vector1,id:9047,x:32774,y:33094,varname:node_9047,prsc:2,v1:5;n:type:ShaderForge.SFN_Divide,id:3988,x:33056,y:33246,varname:node_3988,prsc:2|A-39-OUT,B-9644-OUT;n:type:ShaderForge.SFN_Vector1,id:9644,x:32853,y:33342,varname:node_9644,prsc:2,v1:3.14;proporder:1772;pass:END;sub:END;*/

Shader "Unlit/Tunnel" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
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
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
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
                float2 node_8231 = (i.uv0*2.0+-1.0);
                float4 node_4979 = _Time;
                float2 node_1552 = node_8231.rg;
                float2 node_3407 = float2(((1.0/length(node_8231))+(node_4979.r*5.0)),(atan2(node_1552.g,node_1552.r)/3.14));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_3407, _MainTex));
                float3 emissive = _MainTex_var.rgb;
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
