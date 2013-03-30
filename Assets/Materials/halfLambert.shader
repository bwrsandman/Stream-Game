Shader "Custom/Half Lambert"
{

	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_WrapAmount ("Wrap Amount", Range (0.0, 1.0)) = 0.5
	}

	SubShader
	{
		Tags { "RenderType" = "Opaque" }
		Tags { "Queue" = "Geometry+1000" }

		CGPROGRAM
		#pragma surface surf WrapLambert

		float _WrapAmount;

		half4 LightingWrapLambert (SurfaceOutput s, half3 lightDir, half atten)
		{

			half NdotL = dot (s.Normal, lightDir);
			half diff = NdotL * _WrapAmount + (1.0 - _WrapAmount);
			half4 c;
			c.rgb = s.Albedo * _LightColor0.rgb * (diff * atten * 2.0);
			c.a = s.Alpha;
			return c;
		}

		struct Input
		{
			float2 uv_MainTex;
		};

		sampler2D _MainTex;

		void surf (Input IN, inout SurfaceOutput o)
		{
			o.Albedo = tex2D (_MainTex, IN.uv_MainTex).rgb;
		}
		ENDCG
	}

	Fallback "Diffuse"
}
