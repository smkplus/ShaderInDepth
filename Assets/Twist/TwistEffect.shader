// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7022,x:35025,y:33177,varname:node_7022,prsc:2|emission-8911-RGB;n:type:ShaderForge.SFN_TexCoord,id:7110,x:31820,y:33111,varname:node_7110,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:8911,x:34842,y:33278,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_8911,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:15640960fadc9ca41bfdb6c3491d3875,ntxv:2,isnm:False|UVIN-7242-OUT;n:type:ShaderForge.SFN_Length,id:396,x:32417,y:33043,varname:node_396,prsc:2|IN-1379-OUT;n:type:ShaderForge.SFN_RemapRange,id:4096,x:32004,y:33111,varname:node_4096,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7110-UVOUT;n:type:ShaderForge.SFN_ArcTan2,id:1138,x:32417,y:33241,varname:node_1138,prsc:2,attp:0|A-1379-G,B-1379-R;n:type:ShaderForge.SFN_ComponentMask,id:1379,x:32195,y:33111,varname:node_1379,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4096-OUT;n:type:ShaderForge.SFN_Smoothstep,id:6345,x:32896,y:33417,varname:node_6345,prsc:2|A-4317-OUT,B-3571-OUT,V-5100-OUT;n:type:ShaderForge.SFN_Vector1,id:3571,x:32574,y:33487,varname:node_3571,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9831,x:33114,y:33434,varname:node_9831,prsc:2|A-6345-OUT,B-8545-OUT;n:type:ShaderForge.SFN_Cos,id:4221,x:33685,y:33105,varname:node_4221,prsc:2|IN-2897-OUT;n:type:ShaderForge.SFN_Sin,id:566,x:33677,y:33520,varname:node_566,prsc:2|IN-2897-OUT;n:type:ShaderForge.SFN_Multiply,id:4306,x:34214,y:33125,varname:node_4306,prsc:2|A-4221-OUT,B-8969-OUT;n:type:ShaderForge.SFN_Multiply,id:2932,x:34212,y:33499,varname:node_2932,prsc:2|A-8969-OUT,B-566-OUT;n:type:ShaderForge.SFN_Append,id:1731,x:34445,y:33278,varname:node_1731,prsc:2|A-4306-OUT,B-2932-OUT;n:type:ShaderForge.SFN_Add,id:2897,x:33419,y:33296,varname:node_2897,prsc:2|A-1138-OUT,B-9831-OUT;n:type:ShaderForge.SFN_Slider,id:4317,x:32417,y:33415,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:node_4317,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_RemapRange,id:7242,x:34637,y:33278,cmnt:UndoRemap,varname:node_7242,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1731-OUT;n:type:ShaderForge.SFN_ValueProperty,id:8545,x:32896,y:33562,ptovrint:False,ptlb:Angle,ptin:_Angle,varname:node_8545,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:3;n:type:ShaderForge.SFN_Relay,id:2205,x:33890,y:33287,varname:node_2205,prsc:2|IN-396-OUT;n:type:ShaderForge.SFN_Set,id:2572,x:32673,y:33011,varname:Length,prsc:2|IN-396-OUT;n:type:ShaderForge.SFN_Get,id:5100,x:32574,y:33551,varname:node_5100,prsc:2|IN-2572-OUT;n:type:ShaderForge.SFN_Get,id:8969,x:34006,y:33307,varname:node_8969,prsc:2|IN-2572-OUT;n:type:ShaderForge.SFN_Cos,id:7709,x:33111,y:33066,varname:node_7709,prsc:2|IN-2640-OUT;n:type:ShaderForge.SFN_Multiply,id:2640,x:32915,y:33144,varname:node_2640,prsc:2|A-1138-OUT,B-6417-OUT;n:type:ShaderForge.SFN_Vector1,id:6417,x:32718,y:33229,varname:node_6417,prsc:2,v1:10;n:type:ShaderForge.SFN_Ceil,id:8617,x:33926,y:32993,varname:node_8617,prsc:2|IN-2897-OUT;n:type:ShaderForge.SFN_Sin,id:5106,x:33111,y:33203,varname:node_5106,prsc:2|IN-2640-OUT;n:type:ShaderForge.SFN_Append,id:4822,x:33296,y:33094,varname:node_4822,prsc:2|A-7709-OUT,B-5106-OUT;proporder:8911-4317-8545;pass:END;sub:END;*/

Shader "Unlit/SimpleTwist" {
    Properties {
        _MainTex ("MainTex", 2D) = "black" {}
        _Radius ("Radius", Range(0, 1)) = 1
        _Angle ("Angle", Float ) = 3
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
            uniform float _Radius;
            uniform float _Angle;
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
                float2 node_1379 = (i.uv0*2.0+-1.0).rg;
                float node_1138 = atan2(node_1379.g,node_1379.r);
                float node_396 = length(node_1379);
                float Length = node_396;
                float node_2897 = (node_1138+(smoothstep( _Radius, 0.0, Length )*_Angle));
                float node_8969 = Length;
                float2 node_7242 = (float2((cos(node_2897)*node_8969),(node_8969*sin(node_2897)))*0.5+0.5); // UndoRemap
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_7242, _MainTex));
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
