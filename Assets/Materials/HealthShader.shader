Shader "Custom/HealthShader" {
	Properties {
		_tex0 ("Texture1", 2D) = "white" {}
		_tex1 ("Texture2", 2D) = "white" {}
		_health ("Health", Range(0,1)) = 1.0
		_smootheFactor ("Smoothing", Range(0,100)) = 20.0
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
			float _health;
			float _smootheFactor;

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
				float animHealth = _health*1.0;
				float2 q = i.uv.xy / float2(1,1);
				float3 oricol = tex2D (_tex0,float2(q.x,q.y)).xyz;
				float3 col = tex2D (_tex1,float2(i.uv.x,i.uv.y)).xyz;

				//float comp = smoothstep(0.2, 0.7, animHealth);
				col = lerp(col,oricol, clamp(_smootheFactor * (q.y + animHealth - 1.0),0.0,1.0));
				return float4(col,1);
			}
	
			ENDCG
		}
	} 
	FallBack "Diffuse"
}
