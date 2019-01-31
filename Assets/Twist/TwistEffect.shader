// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7022,x:34857,y:32804,varname:node_7022,prsc:2|emission-8911-RGB;n:type:ShaderForge.SFN_TexCoord,id:7110,x:32439,y:32870,varname:node_7110,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:8911,x:34657,y:32905,ptovrint:False,ptlb:node_8911,ptin:_node_8911,varname:node_8911,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8ddb8d35c72763049b0e895da4c8098c,ntxv:0,isnm:False|UVIN-7242-OUT;n:type:ShaderForge.SFN_Length,id:396,x:33061,y:32865,varname:node_396,prsc:2|IN-4096-OUT;n:type:ShaderForge.SFN_RemapRange,id:4096,x:32662,y:32874,varname:node_4096,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7110-UVOUT;n:type:ShaderForge.SFN_ArcTan2,id:1138,x:33081,y:33036,varname:node_1138,prsc:2,attp:0|A-1379-G,B-1379-R;n:type:ShaderForge.SFN_ComponentMask,id:1379,x:32825,y:32874,varname:node_1379,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-4096-OUT;n:type:ShaderForge.SFN_Smoothstep,id:6345,x:33262,y:32661,varname:node_6345,prsc:2|A-4317-OUT,B-3571-OUT,V-396-OUT;n:type:ShaderForge.SFN_Vector1,id:3571,x:32958,y:32686,varname:node_3571,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9831,x:33456,y:32706,varname:node_9831,prsc:2|A-6345-OUT,B-5931-OUT;n:type:ShaderForge.SFN_Cos,id:4221,x:33878,y:32880,varname:node_4221,prsc:2|IN-2897-OUT;n:type:ShaderForge.SFN_Sin,id:566,x:33878,y:33012,varname:node_566,prsc:2|IN-2897-OUT;n:type:ShaderForge.SFN_Multiply,id:4306,x:34085,y:32917,varname:node_4306,prsc:2|A-4221-OUT,B-396-OUT;n:type:ShaderForge.SFN_Multiply,id:2932,x:34085,y:33051,varname:node_2932,prsc:2|A-566-OUT,B-396-OUT;n:type:ShaderForge.SFN_Append,id:1731,x:34262,y:32991,varname:node_1731,prsc:2|A-4306-OUT,B-2932-OUT;n:type:ShaderForge.SFN_Add,id:2897,x:33724,y:32979,varname:node_2897,prsc:2|A-9831-OUT,B-1138-OUT;n:type:ShaderForge.SFN_Slider,id:5931,x:32747,y:32783,ptovrint:False,ptlb:Angle,ptin:_Angle,varname:node_5931,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-10,cur:0,max:10;n:type:ShaderForge.SFN_Slider,id:4317,x:32824,y:32591,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:node_4317,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_RemapRange,id:7242,x:34446,y:33011,varname:node_7242,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-1731-OUT;proporder:8911-5931-4317;pass:END;sub:END;*/

Shader "Unlit/SimpleTwist" {
    Properties {
        _node_8911 ("node_8911", 2D) = "white" {}
        _Angle ("Angle", Range(-10, 10)) = 0
        _Radius ("Radius", Range(0, 1)) = 0
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
            uniform sampler2D _node_8911; uniform float4 _node_8911_ST;
            uniform float _Angle;
            uniform float _Radius;
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
                float2 node_4096 = (i.uv0*2.0+-1.0);
                float node_396 = length(node_4096);
                float2 node_1379 = node_4096.rg;
                float node_2897 = ((smoothstep( _Radius, 0.0, node_396 )*_Angle)+atan2(node_1379.g,node_1379.r));
                float2 node_7242 = (float2((cos(node_2897)*node_396),(sin(node_2897)*node_396))*0.5+0.5);
                float4 _node_8911_var = tex2D(_node_8911,TRANSFORM_TEX(node_7242, _node_8911));
                float3 emissive = _node_8911_var.rgb;
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
