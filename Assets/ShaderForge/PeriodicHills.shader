// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:33633,y:33306,varname:node_3138,prsc:2|emission-3555-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6738,x:31059,y:32893,ptovrint:False,ptlb:Period,ptin:_Period,varname:node_6738,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:12;n:type:ShaderForge.SFN_Subtract,id:6461,x:31506,y:32735,varname:node_6461,prsc:2|A-977-OUT,B-6449-OUT;n:type:ShaderForge.SFN_Vector1,id:6449,x:31330,y:32798,varname:node_6449,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:3549,x:31709,y:32825,varname:node_3549,prsc:2|A-6461-OUT,B-1665-OUT;n:type:ShaderForge.SFN_Vector1,id:1665,x:31519,y:32906,varname:node_1665,prsc:2,v1:3.14;n:type:ShaderForge.SFN_Add,id:3646,x:31916,y:32901,varname:node_3646,prsc:2|A-3549-OUT,B-3764-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3764,x:31709,y:33043,ptovrint:False,ptlb:Delay,ptin:_Delay,varname:node_3764,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Frac,id:6024,x:31674,y:33175,varname:node_6024,prsc:2|IN-3565-OUT;n:type:ShaderForge.SFN_Vector1,id:1982,x:31066,y:33432,varname:node_1982,prsc:2,v1:3.14;n:type:ShaderForge.SFN_Add,id:2004,x:31236,y:33432,varname:node_2004,prsc:2|A-1982-OUT,B-1533-OUT;n:type:ShaderForge.SFN_Get,id:1533,x:31045,y:33509,varname:node_1533,prsc:2|IN-1148-OUT;n:type:ShaderForge.SFN_Set,id:1148,x:32069,y:32901,varname:Shift,prsc:2|IN-3646-OUT;n:type:ShaderForge.SFN_Divide,id:3565,x:31435,y:33263,varname:node_3565,prsc:2|A-3343-OUT,B-2004-OUT;n:type:ShaderForge.SFN_Multiply,id:2501,x:31882,y:33326,varname:node_2501,prsc:2|A-6024-OUT,B-2004-OUT;n:type:ShaderForge.SFN_Set,id:3680,x:32054,y:33339,varname:PeriodicDelay,prsc:2|IN-2501-OUT;n:type:ShaderForge.SFN_Get,id:3278,x:31123,y:33698,varname:node_3278,prsc:2|IN-3680-OUT;n:type:ShaderForge.SFN_Clamp,id:1976,x:31393,y:33718,varname:node_1976,prsc:2|IN-3278-OUT,MIN-9337-OUT,MAX-8213-OUT;n:type:ShaderForge.SFN_Vector1,id:9337,x:31167,y:33784,varname:node_9337,prsc:2,v1:0;n:type:ShaderForge.SFN_Set,id:2724,x:31229,y:32893,varname:Period,prsc:2|IN-6738-OUT;n:type:ShaderForge.SFN_Get,id:977,x:31309,y:32719,varname:node_977,prsc:2|IN-2724-OUT;n:type:ShaderForge.SFN_Get,id:8899,x:30947,y:33888,varname:node_8899,prsc:2|IN-2724-OUT;n:type:ShaderForge.SFN_Multiply,id:8213,x:31167,y:33902,varname:node_8213,prsc:2|A-8899-OUT,B-7833-OUT;n:type:ShaderForge.SFN_Vector1,id:7833,x:30990,y:33988,varname:node_7833,prsc:2,v1:3.14;n:type:ShaderForge.SFN_Sin,id:2041,x:32450,y:33337,varname:node_2041,prsc:2|IN-5076-OUT;n:type:ShaderForge.SFN_TexCoord,id:81,x:30713,y:33026,varname:node_81,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:9969,x:30713,y:33236,varname:node_9969,prsc:2;n:type:ShaderForge.SFN_Add,id:3738,x:30910,y:33121,varname:node_3738,prsc:2|A-81-U,B-9969-T;n:type:ShaderForge.SFN_Multiply,id:3343,x:31143,y:33167,varname:node_3343,prsc:2|A-3738-OUT,B-3464-OUT;n:type:ShaderForge.SFN_Vector1,id:3464,x:30926,y:33281,varname:node_3464,prsc:2,v1:6.28;n:type:ShaderForge.SFN_Set,id:8312,x:31594,y:33718,varname:ClampedPeriodicDelay,prsc:2|IN-1976-OUT;n:type:ShaderForge.SFN_Get,id:5076,x:32257,y:33337,varname:node_5076,prsc:2|IN-8312-OUT;n:type:ShaderForge.SFN_TexCoord,id:4445,x:32278,y:33163,varname:node_4445,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Subtract,id:7918,x:32958,y:33248,varname:node_7918,prsc:2|A-9587-OUT,B-5633-OUT;n:type:ShaderForge.SFN_Multiply,id:2451,x:32677,y:33373,varname:node_2451,prsc:2|A-2041-OUT,B-6460-OUT;n:type:ShaderForge.SFN_Vector1,id:6460,x:32450,y:33493,varname:node_6460,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Add,id:9587,x:32858,y:33431,varname:node_9587,prsc:2|A-2451-OUT,B-476-OUT;n:type:ShaderForge.SFN_Vector1,id:476,x:32628,y:33546,varname:node_476,prsc:2,v1:0.6;n:type:ShaderForge.SFN_Step,id:3555,x:33292,y:33535,varname:node_3555,prsc:2|A-4135-OUT,B-7918-OUT;n:type:ShaderForge.SFN_Vector1,id:4135,x:33027,y:33605,varname:node_4135,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Vector1,id:4580,x:32550,y:33197,varname:node_4580,prsc:2,v1:0.2;n:type:ShaderForge.SFN_Subtract,id:5633,x:32659,y:32987,varname:node_5633,prsc:2|A-4445-V,B-4580-OUT;proporder:6738-3764;pass:END;sub:END;*/

Shader "Shader Forge/Kamali" {
    Properties {
        _Period ("Period", Float ) = 12
        _Delay ("Delay", Float ) = 1
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
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
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float _Period;
            uniform float _Delay;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_9969 = _Time;
                float Period = _Period;
                float Shift = (((Period-1.0)*3.14)+_Delay);
                float node_2004 = (3.14+Shift);
                float PeriodicDelay = (frac((((i.uv0.r+node_9969.g)*6.28)/node_2004))*node_2004);
                float ClampedPeriodicDelay = clamp(PeriodicDelay,0.0,(Period*3.14));
                float node_3555 = step(0.5,(((sin(ClampedPeriodicDelay)*0.2)+0.6)-(i.uv0.g-0.2)));
                float3 emissive = float3(node_3555,node_3555,node_3555);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
