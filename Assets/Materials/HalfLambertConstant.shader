Shader "Custom/HalfLambertConstant" {
	Properties
	{
		_MainColor ("Texture", Color) = (0.0, 0.0, 0.0, 0.0)
		_BumpMap ("Bumpmap", 2D) = "bump" {}
		_WrapAmount ("Wrap Amount", Range (0.0, 1.0)) = 0.5
	}

	SubShader
	{
		Tags { "RenderType" = "Opaque" }

		CGPROGRAM
		#pragma surface surf WrapLambert

		float _WrapAmount;

		half4 LightingWrapLambert (SurfaceOutput s, half3 lightDir, half atten)
		{

			half NdotL = dot (s.Normal, lightDir);
			half diff = NdotL * _WrapAmount + (1 - _WrapAmount);
			half4 c;
			c.rgb = s.Albedo * _LightColor0.rgb * (diff * atten * 2);
			c.a = s.Alpha;
			return c;
		}

		struct Input
		{
			float4 color : COLOR;
			float2 uv_BumpMap;
		};

		float4 _MainColor;
		sampler2D _BumpMap;

		void surf (Input IN, inout SurfaceOutput o)
		{
			o.Albedo = IN.color.rgb * _MainColor.rgb;
			o.Normal = UnpackNormal (tex2D (_BumpMap, IN.uv_BumpMap));
			o.Alpha = _MainColor.a;
		}
		ENDCG
	}

	Fallback "Diffuse"
}
