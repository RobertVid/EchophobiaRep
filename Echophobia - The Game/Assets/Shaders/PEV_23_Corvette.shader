// Shader created with Shader Forge v1.42 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Enhanced by Antoine Guillon / Arkham Development - http://www.arkham-development.com/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.42;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34434,y:32483,varname:node_3138,prsc:2|normal-5612-RGB,custl-9211-OUT;n:type:ShaderForge.SFN_NormalVector,id:4222,x:32252,y:32668,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:6610,x:32252,y:32847,varname:node_6610,prsc:2;n:type:ShaderForge.SFN_Dot,id:9015,x:32496,y:32685,varname:node_9015,prsc:2,dt:1|A-4222-OUT,B-6610-OUT;n:type:ShaderForge.SFN_LightAttenuation,id:4087,x:32252,y:32992,varname:node_4087,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1598,x:32547,y:32862,varname:node_1598,prsc:2|A-9015-OUT,B-4087-OUT;n:type:ShaderForge.SFN_HalfVector,id:8463,x:32233,y:33166,varname:node_8463,prsc:2;n:type:ShaderForge.SFN_NormalVector,id:2595,x:32233,y:33299,prsc:2,pt:True;n:type:ShaderForge.SFN_Dot,id:3801,x:32467,y:33195,varname:node_3801,prsc:2,dt:1|A-8463-OUT,B-2595-OUT;n:type:ShaderForge.SFN_Power,id:6206,x:32643,y:33195,varname:node_6206,prsc:2|VAL-3801-OUT,EXP-5302-OUT;n:type:ShaderForge.SFN_Exp,id:5302,x:32467,y:33383,varname:node_5302,prsc:2,et:0|IN-7322-OUT;n:type:ShaderForge.SFN_Multiply,id:6797,x:32861,y:33195,varname:node_6797,prsc:2|A-6206-OUT,B-5039-RGB;n:type:ShaderForge.SFN_Tex2d,id:5039,x:32659,y:33369,ptovrint:False,ptlb:SpecularTexture,ptin:_SpecularTexture,varname:_SpecularTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:4084,x:32252,y:32345,ptovrint:False,ptlb:MainTexture,ptin:_MainTexture,varname:_MainTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Set,id:5122,x:32887,y:32353,varname:MainTexture,prsc:2|IN-3519-OUT;n:type:ShaderForge.SFN_Set,id:9879,x:32723,y:32862,varname:ShadowData,prsc:2|IN-1598-OUT;n:type:ShaderForge.SFN_Set,id:6267,x:33024,y:33195,varname:SpecularData,prsc:2|IN-6797-OUT;n:type:ShaderForge.SFN_Tex2d,id:5612,x:34133,y:32457,ptovrint:False,ptlb:NormalMapTexture,ptin:_NormalMapTexture,varname:_NormalMapTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True;n:type:ShaderForge.SFN_AmbientLight,id:2618,x:32252,y:32515,varname:node_2618,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1291,x:32482,y:32392,varname:node_1291,prsc:2|A-4084-RGB,B-2618-RGB;n:type:ShaderForge.SFN_Get,id:7006,x:32248,y:32182,varname:node_7006,prsc:2|IN-9879-OUT;n:type:ShaderForge.SFN_Get,id:6911,x:32248,y:32247,varname:node_6911,prsc:2|IN-6267-OUT;n:type:ShaderForge.SFN_Multiply,id:7663,x:32493,y:32182,varname:node_7663,prsc:2|A-7006-OUT,B-6911-OUT;n:type:ShaderForge.SFN_Add,id:3519,x:32701,y:32353,varname:node_3519,prsc:2|A-7663-OUT,B-1291-OUT;n:type:ShaderForge.SFN_Tex2d,id:3327,x:32401,y:31467,ptovrint:False,ptlb:AOTexture,ptin:_AOTexture,varname:_AOTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:3218,x:32290,y:31678,ptovrint:False,ptlb:NoiseTexture,ptin:_NoiseTexture,varname:_NoiseTexture,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Step,id:5468,x:32600,y:31688,varname:node_5468,prsc:2|A-3218-G,B-1229-OUT;n:type:ShaderForge.SFN_Slider,id:1229,x:32252,y:31900,ptovrint:False,ptlb:SliderNoise,ptin:_SliderNoise,varname:_SliderNoise,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Add,id:4812,x:32630,y:31929,varname:node_4812,prsc:2|A-9617-OUT,B-1229-OUT;n:type:ShaderForge.SFN_Step,id:8039,x:32745,y:31763,varname:node_8039,prsc:2|A-3218-G,B-4812-OUT;n:type:ShaderForge.SFN_Slider,id:9617,x:32252,y:32016,ptovrint:False,ptlb:SliderWidth,ptin:_SliderWidth,varname:_SliderWidth,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.04858931,max:0.3;n:type:ShaderForge.SFN_Color,id:2921,x:32719,y:32109,ptovrint:False,ptlb:ColorWidth,ptin:_ColorWidth,varname:_ColorWidth,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.0786757,c2:0.9811321,c3:0.8261373,c4:1;n:type:ShaderForge.SFN_Get,id:2679,x:32682,y:31420,varname:node_2679,prsc:2|IN-5122-OUT;n:type:ShaderForge.SFN_Code,id:241,x:32450,y:33713,varname:node_241,prsc:2,code:LwAvAFYAYQByAGkAYQBiAGwAZQBzACAAZABlACAAVQAsACAAVgAgAAoAZgBsAG8AYQB0ACAAXwBVACAAPQAgAF8AVQBWAC4AcgA7AAoAZgBsAG8AYQB0ACAAXwBWACAAPQAgAF8AVQBWAC4AZwA7AAoACgAvAC8ARABpAHIAZQBjAGMAaQBvAG4AIABkAGUAbAAgAEIAbAB1AHIAIAB4ACAAOAAKAAoAZgBsAG8AYQB0ADIAIABfAHIAIAA9ACAAZgBsAG8AYQB0ADIAKABfAFUAIAArACAAXwBPACwAIABfAFYAKQA7AAoAZgBsAG8AYQB0ADIAIABfAGwAIAA9ACAAZgBsAG8AYQB0ADIAKABfAFUAIAAtACAAXwBPACwAIABfAFYAKQA7AAoACgBmAGwAbwBhAHQAMgAgAF8AdQAgAD0AIABmAGwAbwBhAHQAMgAoAF8AVQAgACAAIAAgACAALABfAFYAIAArACAAXwBPACkAOwAKAGYAbABvAGEAdAAyACAAXwBkACAAPQAgAGYAbABvAGEAdAAyACgAXwBVACAAIAAgACAAIAAsAF8AVgAgAC0AIABfAE8AKQA7AAoACgBmAGwAbwBhAHQAMgAgAF8AcgB1ACAAPQAgAGYAbABvAGEAdAAyACgAXwBVACAAKwAgAF8ATwAsACAAXwBWACAAKwAgAF8ATwApADsACgBmAGwAbwBhAHQAMgAgAF8AbAB1ACAAPQAgAGYAbABvAGEAdAAyACgAXwBVACAALQAgAF8ATwAsACAAXwBWACAAKwAgAF8ATwApADsACgAKAGYAbABvAGEAdAAyACAAXwByAGQAIAA9ACAAZgBsAG8AYQB0ADIAKABfAFUAIAArACAAXwBPACwAIABfAFYAIAAtACAAXwBPACkAOwAKAGYAbABvAGEAdAAyACAAXwBsAGQAIAA9ACAAZgBsAG8AYQB0ADIAKABfAFUAIAAtACAAXwBPACwAIABfAFYAIAAtACAAXwBPACkAOwAKAAoALwAvAFMAYwBlAG4AZQAgAEMAbwBsAG8AcgAsACAARwByAGEAYgAgAFAAYQBzAHMACgBmAGwAbwBhAHQAMwAgAF8AcwB1AG0AIAA9ACAAdABlAHgAMgBEACgAXwBHAHIAYQBiAFQAZQB4AHQAdQByAGUALABfAFUAVgApADsACgBfAHMAdQBtACAAKwA9ACAAdABlAHgAMgBEACgAXwBHAHIAYQBiAFQAZQB4AHQAdQByAGUALABfAHIAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwBsACkAOwAKAF8AcwB1AG0AIAArAD0AIAB0AGUAeAAyAEQAKABfAEcAcgBhAGIAVABlAHgAdAB1AHIAZQAsAF8AdQApADsACgBfAHMAdQBtACAAKwA9ACAAdABlAHgAMgBEACgAXwBHAHIAYQBiAFQAZQB4AHQAdQByAGUALABfAGQAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwByAHUAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwBsAHUAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwByAGQAKQA7AAoAXwBzAHUAbQAgACsAPQAgAHQAZQB4ADIARAAoAF8ARwByAGEAYgBUAGUAeAB0AHUAcgBlACwAXwBsAGQAKQA7AAoACgAvAC8ARABpAHYAaQBkAGUACgAKAF8AcwB1AG0AIAA9ACAAXwBzAHUAbQAvADkAOwAKAAoAcgBlAHQAdQByAG4AIABfAHMAdQBtADsACgA=,output:2,fname:BoxBlurFunction,width:580,height:563,input:0,input:1,input:2,input_1_label:_O,input_2_label:_UV,input_3_label:_Scene|A-9991-OUT,B-652-UVOUT,C-4561-RGB;n:type:ShaderForge.SFN_ScreenPos,id:652,x:32060,y:33757,varname:node_652,prsc:2,sctp:2;n:type:ShaderForge.SFN_SceneColor,id:4561,x:32236,y:33757,cmnt:GrabPass,varname:node_4561,prsc:2|UVIN-652-UVOUT;n:type:ShaderForge.SFN_Slider,id:9991,x:32099,y:33664,ptovrint:False,ptlb:OffsetSlider,ptin:_OffsetSlider,varname:_OffsetSlider,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.03080356,max:0.1;n:type:ShaderForge.SFN_Set,id:7950,x:33104,y:33712,varname:Transparency,prsc:2|IN-241-OUT;n:type:ShaderForge.SFN_Set,id:1367,x:33169,y:31414,varname:DissolveTexture,prsc:2|IN-9108-OUT;n:type:ShaderForge.SFN_Get,id:9987,x:33080,y:32028,varname:node_9987,prsc:2|IN-7950-OUT;n:type:ShaderForge.SFN_Get,id:9211,x:33897,y:32709,varname:node_9211,prsc:2|IN-1367-OUT;n:type:ShaderForge.SFN_Lerp,id:6813,x:32990,y:31559,varname:node_6813,prsc:2|A-2515-OUT,B-4535-OUT,T-8039-OUT;n:type:ShaderForge.SFN_Lerp,id:9108,x:32990,y:31414,varname:node_9108,prsc:2|A-6813-OUT,B-2498-OUT,T-5468-OUT;n:type:ShaderForge.SFN_SceneColor,id:9265,x:32355,y:35056,cmnt:GrabPass,varname:node_9265,prsc:2|UVIN-4465-OUT;n:type:ShaderForge.SFN_Slider,id:3702,x:32475,y:34523,ptovrint:False,ptlb:RefractionIntensity,ptin:_RefractionIntensity,varname:_RefractionIntensity,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.1076124,max:0.2;n:type:ShaderForge.SFN_Tex2d,id:9391,x:32497,y:34622,ptovrint:False,ptlb:RefractionNormal,ptin:_RefractionNormal,varname:_RefractionNormal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:3,isnm:True|UVIN-1923-OUT;n:type:ShaderForge.SFN_Append,id:1950,x:32733,y:34639,varname:node_1950,prsc:2|A-9391-R,B-9391-G;n:type:ShaderForge.SFN_Multiply,id:2072,x:33134,y:34601,varname:node_2072,prsc:2|A-3702-OUT,B-1751-OUT;n:type:ShaderForge.SFN_Set,id:7086,x:33350,y:34637,varname:NormalRefraction,prsc:2|IN-2072-OUT;n:type:ShaderForge.SFN_ScreenPos,id:657,x:31944,y:35027,varname:node_657,prsc:2,sctp:2;n:type:ShaderForge.SFN_Add,id:4465,x:32186,y:35056,varname:node_4465,prsc:2|A-657-UVOUT,B-3385-OUT;n:type:ShaderForge.SFN_Get,id:3385,x:31944,y:35186,varname:node_3385,prsc:2|IN-7086-OUT;n:type:ShaderForge.SFN_NormalVector,id:1178,x:32503,y:34816,prsc:2,pt:True;n:type:ShaderForge.SFN_ComponentMask,id:9809,x:32733,y:34816,varname:node_9809,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-1178-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:1751,x:32941,y:34681,ptovrint:False,ptlb:UseVerexNormal,ptin:_UseVerexNormal,varname:_UseVerexNormal,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-1950-OUT,B-9809-OUT;n:type:ShaderForge.SFN_TexCoord,id:8611,x:31988,y:34526,varname:node_8611,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ScreenPos,id:8809,x:31988,y:34681,varname:node_8809,prsc:2,sctp:1;n:type:ShaderForge.SFN_SwitchProperty,id:1923,x:32203,y:34628,ptovrint:False,ptlb:UseSceenUVs,ptin:_UseSceenUVs,varname:_UseSceenUVs,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8611-UVOUT,B-8809-UVOUT;n:type:ShaderForge.SFN_Set,id:1345,x:32656,y:35059,varname:Refracion,prsc:2|IN-9265-RGB;n:type:ShaderForge.SFN_SwitchProperty,id:1202,x:33315,y:31961,ptovrint:False,ptlb:BlurOrRefraction,ptin:_BlurOrRefraction,varname:_BlurOrRefraction,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9987-OUT,B-8729-OUT;n:type:ShaderForge.SFN_Get,id:8729,x:33080,y:32092,varname:node_8729,prsc:2|IN-1345-OUT;n:type:ShaderForge.SFN_Vector1,id:7322,x:32233,y:33469,varname:node_7322,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Tex2d,id:2329,x:32887,y:32213,ptovrint:False,ptlb:TextureTransPattern,ptin:_TextureTransPattern,varname:_TextureTransPattern,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:4535,x:32942,y:31866,varname:node_4535,prsc:2|A-2921-RGB,B-2329-RGB;n:type:ShaderForge.SFN_NormalVector,id:3633,x:33726,y:32908,prsc:2,pt:False;n:type:ShaderForge.SFN_Fresnel,id:7798,x:33918,y:32908,varname:node_7798,prsc:2|NRM-3633-OUT,EXP-2895-OUT;n:type:ShaderForge.SFN_Slider,id:2895,x:33708,y:33090,ptovrint:False,ptlb:FresnelExponent,ptin:_FresnelExponent,varname:_FresnelExponent,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:4.818413,max:5;n:type:ShaderForge.SFN_Multiply,id:2761,x:34213,y:32888,varname:node_2761,prsc:2|A-7798-OUT,B-514-RGB;n:type:ShaderForge.SFN_Color,id:514,x:34093,y:33048,ptovrint:False,ptlb:FresnelColor,ptin:_FresnelColor,varname:_FresnelColor,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.9433962,c2:0.9424007,c3:0.2180491,c4:1;n:type:ShaderForge.SFN_Set,id:7730,x:34393,y:32888,varname:RimLight,prsc:2|IN-2761-OUT;n:type:ShaderForge.SFN_Get,id:9010,x:33415,y:31792,varname:node_9010,prsc:2|IN-7730-OUT;n:type:ShaderForge.SFN_Add,id:2515,x:33164,y:31681,varname:node_2515,prsc:2|A-1202-OUT,B-7519-OUT;n:type:ShaderForge.SFN_SwitchProperty,id:7519,x:33586,y:31874,ptovrint:False,ptlb:RinLightToogle,ptin:_RinLightToogle,varname:_RinLightToogle,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:True|A-9010-OUT,B-8510-OUT;n:type:ShaderForge.SFN_Vector1,id:8510,x:33498,y:32034,varname:node_8510,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:2498,x:32738,y:31276,varname:node_2498,prsc:2|A-3327-RGB,B-591-OUT,C-2679-OUT;n:type:ShaderForge.SFN_Slider,id:591,x:32323,y:31246,ptovrint:False,ptlb:AOSlider,ptin:_AOSlider,varname:_AOSlider,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.980085,max:5;proporder:5612-5039-4084-3218-1229-9617-2921-9991-1202-3702-9391-1751-1923-2329-2895-514-7519-3327-591;pass:END;sub:END;*/

Shader "Shader Forge/PEV_23_Corvette" {
    Properties {
        _NormalMapTexture ("NormalMapTexture", 2D) = "bump" {}
        _SpecularTexture ("SpecularTexture", 2D) = "white" {}
        _MainTexture ("MainTexture", 2D) = "white" {}
        _NoiseTexture ("NoiseTexture", 2D) = "white" {}
        _SliderNoise ("SliderNoise", Range(0, 1)) = 1
        _SliderWidth ("SliderWidth", Range(0, 0.3)) = 0.04858931
        [HDR]_ColorWidth ("ColorWidth", Color) = (0.0786757,0.9811321,0.8261373,1)
        _OffsetSlider ("OffsetSlider", Range(0, 0.1)) = 0.03080356
        [MaterialToggle] _BlurOrRefraction ("BlurOrRefraction", Float ) = 0
        _RefractionIntensity ("RefractionIntensity", Range(0, 0.2)) = 0.1076124
        _RefractionNormal ("RefractionNormal", 2D) = "bump" {}
        [MaterialToggle] _UseVerexNormal ("UseVerexNormal", Float ) = 0
        [MaterialToggle] _UseSceenUVs ("UseSceenUVs", Float ) = 0
        _TextureTransPattern ("TextureTransPattern", 2D) = "white" {}
        _FresnelExponent ("FresnelExponent", Range(0, 5)) = 4.818413
        [HDR]_FresnelColor ("FresnelColor", Color) = (0.9433962,0.9424007,0.2180491,1)
        [MaterialToggle] _RinLightToogle ("RinLightToogle", Float ) = 0
        _AOTexture ("AOTexture", 2D) = "white" {}
        _AOSlider ("AOSlider", Range(0, 5)) = 1.980085
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        GrabPass{ }
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
            #include "Lighting.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _SpecularTexture; uniform float4 _SpecularTexture_ST;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _NormalMapTexture; uniform float4 _NormalMapTexture_ST;
            uniform sampler2D _AOTexture; uniform float4 _AOTexture_ST;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _SliderNoise;
            uniform float _SliderWidth;
            uniform float4 _ColorWidth;
            float3 BoxBlurFunction( float _O , float2 _UV , float3 _Scene ){
            //Variables de U, V 
            float _U = _UV.r;
            float _V = _UV.g;
            
            //Direccion del Blur x 8
            
            float2 _r = float2(_U + _O, _V);
            float2 _l = float2(_U - _O, _V);
            
            float2 _u = float2(_U     ,_V + _O);
            float2 _d = float2(_U     ,_V - _O);
            
            float2 _ru = float2(_U + _O, _V + _O);
            float2 _lu = float2(_U - _O, _V + _O);
            
            float2 _rd = float2(_U + _O, _V - _O);
            float2 _ld = float2(_U - _O, _V - _O);
            
            //Scene Color, Grab Pass
            float3 _sum = tex2D(_GrabTexture,_UV);
            _sum += tex2D(_GrabTexture,_r);
            _sum += tex2D(_GrabTexture,_l);
            _sum += tex2D(_GrabTexture,_u);
            _sum += tex2D(_GrabTexture,_d);
            _sum += tex2D(_GrabTexture,_ru);
            _sum += tex2D(_GrabTexture,_lu);
            _sum += tex2D(_GrabTexture,_rd);
            _sum += tex2D(_GrabTexture,_ld);
            
            //Divide
            
            _sum = _sum/9;
            
            return _sum;
            
            }
            
            uniform float _OffsetSlider;
            uniform float _RefractionIntensity;
            uniform sampler2D _RefractionNormal; uniform float4 _RefractionNormal_ST;
            uniform fixed _UseVerexNormal;
            uniform fixed _UseSceenUVs;
            uniform fixed _BlurOrRefraction;
            uniform sampler2D _TextureTransPattern; uniform float4 _TextureTransPattern_ST;
            uniform float _FresnelExponent;
            uniform float4 _FresnelColor;
            uniform fixed _RinLightToogle;
            uniform float _AOSlider;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMapTexture_var = UnpackNormal(tex2D(_NormalMapTexture,TRANSFORM_TEX(i.uv0, _NormalMapTexture)));
                float3 normalLocal = _NormalMapTexture_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 Transparency = BoxBlurFunction( _OffsetSlider , sceneUVs.rg , tex2D( _GrabTexture, sceneUVs.rg).rgb );
                float2 _UseSceenUVs_var = lerp( i.uv0, float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _UseSceenUVs );
                float3 _RefractionNormal_var = UnpackNormal(tex2D(_RefractionNormal,TRANSFORM_TEX(_UseSceenUVs_var, _RefractionNormal)));
                float2 NormalRefraction = (_RefractionIntensity*lerp( float2(_RefractionNormal_var.r,_RefractionNormal_var.g), normalDirection.rg, _UseVerexNormal ));
                float3 Refracion = tex2D( _GrabTexture, (sceneUVs.rg+NormalRefraction)).rgb;
                float3 RimLight = (pow(1.0-max(0,dot(i.normalDir, viewDirection)),_FresnelExponent)*_FresnelColor.rgb);
                float4 _TextureTransPattern_var = tex2D(_TextureTransPattern,TRANSFORM_TEX(i.uv0, _TextureTransPattern));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(i.uv0, _NoiseTexture));
                float4 _AOTexture_var = tex2D(_AOTexture,TRANSFORM_TEX(i.uv0, _AOTexture));
                float ShadowData = (max(0,dot(normalDirection,lightDirection))*attenuation);
                float4 _SpecularTexture_var = tex2D(_SpecularTexture,TRANSFORM_TEX(i.uv0, _SpecularTexture));
                float3 SpecularData = (pow(max(0,dot(halfDirection,normalDirection)),exp(0.5))*_SpecularTexture_var.rgb);
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 MainTexture = ((ShadowData*SpecularData)+(_MainTexture_var.rgb*UNITY_LIGHTMODEL_AMBIENT.rgb));
                float3 DissolveTexture = lerp(lerp((lerp( Transparency, Refracion, _BlurOrRefraction )+lerp( RimLight, 0.0, _RinLightToogle )),(_ColorWidth.rgb*_TextureTransPattern_var.rgb),step(_NoiseTexture_var.g,(_SliderWidth+_SliderNoise))),(_AOTexture_var.rgb*_AOSlider*MainTexture),step(_NoiseTexture_var.g,_SliderNoise));
                float3 finalColor = DissolveTexture;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #ifndef UNITY_PASS_FORWARDADD
            #define UNITY_PASS_FORWARDADD
            #endif //UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #include "Lighting.cginc"
            #pragma multi_compile_fwdadd
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x xboxone ps4 psp2 n3ds wiiu switch vulkan 
            #pragma target 3.0
            uniform sampler2D _GrabTexture;
            uniform sampler2D _SpecularTexture; uniform float4 _SpecularTexture_ST;
            uniform sampler2D _MainTexture; uniform float4 _MainTexture_ST;
            uniform sampler2D _NormalMapTexture; uniform float4 _NormalMapTexture_ST;
            uniform sampler2D _AOTexture; uniform float4 _AOTexture_ST;
            uniform sampler2D _NoiseTexture; uniform float4 _NoiseTexture_ST;
            uniform float _SliderNoise;
            uniform float _SliderWidth;
            uniform float4 _ColorWidth;
            float3 BoxBlurFunction( float _O , float2 _UV , float3 _Scene ){
            //Variables de U, V 
            float _U = _UV.r;
            float _V = _UV.g;
            
            //Direccion del Blur x 8
            
            float2 _r = float2(_U + _O, _V);
            float2 _l = float2(_U - _O, _V);
            
            float2 _u = float2(_U     ,_V + _O);
            float2 _d = float2(_U     ,_V - _O);
            
            float2 _ru = float2(_U + _O, _V + _O);
            float2 _lu = float2(_U - _O, _V + _O);
            
            float2 _rd = float2(_U + _O, _V - _O);
            float2 _ld = float2(_U - _O, _V - _O);
            
            //Scene Color, Grab Pass
            float3 _sum = tex2D(_GrabTexture,_UV);
            _sum += tex2D(_GrabTexture,_r);
            _sum += tex2D(_GrabTexture,_l);
            _sum += tex2D(_GrabTexture,_u);
            _sum += tex2D(_GrabTexture,_d);
            _sum += tex2D(_GrabTexture,_ru);
            _sum += tex2D(_GrabTexture,_lu);
            _sum += tex2D(_GrabTexture,_rd);
            _sum += tex2D(_GrabTexture,_ld);
            
            //Divide
            
            _sum = _sum/9;
            
            return _sum;
            
            }
            
            uniform float _OffsetSlider;
            uniform float _RefractionIntensity;
            uniform sampler2D _RefractionNormal; uniform float4 _RefractionNormal_ST;
            uniform fixed _UseVerexNormal;
            uniform fixed _UseSceenUVs;
            uniform fixed _BlurOrRefraction;
            uniform sampler2D _TextureTransPattern; uniform float4 _TextureTransPattern_ST;
            uniform float _FresnelExponent;
            uniform float4 _FresnelColor;
            uniform fixed _RinLightToogle;
            uniform float _AOSlider;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 bitangentDir : TEXCOORD4;
                float4 projPos : TEXCOORD5;
                UNITY_LIGHTING_COORDS(6,7)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.bitangentDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                o.projPos = ComputeScreenPos (o.pos);
                COMPUTE_EYEDEPTH(o.projPos.z);
                UNITY_TRANSFER_LIGHTING(o, float2(0,0));
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.bitangentDir, i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 _NormalMapTexture_var = UnpackNormal(tex2D(_NormalMapTexture,TRANSFORM_TEX(i.uv0, _NormalMapTexture)));
                float3 normalLocal = _NormalMapTexture_var.rgb;
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                float2 sceneUVs = (i.projPos.xy / i.projPos.w);
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld.xyz);
                float3 Transparency = BoxBlurFunction( _OffsetSlider , sceneUVs.rg , tex2D( _GrabTexture, sceneUVs.rg).rgb );
                float2 _UseSceenUVs_var = lerp( i.uv0, float2((sceneUVs.x * 2 - 1)*(_ScreenParams.r/_ScreenParams.g), sceneUVs.y * 2 - 1).rg, _UseSceenUVs );
                float3 _RefractionNormal_var = UnpackNormal(tex2D(_RefractionNormal,TRANSFORM_TEX(_UseSceenUVs_var, _RefractionNormal)));
                float2 NormalRefraction = (_RefractionIntensity*lerp( float2(_RefractionNormal_var.r,_RefractionNormal_var.g), normalDirection.rg, _UseVerexNormal ));
                float3 Refracion = tex2D( _GrabTexture, (sceneUVs.rg+NormalRefraction)).rgb;
                float3 RimLight = (pow(1.0-max(0,dot(i.normalDir, viewDirection)),_FresnelExponent)*_FresnelColor.rgb);
                float4 _TextureTransPattern_var = tex2D(_TextureTransPattern,TRANSFORM_TEX(i.uv0, _TextureTransPattern));
                float4 _NoiseTexture_var = tex2D(_NoiseTexture,TRANSFORM_TEX(i.uv0, _NoiseTexture));
                float4 _AOTexture_var = tex2D(_AOTexture,TRANSFORM_TEX(i.uv0, _AOTexture));
                float ShadowData = (max(0,dot(normalDirection,lightDirection))*attenuation);
                float4 _SpecularTexture_var = tex2D(_SpecularTexture,TRANSFORM_TEX(i.uv0, _SpecularTexture));
                float3 SpecularData = (pow(max(0,dot(halfDirection,normalDirection)),exp(0.5))*_SpecularTexture_var.rgb);
                float4 _MainTexture_var = tex2D(_MainTexture,TRANSFORM_TEX(i.uv0, _MainTexture));
                float3 MainTexture = ((ShadowData*SpecularData)+(_MainTexture_var.rgb*UNITY_LIGHTMODEL_AMBIENT.rgb));
                float3 DissolveTexture = lerp(lerp((lerp( Transparency, Refracion, _BlurOrRefraction )+lerp( RimLight, 0.0, _RinLightToogle )),(_ColorWidth.rgb*_TextureTransPattern_var.rgb),step(_NoiseTexture_var.g,(_SliderWidth+_SliderNoise))),(_AOTexture_var.rgb*_AOSlider*MainTexture),step(_NoiseTexture_var.g,_SliderNoise));
                float3 finalColor = DissolveTexture;
                return fixed4(finalColor * 1,0);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
