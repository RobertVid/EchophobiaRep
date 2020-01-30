using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VoiceInput : MonoBehaviour
{
    public GameObject testSoundSphere;
    public float sphereSizeMultiplier = 30f, radius;

    private AudioSource audioSource;
    private AudioClip recordingClip;
    private float[] clipSampleData = new float[1024];
    private float currentUpdateTime = 0f;
    private float maxSoundSphereLifeTime = 1.0f;
    private float currentSoundSphereLifeTime = 0.0f;
    private int minFreq;
    private int maxFreq;
    private bool IsTalking = false;

    void Start()
    {
        Microphone.GetDeviceCaps(null, out minFreq, out maxFreq);

        if (minFreq == 0 && maxFreq == 0)
        {
            maxFreq = 44100;
        }
        radius = 1000;
        audioSource = GetComponent<AudioSource>();
    }

    void Update()
    {
        if (Input.GetButtonDown("PushToTalk"))
        {
            StartRecording();
            IsTalking = true;
        }
        if (Input.GetButtonUp("PushToTalk"))
        {
            StopRecording();
            IsTalking = false;


        }

        currentUpdateTime += Time.deltaTime;
        currentSoundSphereLifeTime += Time.deltaTime;
        if (currentUpdateTime > 0.1f && recordingClip != null)
        {
            currentUpdateTime = 0.0f;

            if (testSoundSphere != null)
            {
                if ((GetSoundAmplitude(recordingClip) * sphereSizeMultiplier) > testSoundSphere.transform.localScale.x || currentSoundSphereLifeTime >= maxSoundSphereLifeTime)
                {
                    testSoundSphere.transform.localScale = new Vector3(GetSoundAmplitude(recordingClip), GetSoundAmplitude(recordingClip), GetSoundAmplitude(recordingClip)) * sphereSizeMultiplier;
                    if (IsTalking)
                    {
                        radius = testSoundSphere.transform.localScale.x / 2;
                    }
                    else
                    {
                        radius = 1000;
                    }
                    
                    currentSoundSphereLifeTime = 0.0f;
                }   
            }
        }
    }

    float GetSoundAmplitude(AudioClip _clip)
    {
        _clip.GetData(clipSampleData, audioSource.timeSamples); // Read 1024 samples, which is about 80 ms on a 44khz stereo clip, beginning at the current sample position of the clip.
        float clipLoudness = 0f;
        foreach (var sample in clipSampleData)
        {
            clipLoudness += Mathf.Abs(sample);
        }
        clipLoudness /= 1024;
        return clipLoudness;
    }

    void PlayAudio()
    {
        audioSource.clip = recordingClip;
        audioSource.Play();
    }

    void StartRecording()
    {
        recordingClip = Microphone.Start(null, true, 300, maxFreq);
        StartCoroutine(WaitAndPlay(0.1f));
    }

    void StopRecording()
    {
        Microphone.End(null);
    }

    IEnumerator WaitAndPlay(float _waitTime)
    {
        yield return new WaitForSeconds(_waitTime);
        PlayAudio();
    }
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy")) {
            other.gameObject.GetComponent<AI_Enemy>().EscuchoAlPlyaer();
        }
        if(other.tag != "Enemy" && other.tag != "Doctor" && other.tag != "Player" && other.tag != "Gamemanager")
        {
            other.gameObject.GetComponent<Renderer>().material.SetFloat("_Outline", 0.003f);
        }
    }

    private void OnTriggerExit(Collider other)
    {

        if (other.tag != "Enemy" && other.tag != "Doctor" && other.tag != "Player"  && other.tag != "Gamemanager")
        {
            other.gameObject.GetComponent<Renderer>().material.SetFloat("_Outline", 0.0f);
        }
    }

    public void ChangeSensitivity(float _newSensitivity)
    {
        sphereSizeMultiplier = 10 + _newSensitivity;
    }
}
