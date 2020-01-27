using System.Collections;
using System.Collections.Generic;
using UnityEngine;

[ExecuteInEditMode]
public class PostProcesScript : MonoBehaviour
{
    public Material m_postProcessMaerial;

    public float _raduis;
    float smoothTime = 0.3f;
    float yVelocity = 1f;

    private GameObject player;

    private void Start()
    {
        player = GameObject.FindGameObjectWithTag("Player");
        
    }

    protected void OnRenderImage(RenderTexture source, RenderTexture destination)
    {
        Graphics.Blit(source, destination, m_postProcessMaerial);
    }

    private void Update()
    {
        _raduis = player.GetComponent<VoiceInput>().radius;
        Shader.SetGlobalFloat("_Position", Mathf.Lerp(0,100f, _raduis));

        Debug.Log("Este es mi radio: " + _raduis);
    }

    public float Remap(float value, float from1, float to1, float from2, float to2)
    {
        return (value - from1) / (to1 - from1) * (to2 - from2) + from2;
    }
}
