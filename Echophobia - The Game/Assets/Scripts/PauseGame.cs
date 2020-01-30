using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;

public class PauseGame : MonoBehaviour
{
    public Animator animCanvas;
    public Slider sensitivitySlider;
    public float voiceSensitivity;

    private bool pause = false;
    private VoiceInput voiceInput;
    private FirstPersonController fpsController;
    
    void Start()
    {
        voiceInput = GetComponent<VoiceInput>();
        fpsController = GetComponent<FirstPersonController>();
    }

    void Update()
    {
        if (Input.GetKeyDown(KeyCode.P))
        { 
            pause = !pause;
            fpsController.enabled = !pause;
            switch (pause)
            {
                case true:
                    Cursor.lockState = CursorLockMode.None;
                    break;

                case false:
                    Cursor.lockState = CursorLockMode.Locked;
                    break;
            }
            Cursor.visible = !Cursor.visible;
            animCanvas.SetBool("IsInPause", pause);
        }
    }

    public void ChangeSensitivity()
    {
        voiceSensitivity = sensitivitySlider.value;
        voiceInput.sphereSizeMultiplier = voiceSensitivity + 10;
    }

    public void ResumeGame()
    {
        pause = !pause;
        fpsController.enabled = !pause;
        switch (pause)
        {
            case true:
                Cursor.lockState = CursorLockMode.None;
                break;

            case false:
                Cursor.lockState = CursorLockMode.Confined;
                break;
        }
        Cursor.visible = !Cursor.visible;
        animCanvas.SetBool("IsInPause", pause);
    }

    public void ExitToMainMenu()
    {
        Cursor.lockState = CursorLockMode.Confined;
        SceneManager.LoadScene("Menu");
    }

    public void ExitToDesktop()
    {
        Application.Quit();
    }
}
