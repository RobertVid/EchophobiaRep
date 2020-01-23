// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|custl-8395-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:32111,y:32637,ptovrint:False,ptlb:ColorA,ptin:_ColorA,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.07843138,c2:0.3921569,c3:0.7843137,c4:1;n:type:ShaderForge.SFN_Vector4Property,id:8442,x:31806,y:32912,ptovrint:False,ptlb:PlayerPosition,ptin:_PlayerPosition,varname:node_8442,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.5,v2:0.5,v3:0.5,v4:1;n:type:ShaderForge.SFN_ValueProperty,id:9724,x:31990,y:33218,ptovrint:False,ptlb:Radius,ptin:_Radius,varname:node_9724,prsc:2,glob:True,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Color,id:6176,x:32111,y:32802,ptovrint:False,ptlb:ColorB,ptin:_ColorB,varname:_Color_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:1,c3:0.002788067,c4:1;n:type:ShaderForge.SFN_Distance,id:9294,x:31990,y:33021,varname:node_9294,prsc:2|A-8442-XYZ,B-4896-XYZ;n:type:ShaderForge.SFN_FragmentPosition,id:4896,x:31806,y:33091,varname:node_4896,prsc:2;n:type:ShaderForge.SFN_If,id:9381,x:32185,y:33021,varname:node_9381,prsc:2|A-9294-OUT,B-9724-OUT,GT-495-OUT,EQ-495-OUT,LT-5950-OUT;n:type:ShaderForge.SFN_Vector1,id:495,x:31990,y:33321,varname:node_495,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:5950,x:31990,y:33398,varname:node_5950,prsc:2,v1:1;n:type:ShaderForge.SFN_Lerp,id:8395,x:32370,y:32976,varname:node_8395,prsc:2|A-7241-RGB,B-6176-RGB,T-9381-OUT;proporder:7241-6176;pass:END;sub:END;*/

Shader "Shader Forge/PEV_30_Global_A" {
    Properties {
        _ColorA ("ColorA", Color) = (0.07843138,0.3921569,0.7843137,1)
        _ColorB ("ColorB", Color) = (0,1,0.002788067,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDBASE
            #define UNITY_PASS_FORWARDBASE
            #endif //UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform float4 _ColorA;
            uniform float4 _PlayerPosition;
            uniform float _Radius;
            uniform float4 _ColorB;
            struct VertexInput {
                float4 vertex : POSITION;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float4 posWorld : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
                float node_9381_if_leA = step(distance(_PlayerPosition.rgb,i.posWorld.rgb),_Radius);
                float node_9381_if_leB = step(_Radius,distance(_PlayerPosition.rgb,i.posWorld.rgb));
                float node_495 = 0.0;
                float3 finalColor = lerp(_ColorA.rgb,_ColorB.rgb,lerp((node_9381_if_leA*1.0)+(node_9381_if_leB*node_495),node_495,node_9381_if_leA*node_9381_if_leB));
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
