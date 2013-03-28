Shader "Custom/HealthShader" {
	Properties {
		_tex0 ("Empty", 2D) = "black" {}
		_tex1 ("Filled", 2D) = "white" {}
		_tex2 ("Default", 2D) = "gray" {}
		_health ("Health", Range(0,1)) = 1.0
		_smoothe0 ("Health Smoothing", Range(0,100)) = 20.0
		_uCenter ("Health Center u", Range(0.0,1.0)) = 0.1
		_vCenter ("Health Center v", Range(0.0,1.0)) = 0.1
		_radius ("Circle radius", Range(0.0,1.0)) = 0.5
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
				float4 color : COLOR0;
				float4 fragPos : COLOR1;
				float2  uv : TEXCOORD0;
			};

			float4 _tex0_ST;
	
			v2f vert (appdata_base v)
			{
				v2f o;
				o.pos = mul (UNITY_MATRIX_MVP, v.vertex);
				o.fragPos = o.pos;
				o.uv = TRANSFORM_TEX (v.texcoord, _tex0);
				o.color = float4 (1.0, 1.0, 1.0, 1);
				return o;
			}
	
			half4 frag (v2f i) : COLOR
			{
				const float _smoothe1 = 100.0;
				const float _separate = 0.95;
				float2 q = i.uv.xy;
				float2 center = float2(_uCenter, _vCenter);
				float health = 0.05 * ceil(_health/0.05);

				float3 oricol = tex2D (_tex0,float2(q.x,q.y)).xyz;
				float3 defcol = tex2D (_tex2,float2(q.x,q.y)).xyz;
				float3 col = tex2D (_tex1,float2(i.uv.x,i.uv.y)).xyz;

				float dist = distance(q, center);

				float3 circol = lerp(defcol,oricol, 1.0 - clamp(dist/_radius, 0.0, 1.0));

				col = lerp(col, oricol, clamp(_smoothe0 * (q.y + health - 1.0),0.0,1.0));
				col = lerp(defcol, col, clamp(_smoothe1 * (q.x - _separate),0.0,1.0));

				return float4(col,dist < _radius || q.x > _separate);
			}
	
			ENDCG
		}
	} 
	FallBack "Diffuse"
}
