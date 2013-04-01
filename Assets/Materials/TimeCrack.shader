Shader "Custom/TimeCrack"
{
	Properties
	{
		_MainTex ("Base (RGB)", 2D) = "white" {}
		_Brightness ("Brightness", Range(0.0, 10.0)) = 2.0
	}
	SubShader {
		Tags {"Queue"="transparent"  "RenderType"="Transparent" }
		LOD 200
		
		CGPROGRAM
		#pragma surface surf Lambert alpha
		#include "UnityCG.cginc"

		sampler2D _MainTex;
		float _Brightness;

		struct Input
		{
			float2 uv_MainTex;
		};

		void surf (Input IN, inout SurfaceOutput o)
		{
			half4 c = tex2D (_MainTex, IN.uv_MainTex);
			o.Albedo = lerp(0.5, 1.0, 0.5 * (_SinTime.w + 1.0)) * c.rgb;
			float uvVariation = 1.0 - float(abs(IN.uv_MainTex.y - (sin(_Time.z) + 1.0) *.5) * 10.0);
			uvVariation = clamp(uvVariation, 0.0, 1.0);
			float flicker = pow(sin(_Time.w * 5.0f), 30.0) * 0.1;
			flicker += 0.5 * (pow(_SinTime.w, 30.0) + 1.0);
			uvVariation += clamp(flicker, 0.0, 1.0) + 0.2;
			o.Alpha = _Brightness * uvVariation * c.a;
			o.Emission = lerp(0.5, 1.0, 0.5 * (_SinTime.w + 1.0)) * uvVariation * c.rgb - 0.4;
		}
		ENDCG
	} 
	FallBack "Diffuse"
}
