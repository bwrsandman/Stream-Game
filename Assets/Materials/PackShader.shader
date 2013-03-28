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

		CGPROGRAM
			// Upgrade NOTE: excluded shader from DX11 and Xbox360; has structs without semantics (struct v2f members color,uv)
			#pragma exclude_renderers d3d11 xbox360
			#pragma surface surf Lambert finalcolor:frag

			struct Input {
				float2 uv_tex0;
			};

			sampler2D _tex0;
			sampler2D _tex1;
			sampler2D _tex2;
			float _health;
			float _smoothe0;
			float _uCenter;
			float _vCenter;
			float _radius;

			void surf (Input IN, inout SurfaceOutput o)
			{
				half4 c = tex2D (_tex0, IN.uv_tex0);
				o.Albedo = c.rgb;
				o.Alpha= c.a;
			}

			void frag (Input IN, SurfaceOutput o, inout fixed4 color)
			{
				const float _smoothe1 = 100.0;
				const float _separate = 0.95;
				float2 center = float2(_uCenter, _vCenter);
				float health = 0.05 * ceil(_health/0.05);

				float3 oricol = tex2D(_tex0, IN.uv_tex0).xyz;
				float3 defcol = tex2D (_tex2, IN.uv_tex0).xyz;
				float3 col = tex2D (_tex1, IN.uv_tex0).xyz;

				float dist = distance(IN.uv_tex0, center);

				col = lerp(col, oricol, clamp(_smoothe0 * (IN.uv_tex0.y + health - 1.0),0.0,1.0));
				col = lerp(defcol, col, clamp(_smoothe1 * (IN.uv_tex0.x - _separate),0.0,1.0));

				color.rgb = col;
				color.a = dist < _radius || IN.uv_tex0.x > _separate;
			}

		ENDCG
	} 
	FallBack "Diffuse"
}
