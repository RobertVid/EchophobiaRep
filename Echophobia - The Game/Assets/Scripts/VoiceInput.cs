using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class VoiceInput : MonoBehaviour
{
    AudioSource audioSource;
    AudioClip recordingClip;
    // Start is called before the first frame update
    void Start()
    {
        audioSource = GetComponent<AudioSource>();
    }

    // Update is called once per frame
    void Update()
    {
        if (Input.GetButtonDown("PushToTalk"))
        {
            StartRecording();
        }
        if (Input.GetButtonUp("PushToTalk"))
        {
            StopRecording();
            audioSource.clip = recordingClip;
            audioSource.Play();
        }
    }

    void StartRecording()
    {
        recordingClip = Microphone.Start(null, true, 300, 48000);
        Debug.Log("RECORDING VOICE...");
    }

    void StopRecording()
    {
        Microphone.End(null);
        Debug.Log("NO LONGER RECORDING VOICE.");
    }
}
