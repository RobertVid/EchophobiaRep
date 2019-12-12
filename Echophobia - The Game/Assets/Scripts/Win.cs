using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;


public class Win : MonoBehaviour
{
    // Start is called before the first frame update
    public GameObject objtxt, btn;
    public Text _txt;
    public FirstPersonController fpC;

    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            objtxt.SetActive(true);
            _txt.text = "You Win";
            btn.SetActive(true);
            Cursor.visible = true;
            Cursor.lockState = CursorLockMode.None;
            Time.timeScale = 0;
            fpC.enabled = false;
        }
    }
}
