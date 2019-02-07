// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1387,x:34124,y:37408,varname:node_1387,prsc:2|emission-4256-OUT;n:type:ShaderForge.SFN_TexCoord,id:9761,x:30653,y:33874,varname:node_9761,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:7846,x:31404,y:33746,varname:node_7846,prsc:2|A-7075-G,B-7075-G;n:type:ShaderForge.SFN_Subtract,id:5308,x:31588,y:33667,varname:node_5308,prsc:2|A-512-OUT,B-7846-OUT;n:type:ShaderForge.SFN_Multiply,id:512,x:31404,y:33595,varname:node_512,prsc:2|A-7075-R,B-7075-R;n:type:ShaderForge.SFN_Add,id:6951,x:31901,y:33666,varname:node_6951,prsc:2|A-5308-OUT,B-9540-U;n:type:ShaderForge.SFN_Multiply,id:9266,x:31253,y:34027,varname:node_9266,prsc:2|A-3865-R,B-3865-G,C-8632-OUT;n:type:ShaderForge.SFN_Add,id:7177,x:31902,y:34004,varname:node_7177,prsc:2|A-9540-V,B-9266-OUT;n:type:ShaderForge.SFN_RemapRange,id:1579,x:30846,y:33874,varname:node_1579,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-9761-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:3865,x:31041,y:33874,varname:node_3865,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1579-OUT;n:type:ShaderForge.SFN_Vector1,id:8632,x:31036,y:34113,varname:node_8632,prsc:2,v1:2;n:type:ShaderForge.SFN_ComponentMask,id:7075,x:31232,y:33633,varname:node_7075,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3865-OUT;n:type:ShaderForge.SFN_Append,id:9107,x:32135,y:33839,varname:node_9107,prsc:2|A-6951-OUT,B-7177-OUT;n:type:ShaderForge.SFN_Length,id:1278,x:32332,y:33929,varname:node_1278,prsc:2|IN-9107-OUT;n:type:ShaderForge.SFN_Vector1,id:2347,x:32332,y:33825,varname:node_2347,prsc:2,v1:2;n:type:ShaderForge.SFN_Get,id:3501,x:30655,y:34513,varname:node_3501,prsc:2|IN-2831-OUT;n:type:ShaderForge.SFN_RemapRange,id:699,x:30837,y:34513,varname:node_699,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-3501-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1652,x:31006,y:34513,varname:node_1652,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-699-OUT;n:type:ShaderForge.SFN_Multiply,id:1261,x:31267,y:34394,varname:node_1261,prsc:2|A-1652-R,B-1652-R;n:type:ShaderForge.SFN_Set,id:2831,x:32332,y:33725,varname:UV1,prsc:2|IN-9107-OUT;n:type:ShaderForge.SFN_Multiply,id:8282,x:31267,y:34597,varname:node_8282,prsc:2|A-1652-G,B-1652-G;n:type:ShaderForge.SFN_Subtract,id:6299,x:31490,y:34508,varname:node_6299,prsc:2|A-1261-OUT,B-8282-OUT;n:type:ShaderForge.SFN_Add,id:8796,x:31846,y:34549,varname:node_8796,prsc:2|A-6299-OUT,B-1110-U;n:type:ShaderForge.SFN_TexCoord,id:1110,x:31490,y:34660,varname:node_1110,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:3355,x:31268,y:34856,varname:node_3355,prsc:2|A-1652-R,B-1652-G,C-5542-OUT;n:type:ShaderForge.SFN_Add,id:7088,x:31716,y:34875,varname:node_7088,prsc:2|A-1110-V,B-3355-OUT;n:type:ShaderForge.SFN_Vector1,id:5542,x:31065,y:34931,varname:node_5542,prsc:2,v1:2;n:type:ShaderForge.SFN_Append,id:3802,x:32042,y:34768,varname:node_3802,prsc:2|A-8796-OUT,B-7088-OUT;n:type:ShaderForge.SFN_Step,id:8776,x:32402,y:34726,varname:node_8776,prsc:2|A-3497-OUT,B-9347-OUT;n:type:ShaderForge.SFN_Vector1,id:3497,x:32227,y:34700,varname:node_3497,prsc:2,v1:2;n:type:ShaderForge.SFN_Length,id:9347,x:32227,y:34768,varname:node_9347,prsc:2|IN-3802-OUT;n:type:ShaderForge.SFN_Set,id:3286,x:32227,y:34594,varname:UV2,prsc:2|IN-3802-OUT;n:type:ShaderForge.SFN_Step,id:9884,x:32529,y:33857,cmnt:Step1,varname:node_9884,prsc:2|A-2347-OUT,B-1278-OUT;n:type:ShaderForge.SFN_Get,id:968,x:30605,y:35144,varname:node_968,prsc:2|IN-3286-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9374,x:30964,y:35144,varname:node_9374,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-6310-OUT;n:type:ShaderForge.SFN_Multiply,id:9467,x:31182,y:35083,varname:node_9467,prsc:2|A-9374-R,B-9374-R;n:type:ShaderForge.SFN_Multiply,id:3503,x:31182,y:35247,varname:node_3503,prsc:2|A-9374-G,B-9374-G;n:type:ShaderForge.SFN_Add,id:7175,x:31698,y:35153,varname:node_7175,prsc:2|A-5509-OUT,B-3561-U;n:type:ShaderForge.SFN_TexCoord,id:3561,x:31543,y:35199,varname:node_3561,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:6508,x:31226,y:35418,varname:node_6508,prsc:2|A-9374-R,B-9374-G,C-8740-OUT;n:type:ShaderForge.SFN_Vector1,id:8740,x:30975,y:35474,varname:node_8740,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:8992,x:31708,y:35411,varname:node_8992,prsc:2|A-3561-V,B-6508-OUT;n:type:ShaderForge.SFN_Append,id:4687,x:31917,y:35316,varname:node_4687,prsc:2|A-7175-OUT,B-8992-OUT;n:type:ShaderForge.SFN_Length,id:2378,x:32110,y:35316,varname:node_2378,prsc:2|IN-4687-OUT;n:type:ShaderForge.SFN_Step,id:3134,x:32387,y:35291,varname:node_3134,prsc:2|A-1989-OUT,B-2378-OUT;n:type:ShaderForge.SFN_Vector1,id:1989,x:32209,y:35262,varname:node_1989,prsc:2,v1:2;n:type:ShaderForge.SFN_Subtract,id:5509,x:31377,y:35136,varname:node_5509,prsc:2|A-9467-OUT,B-3503-OUT;n:type:ShaderForge.SFN_Set,id:5762,x:32089,y:35192,varname:UV3,prsc:2|IN-4687-OUT;n:type:ShaderForge.SFN_Get,id:6736,x:30567,y:35743,varname:node_6736,prsc:2|IN-5762-OUT;n:type:ShaderForge.SFN_ComponentMask,id:8830,x:30923,y:35743,varname:node_8830,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-2370-OUT;n:type:ShaderForge.SFN_Multiply,id:3022,x:31150,y:35699,varname:node_3022,prsc:2|A-8830-R,B-8830-R;n:type:ShaderForge.SFN_Multiply,id:4439,x:31150,y:35857,varname:node_4439,prsc:2|A-8830-G,B-8830-G;n:type:ShaderForge.SFN_Subtract,id:948,x:31360,y:35767,varname:node_948,prsc:2|A-3022-OUT,B-4439-OUT;n:type:ShaderForge.SFN_Multiply,id:6804,x:31150,y:36029,varname:node_6804,prsc:2|A-8830-R,B-8830-G,C-9864-OUT;n:type:ShaderForge.SFN_Vector1,id:9864,x:30944,y:36088,varname:node_9864,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:7643,x:31567,y:35868,varname:node_7643,prsc:2|A-948-OUT,B-443-U;n:type:ShaderForge.SFN_TexCoord,id:443,x:31391,y:35931,varname:node_443,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:1426,x:31567,y:36071,varname:node_1426,prsc:2|A-443-V,B-6804-OUT;n:type:ShaderForge.SFN_Append,id:4886,x:31799,y:35977,varname:node_4886,prsc:2|A-7643-OUT,B-1426-OUT;n:type:ShaderForge.SFN_Length,id:9828,x:31981,y:35977,varname:node_9828,prsc:2|IN-4886-OUT;n:type:ShaderForge.SFN_Step,id:2786,x:32217,y:35977,varname:node_2786,prsc:2|A-9447-OUT,B-9828-OUT;n:type:ShaderForge.SFN_Vector1,id:9447,x:31981,y:35899,varname:node_9447,prsc:2,v1:2;n:type:ShaderForge.SFN_Get,id:73,x:30495,y:36263,varname:node_73,prsc:2|IN-8368-OUT;n:type:ShaderForge.SFN_Set,id:8368,x:31981,y:35826,varname:UV4,prsc:2|IN-4886-OUT;n:type:ShaderForge.SFN_ComponentMask,id:1459,x:30873,y:36263,varname:node_1459,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3966-OUT;n:type:ShaderForge.SFN_Multiply,id:9508,x:31111,y:36179,varname:node_9508,prsc:2|A-1459-R,B-1459-R;n:type:ShaderForge.SFN_Multiply,id:5872,x:31111,y:36337,varname:node_5872,prsc:2|A-1459-G,B-1459-G;n:type:ShaderForge.SFN_Subtract,id:7115,x:31345,y:36236,varname:node_7115,prsc:2|A-9508-OUT,B-5872-OUT;n:type:ShaderForge.SFN_Add,id:8813,x:31551,y:36289,varname:node_8813,prsc:2|A-7115-OUT,B-5477-U;n:type:ShaderForge.SFN_TexCoord,id:5477,x:31326,y:36399,varname:node_5477,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:8471,x:31539,y:36576,varname:node_8471,prsc:2|A-5477-V,B-2044-OUT;n:type:ShaderForge.SFN_Multiply,id:2044,x:31110,y:36517,varname:node_2044,prsc:2|A-1459-R,B-1459-G,C-4195-OUT;n:type:ShaderForge.SFN_Vector1,id:4195,x:30885,y:36575,varname:node_4195,prsc:2,v1:2;n:type:ShaderForge.SFN_Append,id:597,x:31750,y:36446,varname:node_597,prsc:2|A-8813-OUT,B-8471-OUT;n:type:ShaderForge.SFN_Length,id:7479,x:31952,y:36446,varname:node_7479,prsc:2|IN-597-OUT;n:type:ShaderForge.SFN_Set,id:6754,x:31931,y:36387,varname:UV5,prsc:2|IN-597-OUT;n:type:ShaderForge.SFN_Step,id:5311,x:32165,y:36446,varname:node_5311,prsc:2|A-7277-OUT,B-7479-OUT;n:type:ShaderForge.SFN_Vector1,id:7277,x:32039,y:36315,varname:node_7277,prsc:2,v1:5;n:type:ShaderForge.SFN_Get,id:4588,x:30554,y:36883,varname:node_4588,prsc:2|IN-6754-OUT;n:type:ShaderForge.SFN_Multiply,id:5073,x:31193,y:36771,varname:node_5073,prsc:2|A-4608-R,B-4608-R;n:type:ShaderForge.SFN_ComponentMask,id:4608,x:30930,y:36883,varname:node_4608,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-3644-OUT;n:type:ShaderForge.SFN_Multiply,id:9838,x:31205,y:36959,varname:node_9838,prsc:2|A-4608-G,B-4608-G;n:type:ShaderForge.SFN_Subtract,id:1643,x:31387,y:36866,varname:node_1643,prsc:2|A-5073-OUT,B-9838-OUT;n:type:ShaderForge.SFN_TexCoord,id:2649,x:31378,y:37019,varname:node_2649,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:4731,x:31590,y:36970,varname:node_4731,prsc:2|A-1643-OUT,B-2649-U;n:type:ShaderForge.SFN_Add,id:8928,x:31591,y:37152,varname:node_8928,prsc:2|A-2649-V,B-6009-OUT;n:type:ShaderForge.SFN_Multiply,id:6009,x:31187,y:37215,varname:node_6009,prsc:2|A-4608-R,B-4608-G,C-588-OUT;n:type:ShaderForge.SFN_Vector1,id:588,x:30988,y:37286,varname:node_588,prsc:2,v1:2;n:type:ShaderForge.SFN_Append,id:4137,x:31827,y:37088,varname:node_4137,prsc:2|A-4731-OUT,B-8928-OUT;n:type:ShaderForge.SFN_Length,id:7855,x:32001,y:37088,varname:node_7855,prsc:2|IN-4137-OUT;n:type:ShaderForge.SFN_Step,id:2751,x:32337,y:37070,varname:node_2751,prsc:2|A-5791-OUT,B-7855-OUT;n:type:ShaderForge.SFN_Vector1,id:5791,x:32154,y:37018,varname:node_5791,prsc:2,v1:2;n:type:ShaderForge.SFN_Add,id:7447,x:32800,y:34789,cmnt:Step2,varname:node_7447,prsc:2|A-9884-OUT,B-8776-OUT;n:type:ShaderForge.SFN_Add,id:1605,x:33085,y:34814,cmnt:Step3,varname:node_1605,prsc:2|A-7447-OUT,B-3134-OUT;n:type:ShaderForge.SFN_Add,id:7629,x:33050,y:35644,cmnt:Step4,varname:node_7629,prsc:2|A-1605-OUT,B-2786-OUT;n:type:ShaderForge.SFN_Add,id:8030,x:33320,y:36387,cmnt:Step5,varname:node_8030,prsc:2|A-7629-OUT,B-5311-OUT;n:type:ShaderForge.SFN_RemapRange,id:3966,x:30692,y:36263,varname:node_3966,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-73-OUT;n:type:ShaderForge.SFN_RemapRange,id:3644,x:30755,y:36883,varname:node_3644,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-4588-OUT;n:type:ShaderForge.SFN_RemapRange,id:2370,x:30752,y:35743,varname:node_2370,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-6736-OUT;n:type:ShaderForge.SFN_RemapRange,id:6310,x:30792,y:35144,varname:node_6310,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-968-OUT;n:type:ShaderForge.SFN_Add,id:5076,x:33518,y:37028,cmnt:Step6,varname:node_5076,prsc:2|A-8030-OUT,B-2751-OUT;n:type:ShaderForge.SFN_Set,id:9773,x:32001,y:37018,varname:UV6,prsc:2|IN-4137-OUT;n:type:ShaderForge.SFN_Get,id:8029,x:30645,y:37559,varname:node_8029,prsc:2|IN-9773-OUT;n:type:ShaderForge.SFN_RemapRange,id:8226,x:30844,y:37559,varname:node_8226,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8029-OUT;n:type:ShaderForge.SFN_ComponentMask,id:6160,x:31012,y:37559,varname:node_6160,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8226-OUT;n:type:ShaderForge.SFN_Multiply,id:2959,x:31213,y:37462,varname:node_2959,prsc:2|A-6160-R,B-6160-R;n:type:ShaderForge.SFN_Multiply,id:3049,x:31213,y:37669,varname:node_3049,prsc:2|A-6160-G,B-6160-G;n:type:ShaderForge.SFN_Subtract,id:6055,x:31421,y:37558,varname:node_6055,prsc:2|A-2959-OUT,B-3049-OUT;n:type:ShaderForge.SFN_Add,id:9849,x:31636,y:37567,varname:node_9849,prsc:2|A-6055-OUT,B-9888-U;n:type:ShaderForge.SFN_TexCoord,id:9888,x:31425,y:37708,varname:node_9888,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:2261,x:31230,y:37868,varname:node_2261,prsc:2|A-6160-R,B-6160-G,C-4595-OUT;n:type:ShaderForge.SFN_Add,id:8209,x:31614,y:37900,varname:node_8209,prsc:2|A-9888-V,B-2261-OUT;n:type:ShaderForge.SFN_Vector1,id:4595,x:31030,y:37886,varname:node_4595,prsc:2,v1:2;n:type:ShaderForge.SFN_Append,id:9437,x:31832,y:37741,varname:node_9437,prsc:2|A-9849-OUT,B-8209-OUT;n:type:ShaderForge.SFN_Step,id:7742,x:32315,y:37724,varname:node_7742,prsc:2|A-2721-OUT,B-2400-OUT;n:type:ShaderForge.SFN_Vector1,id:2721,x:32132,y:37676,varname:node_2721,prsc:2,v1:2;n:type:ShaderForge.SFN_Length,id:2400,x:32065,y:37741,varname:node_2400,prsc:2|IN-9437-OUT;n:type:ShaderForge.SFN_Add,id:4256,x:33835,y:37506,cmnt:Step7,varname:node_4256,prsc:2|A-5076-OUT,B-7742-OUT;n:type:ShaderForge.SFN_TexCoord,id:9540,x:31678,y:33831,varname:node_9540,prsc:2,uv:0,uaff:False;pass:END;sub:END;*/

Shader "Hidden/mandelbrot" {
    Properties {
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
                float node_2347 = 2.0;
                float2 node_3865 = (i.uv0*2.0+-1.0).rg;
                float2 node_7075 = node_3865.rg;
                float2 node_9107 = float2((((node_7075.r*node_7075.r)-(node_7075.g*node_7075.g))+i.uv0.r),(i.uv0.g+(node_3865.r*node_3865.g*2.0)));
                float node_1278 = length(node_9107);
                float node_9884 = step(node_2347,node_1278); // Step1
                float2 UV1 = node_9107;
                float2 node_1652 = (UV1*2.0+-1.0).rg;
                float2 node_3802 = float2((((node_1652.r*node_1652.r)-(node_1652.g*node_1652.g))+i.uv0.r),(i.uv0.g+(node_1652.r*node_1652.g*2.0)));
                float node_8776 = step(2.0,length(node_3802));
                float2 UV2 = node_3802;
                float2 node_9374 = (UV2*2.0+-1.0).rg;
                float2 node_4687 = float2((((node_9374.r*node_9374.r)-(node_9374.g*node_9374.g))+i.uv0.r),(i.uv0.g+(node_9374.r*node_9374.g*2.0)));
                float node_3134 = step(2.0,length(node_4687));
                float2 UV3 = node_4687;
                float2 node_8830 = (UV3*2.0+-1.0).rg;
                float2 node_4886 = float2((((node_8830.r*node_8830.r)-(node_8830.g*node_8830.g))+i.uv0.r),(i.uv0.g+(node_8830.r*node_8830.g*2.0)));
                float node_2786 = step(2.0,length(node_4886));
                float node_7277 = 5.0;
                float2 UV4 = node_4886;
                float2 node_1459 = (UV4*2.0+-1.0).rg;
                float2 node_597 = float2((((node_1459.r*node_1459.r)-(node_1459.g*node_1459.g))+i.uv0.r),(i.uv0.g+(node_1459.r*node_1459.g*2.0)));
                float node_7479 = length(node_597);
                float node_5311 = step(node_7277,node_7479);
                float2 UV5 = node_597;
                float2 node_4588 = UV5;
                float2 node_4608 = (node_4588*2.0+-1.0).rg;
                float node_1643 = ((node_4608.r*node_4608.r)-(node_4608.g*node_4608.g));
                float2 node_4137 = float2((node_1643+i.uv0.r),(i.uv0.g+(node_4608.r*node_4608.g*2.0)));
                float node_2751 = step(2.0,length(node_4137));
                float2 UV6 = node_4137;
                float2 node_6160 = (UV6*2.0+-1.0).rg;
                float node_2959 = (node_6160.r*node_6160.r);
                float node_3049 = (node_6160.g*node_6160.g);
                float node_4256 = ((((((node_9884+node_8776)+node_3134)+node_2786)+node_5311)+node_2751)+step(2.0,length(float2(((node_2959-node_3049)+i.uv0.r),(i.uv0.g+(node_6160.r*node_6160.g*2.0)))))); // Step7
                float3 emissive = float3(node_4256,node_4256,node_4256);
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
