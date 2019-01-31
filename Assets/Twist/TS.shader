Shader "Hidden/TS"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_Angle("Angle",Float) = 1
	}
	SubShader
	{
		// No culling or depth
		Cull Off ZWrite Off ZTest Always

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
			};

			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = v.uv;
				return o;
			}
			
			sampler2D _MainTex;
			float _Angle;

			fixed4 frag (v2f i) : SV_Target
			{
				fixed4 col = tex2D(_MainTex, i.uv);
				
				float2 size = float2(_ScreenParams.x, _ScreenParams.y);

				float2 center = float2(size.x * 0.5, size.y * 0.5);
				float radius = _Angle * max(size.x,size.y);
				float angle = _Angle * 2.0;

				float2 texSize = float2(size.x, size.y);
				float2 tc = i.uv * texSize;
				tc -= center;
				float dist = length(tc);
				if (dist < radius) 
				{
					float percent = (radius - dist) / radius;
					float theta = percent * percent * angle * 8.0;
					float s = sin(theta);
					float c = cos(theta);
					tc = float2(dot(tc, float2(c, -s)), dot(tc, float2(s, c)));
				}
				tc += center;
				float3 color = tex2D(_MainTex, tc / texSize).rgb;
				return float4(color, 1.0);
				return col;
			}
			ENDCG
		}
	}
}
