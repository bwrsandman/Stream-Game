// Upgrade NOTE: replaced 'SeperateSpecular' with 'SeparateSpecular'

//Shader "Custom/BakeVertexDiffuse" {
//	Properties {
//		_MainTex ("Base (RGB)", 2D) = "white" {}
//	}
//	SubShader {
//		Tags { "RenderType"="Opaque" }
//		LOD 200
//		
//		CGPROGRAM
//		#pragma surface surf Lambert
//
//		sampler2D _MainTex;
//
//		struct Input {
//			float2 uv_MainTex;
//		};
//
//		void surf (Input IN, inout SurfaceOutput o) {
//			half4 c = tex2D (_MainTex, IN.uv_MainTex);
//			o.Albedo = c.rgb;
//			o.Alpha = c.a;
//		}
//		ENDCG
//	} 
//	FallBack "Diffuse"
//}

Shader "Baked Vertex Lighting/Bumped Specular" {
Properties {
    _Color ("Main Color", Color) = (1,1,1,1)
    _SpecColor ("Specular Color", Color) = (0.5, 0.5, 0.5, 1)
    _Shininess ("Shininess", Range (0.01, 1)) = 0.078125
    _MainTex ("Base (RGB) Gloss (A)", 2D) = "white" {}
    _BumpMap ("Bump (RGB)", 2D) = "bump" {}
}
 
SubShader {
    // Use standard pixel-lighting blending: first pass is opaque, further passes additive
    /* Upgrade NOTE: commented out, possibly part of old style per-pixel lighting: Blend AppSrcAdd AppDstAdd */
    
    // This pass is always drawn.
    // It draws base texture multipled by per-vertex colors, multiplied by material's color
    Pass {
        Tags {"LightMode" = "Always"} // always draw this pass
        Lighting Off
        BindChannels {
            Bind "Vertex", vertex
            Bind "TexCoord", texcoord
            Bind "Color", color
        } 
        SetTexture [_MainTex] {
            combine primary * texture // multiply vertex color by texture
        } 
        SetTexture [_MainTex] {
            constantColor [_Color]
            combine previous * constant // ...and multiply by material's color
        } 
    }

    // This pass is drawn when there are vertex-lit lights. This is just standard
    // lighting*texture*2 pass, that adds onto baked lighting pass
    Pass {
        Tags {"LightMode" = "Vertex"} // draw this pass when there are vertex-lit lights
        // setup vertex lighting
        Material {
            Diffuse [_Color]
            Shininess [_Shininess]
            Specular [_SpecColor]
        }
        Lighting On
        SeparateSpecular On
        ColorMask RGB
 
        SetTexture [_MainTex] { combine texture * primary DOUBLE }
    }

    // "Paste" all passes named "PPL" from Bumped Specular shader.
    // They happen to be the ones that implement per-pixel lighting.
    UsePass "Bumped Specular/PPL"
}

Fallback "VertexLit"
}
