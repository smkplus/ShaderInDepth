// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:1387,x:34408,y:33019,varname:node_1387,prsc:2;n:type:ShaderForge.SFN_Code,id:2107,x:32621,y:32966,varname:node_2107,prsc:2,code:ZgBsAG8AYQB0ACAAZAAgAD0AIAAwAC4AMAA7AAoAZgBsAG8AYQB0ACAAbAA7AAoAZgBsAG8AYQB0ADIAIABzACAAPQAgAHAAOwAKAAoAZgBvAHIAIAAoAGkAbgB0ACAAaQAgAD0AIAAwADsAIABpACAAPAAgAEkAVABFAFIAQQBUAEkATwBOADsAIABpACsAKwApACAAewANAAoAIAAgACAAIABzACAAPQAgAGYAbABvAGEAdAAyACgAcwAuAHgAIAAqACAAcwAuAHgAIAAtACAAcwAuAHkAIAAqACAAcwAuAHkAIAArACAAcAAuAHgALAAgADIALgAwACAAKgAgAHMALgB4ACAAKgAgAHMALgB5ACAAKwAgAHAALgB5ACkAOwANAAoAIAAgACAAIABsACAAPQAgAGwAZQBuAGcAdABoACgAcwApADsADQAKACAAIAAgACAAZAAgACsAPQAgAGwAIAArACAALgAwADsADQAKACAAIAAgACAAaQBmACAAKABsACAAPgAgADIALgAwACkAIAByAGUAdAB1AHIAbgAgAGYAbABvAGEAdAAzACgAMQAuACwAMQAuACwAMQAuACkAKgBkADsADQAKACAAIAB9AAoAcgBlAHQAdQByAG4AIABmAGwAbwBhAHQAMwAoADAALgAsADAALgAsADAALgApADsA,output:2,fname:Mandelbrot,width:720,height:197,input:1,input:0,input_1_label:p,input_2_label:ITERATION|A-5334-OUT,B-3263-OUT;n:type:ShaderForge.SFN_TexCoord,id:8379,x:31936,y:32834,varname:node_8379,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Vector1,id:3263,x:32369,y:33047,varname:node_3263,prsc:2,v1:30;n:type:ShaderForge.SFN_RemapRange,id:6587,x:32131,y:32834,varname:node_6587,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-8379-UVOUT;n:type:ShaderForge.SFN_Divide,id:5334,x:32369,y:32910,varname:node_5334,prsc:2|A-6587-OUT,B-6389-OUT;n:type:ShaderForge.SFN_Vector1,id:6389,x:32120,y:32998,varname:node_6389,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:2517,x:32783,y:33190,varname:node_2517,prsc:2|A-8859-R,B-8859-R;n:type:ShaderForge.SFN_TexCoord,id:7536,x:31785,y:33196,varname:node_7536,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_RemapRange,id:6568,x:31994,y:33196,varname:node_6568,prsc:2,frmn:0,frmx:1,tomn:-1,tomx:1|IN-7536-UVOUT;n:type:ShaderForge.SFN_ComponentMask,id:8859,x:32397,y:33213,varname:node_8859,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-7873-OUT;n:type:ShaderForge.SFN_Divide,id:7873,x:32233,y:33213,varname:node_7873,prsc:2|A-6568-OUT,B-4886-OUT;n:type:ShaderForge.SFN_Vector1,id:4886,x:32023,y:33371,varname:node_4886,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Subtract,id:1655,x:32995,y:33247,varname:node_1655,prsc:2|A-2517-OUT,B-5065-OUT;n:type:ShaderForge.SFN_Multiply,id:5065,x:32783,y:33345,varname:node_5065,prsc:2|A-8859-G,B-8859-G;n:type:ShaderForge.SFN_Add,id:7462,x:33176,y:33364,varname:node_7462,prsc:2|A-1655-OUT,B-8859-R;n:type:ShaderForge.SFN_Multiply,id:8064,x:32795,y:33531,varname:node_8064,prsc:2|A-8859-R,B-8859-G;n:type:ShaderForge.SFN_Add,id:1170,x:33165,y:33506,varname:node_1170,prsc:2|A-8064-OUT,B-8859-G;n:type:ShaderForge.SFN_Append,id:2020,x:33361,y:33409,varname:node_2020,prsc:2|A-7462-OUT,B-1170-OUT;n:type:ShaderForge.SFN_Vector1,id:9663,x:33386,y:33626,varname:node_9663,prsc:2,v1:10;n:type:ShaderForge.SFN_Length,id:4422,x:33520,y:33409,varname:node_4422,prsc:2|IN-2020-OUT;pass:END;sub:END;*/

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
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float3 finalColor = 0;
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
