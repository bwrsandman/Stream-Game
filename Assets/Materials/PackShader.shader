Shader "Custom/Pack Shader"
{
	Properties
	{
		_tex0 ("Default", 2D) = "white" {}
		_tex1 ("Time Energy Empty", 2D) = "black" {}
		_tex2 ("Time Energy Filled", 2D) = "white" {}
		_tex3 ("Health Low", 2D) = "red" {}
		_tex4 ("Health Full", 2D) = "white" {}
		_bump ("Bumpmap", 2D) = "bump" {}

		_timeEnergy ("Time Energy", Range(0,1)) = 1.0
		_health("Health", Range(0,1)) = 1.0

		_healthBrightness("Health Brightness", Range(0.0, 1.0)) = 0.2
		_healthVariation("Health Variation", Range(0.0, 1.0)) = 0.2
		_timeBrightness("Time Brightness", Range(0.0, 1.0)) = 0.5
	}

	SubShader
	{
		Tags { "RenderType"="Opaque" }
		LOD 200

		CGPROGRAM
			// Upgrade NOTE: excluded shader from DX11 and Xbox360; has structs without semantics (struct v2f members color,uv)
			#pragma exclude_renderers d3d11 xbox360
			#pragma surface surf WrapLambert finalcolor:frag
			#include "UnityCG.cginc"

			struct Input {
				float2 uv_tex0;
				float2 uv_bump;
			};

			sampler2D _tex0;
			sampler2D _tex1;
			sampler2D _tex2;
			sampler2D _tex3;
			sampler2D _tex4;
			sampler2D _bump;

			float _timeEnergy;
			float _health;

			float _healthVariation;
			float _healthBrightness;
			float _timeBrightness;

			half4 LightingWrapLambert (SurfaceOutput s, half3 lightDir, half atten)
			{
				const half _wrap = 0.5;
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
				o.Alpha = c.a;
				o.Normal = UnpackNormal(tex2D(_bump, IN.uv_bump));
			}

			void frag (Input IN, SurfaceOutput o, inout fixed4 color)
			{
				const float _radius = 0.1;
				const float _uCenter = 0.26;
				const float _vCenter = 0.6;
				const float _separate = 0.95;
				const half smoothe = 60.0;
				float2 center = float2(_uCenter, _vCenter);
				float health = 1.0 - 0.05 * ceil(_timeEnergy/0.05);
				float dist = distance(IN.uv_tex0, center);

				float3 oricol = tex2D(_tex1, IN.uv_tex0).xyz;
				float3 col = tex2D (_tex2, IN.uv_tex0).xyz;
				float3 lowcol = tex2D(_tex3, IN.uv_tex0).xyz;
				float3 fulcol = tex2D(_tex4, IN.uv_tex0).xyz;

				col = lerp(col, oricol, clamp(smoothe * (IN.uv_tex0.y + health - 1.0),0.0,1.0));
				col = lerp(color.rgb, col, clamp(smoothe * (IN.uv_tex0.x - _separate),0.0,1.0));

				float3 heacol = lerp(lowcol, fulcol, _health);
				float healthBlend = max(_healthVariation, 1.0 - _healthVariation);
				heacol = lerp(col, heacol, healthBlend + _SinTime.w * _healthVariation);

				color.rgb = lerp(heacol, col, clamp(smoothe * (dist - _radius), 0.0, 1.0));
				color.a = max(_healthBrightness * float(dist < _radius), _timeBrightness * float(IN.uv_tex0.x > _separate));
			}

		ENDCG
	} 
	FallBack "Diffuse"
}
