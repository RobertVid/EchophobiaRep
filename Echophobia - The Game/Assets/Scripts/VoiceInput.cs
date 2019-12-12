using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VoiceInput : MonoBehaviour
{
    public GameObject testSoundSphere;

    private AudioSource audioSource;
    private AudioClip recordingClip;
    private float[] clipSampleData = new float[1024];
    private float currentUpdateTime = 0f;
    private float maxSoundSphereLifeTime = 1.0f;
    private float currentSoundSphereLifeTime = 0.0f;

    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }

    void Update()
    {
        if (Input.GetButtonDown("PushToTalk"))
        {
            StartRecording();
        }
        if (Input.GetButtonUp("PushToTalk"))
        {
            StopRecording();
        }

        currentUpdateTime += Time.deltaTime;
        currentSoundSphereLifeTime += Time.deltaTime;
        if (currentUpdateTime > 0.1f && recordingClip != null)
        {
            currentUpdateTime = 0.0f;

            if (testSoundSphere != null)
            {
                if ((GetSoundAmplitude(recordingClip) * 20) > testSoundSphere.transform.localScale.x || currentSoundSphereLifeTime >= maxSoundSphereLifeTime)
                {
                    testSoundSphere.transform.localScale = new Vector3(GetSoundAmplitude(recordingClip), GetSoundAmplitude(recordingClip), GetSoundAmplitude(recordingClip)) * 20;
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
        recordingClip = Microphone.Start(null, true, 300, 44100);
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
    }
}
