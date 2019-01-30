// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3676,x:33460,y:32850,varname:node_3676,prsc:2|emission-1772-RGB;n:type:ShaderForge.SFN_ArcTan2,id:39,x:32424,y:32772,varname:node_39,prsc:2,attp:0|A-1552-G,B-1552-R;n:type:ShaderForge.SFN_TexCoord,id:2449,x:31881,y:32754,varname:node_2449,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:7762,x:32069,y:32754,varname:node_7762,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-2449-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:1552,x:32238,y:32754,varname:node_1552,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7762-OUT;n:type:ShaderForge.SFN_Divide,id:9178,x:32539,y:33075,varname:node_9178,prsc:2|A-79-OUT,B-5093-OUT;n:type:ShaderForge.SFN_Tex2d,id:1772,x:33253,y:32950,ptovrint:False,ptlb:node_1772,ptin:_node_1772,varname:node_1772,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:b66bceaf0cc0ace4e9bdc92f14bba709,ntxv:0,isnm:False|UVIN-3407-OUT;n:type:ShaderForge.SFN_Append,id:3407,x:33071,y:32950,varname:node_3407,prsc:2|A-8167-OUT,B-7843-OUT;n:type:ShaderForge.SFN_RemapRange,id:8231,x:32055,y:33116,varname:node_8231,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-573-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:573,x:31886,y:33116,varname:node_573,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Length,id:5093,x:32295,y:33116,varname:node_5093,prsc:2|IN-8231-OUT;n:type:ShaderForge.SFN_Time,id:4979,x:32539,y:33225,varname:node_4979,prsc:2;n:type:ShaderForge.SFN_Add,id:8167,x:32806,y:33122,cmnt:Panner,varname:node_8167,prsc:2|A-9178-OUT,B-4979-TDB;n:type:ShaderForge.SFN_Vector1,id:79,x:32295,y:33027,varname:node_79,prsc:2,v1:1;n:type:ShaderForge.SFN_Abs,id:7843,x:32613,y:32772,cmnt:Fix Line,varname:node_7843,prsc:2|IN-39-OUT;proporder:1772;pass:END;sub:END;*/

Shader "Unlit/Tunnel" {
    Properties {
        _node_1772 ("node_1772", 2D) = "white" {}
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
            uniform sampler2D _node_1772; uniform float4 _node_1772_ST;
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
                float4 node_4979 = _Time;
                float2 node_1552 = (i.uv0*2.0+-1.0).rg;
                float2 node_3407 = float2(((1.0/length((i.uv0*2.0+-1.0)))+node_4979.b),abs(atan2(node_1552.g,node_1552.r)));
                float4 _node_1772_var = tex2D(_node_1772,TRANSFORM_TEX(node_3407, _node_1772));
                float3 emissive = _node_1772_var.rgb;
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