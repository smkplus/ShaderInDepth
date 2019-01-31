// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:6468,x:32719,y:32712,varname:node_6468,prsc:2|emission-5887-RGB;n:type:ShaderForge.SFN_Tex2d,id:5887,x:32451,y:32830,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_5887,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-9131-OUT;n:type:ShaderForge.SFN_TexCoord,id:6191,x:31335,y:32838,varname:node_6191,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:8461,x:31502,y:32838,varname:node_8461,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6191-UVOUT;n:type:ShaderForge.SFN_ArcTan2,id:2129,x:32164,y:32749,varname:node_2129,prsc:2,attp:2|A-8754-G,B-8754-R;n:type:ShaderForge.SFN_ComponentMask,id:8754,x:31979,y:32724,varname:node_8754,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8461-OUT;n:type:ShaderForge.SFN_Length,id:9815,x:31979,y:32977,varname:node_9815,prsc:2|IN-8461-OUT;n:type:ShaderForge.SFN_Append,id:9131,x:32291,y:32954,varname:node_9131,prsc:2|A-2129-OUT,B-9815-OUT;proporder:5887;pass:END;sub:END;*/

Shader "Custom/Tunnel 3" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
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
                float2 node_8461 = (i.uv0*2.0+-1.0);
                float2 node_8754 = node_8461.rg;
                float2 node_9131 = float2(((atan2(node_8754.g,node_8754.r)/6.28318530718)+0.5),length(node_8461));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_9131, _MainTex));
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
