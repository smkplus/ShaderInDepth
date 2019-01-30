// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:8012,x:33713,y:32721,varname:node_8012,prsc:2|emission-5116-OUT;n:type:ShaderForge.SFN_Code,id:5116,x:33144,y:32821,varname:node_5116,prsc:2,code:ZgBsAG8AYQB0ACAAYwBvAGwAIAA9ACAAMAAuADAAOwAKAGkAZgAgACgAQQApACAAYwBvAGwAIAA9ACAAMQAuADAAOwAgAA0ACgBpAGYAIAAoAEIAKQAgAGMAbwBsACAAPQAgADEALgAwADsADQAKAGkAZgAgACgAKABBACkAIAAmACYAIAAoAEIAKQApACAAYwBvAGwAIAA9ACAAMAAuADAAOwAKAHIAZQB0AHUAcgBuACAAYwBvAGwAOwA=,output:2,fname:XORNode,width:473,height:131,input:0,input:0,input_1_label:A,input_2_label:B|A-1199-OUT,B-4217-OUT;n:type:ShaderForge.SFN_Tex2d,id:8869,x:32744,y:32644,ptovrint:False,ptlb:node_8869,ptin:_node_8869,varname:node_8869,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:8615,x:32751,y:32970,ptovrint:False,ptlb:node_8615,ptin:_node_8615,varname:node_8615,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8ddb8d35c72763049b0e895da4c8098c,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Step,id:1199,x:32975,y:32785,varname:node_1199,prsc:2|A-8869-R,B-5249-OUT;n:type:ShaderForge.SFN_Vector1,id:9694,x:32751,y:33133,varname:node_9694,prsc:2,v1:0.1;n:type:ShaderForge.SFN_Step,id:4217,x:32975,y:32970,varname:node_4217,prsc:2|A-8615-R,B-9694-OUT;n:type:ShaderForge.SFN_Slider,id:5249,x:32594,y:32855,ptovrint:False,ptlb:Value,ptin:_Value,varname:node_5249,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4599349,max:1.1;proporder:8869-8615-5249;pass:END;sub:END;*/

Shader "Custom/XORDemoEffect" {
    Properties {
        _node_8869 ("node_8869", 2D) = "white" {}
        _node_8615 ("node_8615", 2D) = "white" {}
        _Value ("Value", Range(0, 1.1)) = 0.4599349
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
            float3 XORNode( float A , float B ){
            float col = 0.0;
            if (A) col = 1.0; 
            if (B) col = 1.0;
            if ((A) && (B)) col = 0.0;
            return col;
            }
            
            uniform sampler2D _node_8869; uniform float4 _node_8869_ST;
            uniform sampler2D _node_8615; uniform float4 _node_8615_ST;
            uniform float _Value;
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
                float4 _node_8869_var = tex2D(_node_8869,TRANSFORM_TEX(i.uv0, _node_8869));
                float4 _node_8615_var = tex2D(_node_8615,TRANSFORM_TEX(i.uv0, _node_8615));
                float3 emissive = XORNode( step(_node_8869_var.r,_Value) , step(_node_8615_var.r,0.1) );
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
