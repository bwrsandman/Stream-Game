Shader "Custom/HealthShader" {
	Properties {
		_tex0 ("Empty", 2D) = "black" {}
		_tex1 ("Filled", 2D) = "white" {}
		_tex2 ("Default", 2D) = "gray" {}
		_health ("Health", Range(0,1)) = 1.0
		_smoothe0 ("Health Smoothing", Range(2,100)) = 20.0
		_uCenter ("Health Center u", Range(0.0,1.0)) = 0.1
		_vCenter ("Health Center v", Range(0.0,1.0)) = 0.1
		_radius ("Circle radius", Range(0.0,.3)) = 0.05
	}
	SubShader {
		Tags { "RenderType"="Opaque" }
		LOD 200
		Pass
		{
			CGPROGRAM
	
			#pragma fragment frag
			#pragma vertex vert
			#include "UnityCG.cginc"

			sampler2D _tex0;
			sampler2D _tex1;
			sampler2D _tex2;
			float _health;
			float _smoothe0;
			float _uCenter;
			float _vCenter;
			float _radius;

			struct v2f {
				float4 pos : POSITION;
				float4 fragPos : COLOR1;
				float2  uv : TEXCOORD0;
			};

			float4 _tex0_ST;
	
			v2f vert (appdata_base v)
			{
				v2f o;
				o.pos = mul (UNITY_MATRIX_MVP, v.vertex);
				o.uv = TRANSFORM_TEX (v.texcoord, _tex0);
				return o;
			}
	
			half4 frag (v2f i) : COLOR
			{
				const float _smoothe1 = 100.0;
				const float _separate = 0.95;
				
				float2 uv = i.uv.xy;
				
				//Step health bar:
				float stepHealth = 0.05 * ceil(_health * 20.0); // 1 / 0.05 == 20

				float3 emptyCol = tex2D(_tex0,float2(uv.x,uv.y)).xyz;
				float3 filledCol = tex2D(_tex1,float2(uv.x,uv.y)).xyz;
				float3 defCol = tex2D(_tex2,float2(uv.x,uv.y)).xyz; 

				//Time circle:
				float3 timeMix = lerp(filledCol, emptyCol, clamp(_smoothe0 * (uv.y + stepHealth - 1.0), 0.0, 1.0));

				//Health circle properties:
				float2 center = float2(_uCenter, _vCenter);
				float dist = distance(uv, center);
				
				//Separate:
				bool border = uv.x < _separate;
				//If lower than border use defcol, else use healthMix:
				float3 resCol = defCol * border + timeMix * !border;

				//Set health and time areas as 1.0 alpha, the rest as 0.0 alpha:
				return float4(resCol, dist < _radius || uv.x > _separate);
			}
			ENDCG
		}
	} 
	FallBack "Diffuse"
}
