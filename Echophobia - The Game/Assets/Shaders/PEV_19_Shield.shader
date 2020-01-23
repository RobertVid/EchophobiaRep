// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34834,y:32744,varname:node_3138,prsc:2|custl-4108-OUT,alpha-7970-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32705,y:32893,ptovrint:False,ptlb:MainColor,ptin:_MainColor,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.003070495,c2:0.4457837,c3:0.6509434,c4:1;n:type:ShaderForge.SFN_DepthBlend,id:4859,x:32973,y:32713,varname:node_4859,prsc:2|DIST-1554-OUT;n:type:ShaderForge.SFN_Clamp01,id:1230,x:33128,y:32713,varname:node_1230,prsc:2|IN-4859-OUT;n:type:ShaderForge.SFN_OneMinus,id:2571,x:33291,y:32713,varname:node_2571,prsc:2|IN-1230-OUT;n:type:ShaderForge.SFN_Color,id:9224,x:32584,y:33215,ptovrint:False,ptlb:IntersectionColor,ptin:_IntersectionColor,varname:node_9224,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8475146,c3:0,c4:1;n:type:ShaderForge.SFN_Multiply,id:3057,x:33537,y:33541,varname:node_3057,prsc:2|A-6316-OUT,B-3366-OUT;n:type:ShaderForge.SFN_Set,id:1260,x:33450,y:32713,varname:DepthBlend,prsc:2|IN-2571-OUT;n:type:ShaderForge.SFN_Get,id:3366,x:33336,y:33581,varname:node_3366,prsc:2|IN-1260-OUT;n:type:ShaderForge.SFN_Set,id:5002,x:33819,y:33541,varname:IntersectionOpacity,prsc:2|IN-3057-OUT;n:type:ShaderForge.SFN_Set,id:5264,x:32870,y:32973,varname:MainColorOpacity,prsc:2|IN-7241-A;n:type:ShaderForge.SFN_Set,id:1123,x:32870,y:32893,varname:MainColor,prsc:2|IN-7241-RGB;n:type:ShaderForge.SFN_Set,id:3940,x:33060,y:33112,varname:IntersectionColor,prsc:2|IN-8435-OUT;n:type:ShaderForge.SFN_Get,id:8720,x:33238,y:33087,varname:node_8720,prsc:2|IN-5002-OUT;n:type:ShaderForge.SFN_Get,id:5854,x:33238,y:33031,varname:node_5854,prsc:2|IN-5264-OUT;n:type:ShaderForge.SFN_Max,id:9014,x:33418,y:33051,varname:node_9014,prsc:2|A-5854-OUT,B-8720-OUT;n:type:ShaderForge.SFN_Lerp,id:3110,x:33439,y:32869,varname:node_3110,prsc:2|A-7225-OUT,B-1122-OUT,T-1947-OUT;n:type:ShaderForge.SFN_Get,id:7225,x:33234,y:32854,varname:node_7225,prsc:2|IN-1123-OUT;n:type:ShaderForge.SFN_Get,id:1122,x:33234,y:32905,varname:node_1122,prsc:2|IN-3940-OUT;n:type:ShaderForge.SFN_Get,id:1947,x:33234,y:32957,varname:node_1947,prsc:2|IN-5002-OUT;n:type:ShaderForge.SFN_Slider,id:1554,x:32652,y:32713,ptovrint:False,ptlb:Depth,ptin:_Depth,varname:node_1554,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.09124481,max:0.1;n:type:ShaderForge.SFN_Set,id:5300,x:33652,y:32815,varname:CombinedColor,prsc:2|IN-3110-OUT;n:type:ShaderForge.SFN_Color,id:9959,x:32599,y:33435,ptovrint:False,ptlb:IntersectionColor_Inside,ptin:_IntersectionColor_Inside,varname:node_9959,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.4354308,c2:0.7510061,c3:0.8962264,c4:1;n:type:ShaderForge.SFN_Lerp,id:8435,x:32903,y:33112,varname:node_8435,prsc:2|A-9959-RGB,B-9224-RGB,T-1062-VFACE;n:type:ShaderForge.SFN_FaceSign,id:1062,x:32903,y:33228,varname:node_1062,prsc:2,fstp:0;n:type:ShaderForge.SFN_Lerp,id:6316,x:33537,y:33420,varname:node_6316,prsc:2|A-5708-OUT,B-9224-A,T-1062-VFACE;n:type:ShaderForge.SFN_Multiply,id:5708,x:33136,y:33490,varname:node_5708,prsc:2|A-642-OUT,B-9959-A;n:type:ShaderForge.SFN_Get,id:4230,x:32776,y:33548,varname:node_4230,prsc:2|IN-5264-OUT;n:type:ShaderForge.SFN_OneMinus,id:642,x:32962,y:33548,varname:node_642,prsc:2|IN-4230-OUT;n:type:ShaderForge.SFN_Color,id:2689,x:34001,y:33225,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:node_2689,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.8470589,c3:0,c4:1;n:type:ShaderForge.SFN_Fresnel,id:3457,x:34260,y:33505,varname:node_3457,prsc:2|NRM-2141-OUT,EXP-3680-OUT;n:type:ShaderForge.SFN_Slider,id:3680,x:34182,y:33669,ptovrint:False,ptlb:FresnelExponent,ptin:_FresnelExponent,varname:node_3680,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2.623932,max:5;n:type:ShaderForge.SFN_NormalVector,id:2141,x:34033,y:33406,prsc:2,pt:False;n:type:ShaderForge.SFN_Multiply,id:2052,x:34436,y:33396,varname:node_2052,prsc:2|A-3457-OUT,B-2689-A;n:type:ShaderForge.SFN_Lerp,id:4108,x:34489,y:32920,varname:node_4108,prsc:2|A-591-OUT,B-2689-RGB,T-2052-OUT;n:type:ShaderForge.SFN_Max,id:7970,x:34542,y:33038,varname:node_7970,prsc:2|A-9014-OUT,B-2052-OUT;n:type:ShaderForge.SFN_Get,id:591,x:34209,y:32908,varname:node_591,prsc:2|IN-5300-OUT;proporder:7241-9224-1554-9959-2689-3680;pass:END;sub:END;*/

Shader "Uniat/PEV_19_Shield" {
    Properties {
        _MainColor ("MainColor", Color) = (0.003070495,0.4457837,0.6509434,1)
        [HDR]_IntersectionColor ("IntersectionColor", Color) = (1,0.8475146,0,1)
        _Depth ("Depth", Range(0, 0.1)) = 0.09124481
        [HDR]_IntersectionColor_Inside ("IntersectionColor_Inside", Color) = (0.4354308,0.7510061,0.8962264,1)
        [HDR]_FresnelColor ("FresnelColor", Color) = (1,0.8470589,0,1)
        _FresnelExponent ("FresnelExponent", Range(0, 5)) = 2.623932
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _CameraDepthTexture;
            uniform float4 _MainColor;
            uniform float4 _IntersectionColor;
            uniform float _Depth;
            uniform float4 _IntersectionColor_Inside;
            uniform float4 _FresnelColor;
            uniform float _FresnelExponent;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
                float3 normalDir : TEXCOORD1;
                float4 projPos : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                i.normalDir = normalize(i.normalDir);
                i.normalDir *= faceSign;
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float sceneZ = max(0,LinearEyeDepth (UNITY_SAMPLE_DEPTH(tex2Dproj(_CameraDepthTexture, UNITY_PROJ_COORD(i.projPos)))) - _ProjectionParams.g);
                float partZ = max(0,i.projPos.z - _ProjectionParams.g);
////// Lighting:
                float3 MainColor = _MainColor.rgb;
                float3 IntersectionColor = lerp(_IntersectionColor_Inside.rgb,_IntersectionColor.rgb,isFrontFace);
                float MainColorOpacity = _MainColor.a;
                float DepthBlend = (1.0 - saturate(saturate((sceneZ-partZ)/_Depth)));
                float IntersectionOpacity = (lerp(((1.0 - MainColorOpacity)*_IntersectionColor_Inside.a),_IntersectionColor.a,isFrontFace)*DepthBlend);
                float3 CombinedColor = lerp(MainColor,IntersectionColor,IntersectionOpacity);
                float node_2052 = (pow(1.0-max(0,dot(i.normalDir, viewDirection)),_FresnelExponent)*_FresnelColor.a);
                float3 finalColor = lerp(CombinedColor,_FresnelColor.rgb,node_2052);
                return fixed4(finalColor,max(max(MainColorOpacity,IntersectionOpacity),node_2052));
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_SHADOWCASTER
            #define UNITY_PASS_SHADOWCASTER
            #endif //UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
