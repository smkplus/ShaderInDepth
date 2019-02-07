Shader "Custom/HeightDependentTint" 
 {
   Properties 
   {
     _MainTex ("Base (RGB)", 2D) = "white" {}
     _HeightMin ("Height Min", Float) = -1
     _HeightMax ("Height Max", Float) = 1
     _ColorMin ("Tint Color At Min", Color) = (0,0,0,1)
     _ColorMax ("Tint Color At Max", Color) = (1,1,1,1)
   }
  
   SubShader
   {
     Tags { "RenderType"="Opaque" }
  
     CGPROGRAM
     #pragma surface surf Lambert
  
     sampler2D _MainTex;
     fixed4 _ColorMin;
     fixed4 _ColorMax;
     float _HeightMin;
     float _HeightMax;
  
     struct Input
     {
       float2 uv_MainTex;
       float3 worldPos;
     };
  
     void surf (Input IN, inout SurfaceOutput o) 
     {
       half4 c = tex2D (_MainTex, IN.uv_MainTex);
       float h = (_HeightMax-IN.worldPos.y) / (_HeightMax-_HeightMin);
              if(h < _HeightMax+5){
       o.Albedo = float3(1.,0.,0.);
       }
       if(h < _HeightMax+4){
       o.Albedo = float3(1.,1.,0.);    
       }
       if(h < _HeightMax+3){
       o.Albedo = float3(0.,1.,0.);
       }
       if(h < _HeightMax+2){
       o.Albedo = float3(0.,1.,1.);
       }
       if(h < _HeightMax+1){
       o.Albedo = float3(0.,0.,1.);
       }

       o.Alpha = c.a;
     }
     ENDCG
   } 
   Fallback "Diffuse"
 }