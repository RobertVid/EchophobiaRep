// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:1,grmd:0,uamb:True,mssp:True,bkdf:True,hqlp:False,rprd:True,enco:False,rmgx:True,imps:False,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:1,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:6,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:1,qpre:4,rntp:5,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:True,fsmp:False;n:type:ShaderForge.SFN_Final,id:2865,x:33144,y:33186,varname:node_2865,prsc:2|custl-8995-OUT;n:type:ShaderForge.SFN_TexCoord,id:8336,x:31938,y:33365,varname:node_8336,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:9159,x:32217,y:33476,varname:node_9159,prsc:2,ntxv:0,isnm:False|UVIN-8336-UVOUT,TEX-3939-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:3939,x:31898,y:33597,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_3939,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_SceneDepth,id:2943,x:32196,y:33284,varname:node_2943,prsc:2|UV-8336-UVOUT;n:type:ShaderForge.SFN_Slider,id:9893,x:31776,y:34041,ptovrint:False,ptlb:Size,ptin:_Size,varname:node_9893,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.2,max:5;n:type:ShaderForge.SFN_If,id:1970,x:32426,y:34181,varname:node_1970,prsc:2|A-2943-OUT,B-4295-OUT,GT-9078-OUT,EQ-9078-OUT,LT-3133-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9541,x:31827,y:34141,ptovrint:False,ptlb:Position,ptin:_Position,varname:node_9541,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Subtract,id:4295,x:32133,y:34073,varname:node_4295,prsc:2|A-9541-OUT,B-9893-OUT;n:type:ShaderForge.SFN_Vector1,id:3133,x:32076,y:34301,varname:node_3133,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:9078,x:32076,y:34376,varname:node_9078,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:3925,x:32423,y:33884,varname:node_3925,prsc:2|A-2943-OUT,B-1068-OUT,GT-3133-OUT,EQ-9078-OUT,LT-9078-OUT;n:type:ShaderForge.SFN_Add,id:1068,x:32214,y:33764,varname:node_1068,prsc:2|A-9541-OUT,B-9893-OUT;n:type:ShaderForge.SFN_Multiply,id:7230,x:32633,y:34059,varname:node_7230,prsc:2|A-3925-OUT,B-1970-OUT;n:type:ShaderForge.SFN_Lerp,id:8995,x:32903,y:33383,varname:node_8995,prsc:2|A-9159-RGB,B-8816-OUT,T-7230-OUT;n:type:ShaderForge.SFN_Color,id:5216,x:32504,y:33566,ptovrint:False,ptlb:node_5216,ptin:_node_5216,varname:node_5216,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.6,c3:1,c4:1;n:type:ShaderForge.SFN_Add,id:8816,x:32556,y:33153,varname:node_8816,prsc:2|A-9159-RGB,B-5216-RGB;proporder:3939-9893-5216;pass:END;sub:END;*/

Shader "Shader Forge/PEV_32_PostFX_Localizacion" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Size ("Size", Range(0, 5)) = 0.2
        _node_5216 ("node_5216", Color) = (0,0.6,1,1)
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay+1"
            "RenderType"="Overlay"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            ZTest Always
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #define _GLOSSYENV 1
            #include "UnityCG.cginc"
            #include "UnityPBSLighting.cginc"
            #include "UnityStandardBRDF.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Size;
            uniform float _Position;
            uniform float4 _node_5216;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float4 node_9159 = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_2943 = max(0, LinearEyeDepth(SAMPLE_DEPTH_TEXTURE(_CameraDepthTexture, i.uv0)) - _ProjectionParams.g);
                float node_3925_if_leA = step(node_2943,(_Position+_Size));
                float node_3925_if_leB = step((_Position+_Size),node_2943);
                float node_9078 = 1.0;
                float node_3133 = 0.0;
                float node_1970_if_leA = step(node_2943,(_Position-_Size));
                float node_1970_if_leB = step((_Position-_Size),node_2943);
                float3 finalColor = lerp(node_9159.rgb,(node_9159.rgb+_node_5216.rgb),(lerp((node_3925_if_leA*node_9078)+(node_3925_if_leB*node_3133),node_9078,node_3925_if_leA*node_3925_if_leB)*lerp((node_1970_if_leA*node_3133)+(node_1970_if_leB*node_9078),node_9078,node_1970_if_leA*node_1970_if_leB)));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
