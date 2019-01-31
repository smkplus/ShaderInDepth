// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:7022,x:33764,y:32738,varname:node_7022,prsc:2|emission-8911-RGB;n:type:ShaderForge.SFN_TexCoord,id:7110,x:30950,y:32679,varname:node_7110,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:5453,x:31131,y:32679,varname:node_5453,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7110-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:4011,x:31296,y:32679,varname:node_4011,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-5453-OUT;n:type:ShaderForge.SFN_Length,id:8907,x:31826,y:32975,varname:node_8907,prsc:2|IN-4011-OUT;n:type:ShaderForge.SFN_Subtract,id:4101,x:32041,y:33017,varname:node_4101,prsc:2|A-8907-OUT,B-3607-OUT;n:type:ShaderForge.SFN_Multiply,id:7328,x:32222,y:33058,varname:node_7328,prsc:2|A-4101-OUT,B-7273-OUT;n:type:ShaderForge.SFN_Add,id:3878,x:32245,y:32803,varname:node_3878,prsc:2|A-9858-OUT,B-7328-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7273,x:31951,y:33322,ptovrint:False,ptlb:scale,ptin:_scale,varname:node_7273,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:10;n:type:ShaderForge.SFN_ValueProperty,id:3607,x:31700,y:33302,ptovrint:False,ptlb:radius,ptin:_radius,varname:node_3607,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Tex2d,id:8911,x:33558,y:33055,ptovrint:False,ptlb:node_8911,ptin:_node_8911,varname:node_8911,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8ddb8d35c72763049b0e895da4c8098c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Cos,id:477,x:32619,y:32818,varname:node_477,prsc:2|IN-3878-OUT;n:type:ShaderForge.SFN_Sin,id:7895,x:32619,y:32955,varname:node_7895,prsc:2|IN-3878-OUT;n:type:ShaderForge.SFN_TexCoord,id:8240,x:32125,y:32487,varname:node_8240,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Divide,id:4433,x:32362,y:32515,varname:node_4433,prsc:2|A-8240-UVOUT;n:type:ShaderForge.SFN_Vector1,id:8684,x:32141,y:32605,varname:node_8684,prsc:2,v1:2;n:type:ShaderForge.SFN_Append,id:5936,x:32796,y:32896,varname:node_5936,prsc:2|A-477-OUT,B-7895-OUT;n:type:ShaderForge.SFN_Append,id:1895,x:33014,y:32717,varname:node_1895,prsc:2;n:type:ShaderForge.SFN_ArcTan2,id:9858,x:31748,y:32752,varname:node_9858,prsc:2,attp:0|A-4011-G,B-4011-R;n:type:ShaderForge.SFN_TexCoord,id:8930,x:30866,y:33078,varname:node_8930,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:6427,x:33108,y:33020,varname:node_6427,prsc:2|A-5936-OUT;n:type:ShaderForge.SFN_Slider,id:2455,x:30959,y:33294,ptovrint:False,ptlb:node_2455,ptin:_node_2455,varname:node_2455,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2185393,max:50;n:type:ShaderForge.SFN_Length,id:2294,x:31297,y:33099,varname:node_2294,prsc:2|IN-7076-OUT;n:type:ShaderForge.SFN_RemapRange,id:7076,x:31134,y:33135,varname:node_7076,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8930-UVOUT;n:type:ShaderForge.SFN_Multiply,id:9124,x:31479,y:33165,varname:node_9124,prsc:2|A-2294-OUT,B-2455-OUT;n:type:ShaderForge.SFN_TexCoord,id:2164,x:33109,y:33399,varname:node_2164,prsc:2,uv:0,uaff:False;proporder:7273-3607-8911-2455;pass:END;sub:END;*/

Shader "Unlit/SimpleTwist" {
    Properties {
        _scale ("scale", Float ) = 10
        _radius ("radius", Float ) = 0
        _node_8911 ("node_8911", 2D) = "white" {}
        _node_2455 ("node_2455", Range(0, 50)) = 0.2185393
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
                float4 _node_8911_var = tex2D(_node_8911,TRANSFORM_TEX(i.uv0, _node_8911));
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
