// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1393,x:33269,y:32744,varname:node_1393,prsc:2|emission-9304-RGB;n:type:ShaderForge.SFN_TexCoord,id:7064,x:31081,y:33051,varname:node_7064,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:8865,x:31301,y:33148,varname:node_8865,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7064-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4989,x:31479,y:33148,varname:node_4989,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8865-OUT;n:type:ShaderForge.SFN_Length,id:2390,x:31693,y:33148,varname:node_2390,prsc:2|IN-4989-OUT;n:type:ShaderForge.SFN_Rotator,id:9933,x:32468,y:33041,varname:node_9933,prsc:2|UVIN-7064-UVOUT,ANG-7905-OUT;n:type:ShaderForge.SFN_Tex2d,id:9304,x:32709,y:33080,ptovrint:False,ptlb:node_9304,ptin:_node_9304,varname:node_9304,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:15640960fadc9ca41bfdb6c3491d3875,ntxv:0,isnm:False|UVIN-9933-UVOUT;n:type:ShaderForge.SFN_Clamp01,id:7278,x:31901,y:33148,varname:node_7278,prsc:2|IN-2390-OUT;n:type:ShaderForge.SFN_Multiply,id:7905,x:32188,y:33146,varname:node_7905,prsc:2|A-7278-OUT,B-5906-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5906,x:31942,y:33335,ptovrint:False,ptlb:Twist,ptin:_Twist,varname:node_5906,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;proporder:9304-5906;pass:END;sub:END;*/

Shader "Unlit/Twist" {
    Properties {
        _node_9304 ("node_9304", 2D) = "white" {}
        _Twist ("Twist", Float ) = 3
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
            uniform sampler2D _node_9304; uniform float4 _node_9304_ST;
            uniform float _Twist;
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
                float node_9933_ang = (saturate(length((i.uv0*2.0+-1.0).rg))*_Twist);
                float node_9933_spd = 1.0;
                float node_9933_cos = cos(node_9933_spd*node_9933_ang);
                float node_9933_sin = sin(node_9933_spd*node_9933_ang);
                float2 node_9933_piv = float2(0.5,0.5);
                float2 node_9933 = (mul(i.uv0-node_9933_piv,float2x2( node_9933_cos, -node_9933_sin, node_9933_sin, node_9933_cos))+node_9933_piv);
                float4 _node_9304_var = tex2D(_node_9304,TRANSFORM_TEX(node_9933, _node_9304));
                float3 emissive = _node_9304_var.rgb;
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
