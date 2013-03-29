// Upgrade NOTE: replaced 'SeperateSpecular' with 'SeparateSpecular'

// The Vertex Lit shader is by far the most smple shader.
// It does not use any Cg programs, it instead uses OpenGL Lighting and sets the material
// variables using the "Material {}" tag. We then enable lighting and make use of the SeperateSpecular option
// and rely on the OpenGL API to do our pr. vertex lighting calculations.

// The shader scope and name
Shader "Custom/HalfLambertBakedVertex" {
	Properties {									// The properties exposed by this shader. They can be changed in the inspector.
		_Color ("Main Color", Color) = (1,1,1,1)
		_SpecColor ("Spec Color", Color) = (1,1,1,1)
		_Emission ("Emmisive Color", Color) = (0,0,0,0)
		_Shininess ("Shininess", Range (0.01, 1)) = 0.7
		_MainTex ("Base (RGB)", 2D) = "white" { }
        _BumpMap ("Bumpmap", 2D) = "bump" {}
        _WrapAmount ("Wrap Amount", Range (0.0, 1.0)) = 0.5
	}

	Category { 
						// The category tag. Empty in this case, but everything set here will work for the subscopes
		SubShader {
			
			CGPROGRAM

		      #pragma surface surf WrapLambert
		
		
		
		      float _WrapAmount;
		
		
		
		      half4 LightingWrapLambert (SurfaceOutput s, half3 lightDir, half atten) {
		
		          half NdotL = dot (s.Normal, lightDir);
		
		          half diff = NdotL * _WrapAmount + (1 - _WrapAmount);
		
		          half4 c;
		
		          c.rgb = s.Albedo * _LightColor0.rgb * (diff * atten * 2);
		
		          c.a = s.Alpha;
		
		          return c;
		
		      }
		
		
		
		      struct Input {
		
		          float2 uv_MainTex;
		
		          float2 uv_BumpMap;
		
		      };
		
		      sampler2D _MainTex;
		
		      sampler2D _BumpMap;
		
		
		
		      void surf (Input IN, inout SurfaceOutput o) {
		
		          o.Albedo = tex2D (_MainTex, IN.uv_MainTex).rgb;
		
		          o.Normal = UnpackNormal (tex2D (_BumpMap, IN.uv_BumpMap));
		
		      }
		
		ENDCG
		
		Pass {
				Material {							/// The material tag, used to set material variables to OpenGL
					Diffuse [_Color]
					Ambient [_Color]	
					Shininess [_Shininess]
					Specular [_SpecColor]
					Emission [_Emission]	
				}
				Lighting On						// Let there be light.........
				SeparateSpecular On				// Use the SeperateSpecular option, so spec is  seperated from the texture itself
				SetTexture [_MainTex] {				// Bind the texture we wish to use to OpenGL with "SetTexture[]"
					constantColor [_Color]			// A constant color to multiply with the texture color
					Combine texture * primary DOUBLE, texture * constant // Texture combiner call, that calculates the final color.
				} 
			}
			
			Pass {
				Blend One One
				Lighting Off

				BindChannels {
					Bind "Vertex", vertex
					Bind "TexCoord", texcoord
					Bind "Color", color
				} 
		
				SetTexture [_MainTex] {
					Combine primary * texture
				} 
				SetTexture [_MainTex] {
					constantColor [_Color]			// A constant color to multiply with the texture color
					Combine previous * constant
				} 
			}
			
		} 
	}
}