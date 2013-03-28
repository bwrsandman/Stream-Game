Shader "Custom/HealthShader" {
	Properties {
		_tex0 ("Empty", 2D) = "red" {}
		_tex1 ("Filled", 2D) = "black" {}
		_tex2 ("Default", 2D) = "white" {}
		_bump ("Bumpmap", 2D) = "bump" {}
		_wrap ("Wrap Amount", Range (0.0, 1.0)) = 0.5

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
			#pragma surface surf WrapLambert finalcolor:frag

			struct Input {
				float2 uv_tex0;
				float2 uv_bump;
			};

			sampler2D _tex0;
			sampler2D _tex1;
			sampler2D _tex2;
			sampler2D _bump;
			float _wrap;

			float _health;
			float _smoothe0;
			float _uCenter;
			float _vCenter;
			float _radius;

			half4 LightingWrapLambert (SurfaceOutput s, half3 lightDir, half atten)
			{
				half NdotL = dot (s.Normal, lightDir);
				half diff = NdotL *_wrap  + (1.0 - _wrap);
				half4 c;
				c.rgb = s.Albedo * _LightColor0.rgb * (diff * atten * 2.0);
				c.a = s.Alpha;
				return c;
			}

			void surf (Input IN, inout SurfaceOutput o)
			{
				half4 c = tex2D (_tex0, IN.uv_tex0);
				o.Albedo = c.rgb;
				o.Alpha= c.a;
				o.Normal = UnpackNormal(tex2D(_bump, IN.uv_bump));
			}

			void frag (Input IN, SurfaceOutput o, inout fixed4 color)
			{
				const float _smoothe1 = 100.0;
				const float _separate = 0.95;
				float2 center = float2(_uCenter, _vCenter);
				float health = 1.0 - 0.05 * ceil(_health/0.05);
				float dist = distance(IN.uv_tex0, center);

				float3 oricol = tex2D(_tex0, IN.uv_tex0).xyz;
				float3 defcol = tex2D (_tex2, IN.uv_tex0).xyz;
				float3 col = tex2D (_tex1, IN.uv_tex0).xyz;

				col = lerp(col, oricol, clamp(_smoothe0 * (IN.uv_tex0.y + health - 1.0),0.0,1.0));
				col = lerp(defcol, col, clamp(_smoothe1 * (IN.uv_tex0.x - _separate),0.0,1.0));

				color.rgb = col;
				color.a = dist < _radius || IN.uv_tex0.x > _separate;
			}

		ENDCG
	} 
	FallBack "Diffuse"
}
