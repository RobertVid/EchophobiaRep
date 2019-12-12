using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Win : MonoBehaviour
{
    // Start is called before the first frame update
    public GameObject objtxt, btn;
    public Text _txt;
    
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            objtxt.SetActive(true);
            _txt.text = "You Win";
            btn.SetActive(true);
            Time.timeScale = 0;
        }
    }
}
