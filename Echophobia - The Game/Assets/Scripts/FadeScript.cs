using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class FadeScript : MonoBehaviour
{
    public Animator _anim;
    public GameObject canvas, title,q1,q2,q3, button,oImage;
    public Toggle q1_1, q1_2, q2_1, q2_2, q3_1, q3_2; 

    private void Start()
    {        
        title.SetActive(false);
        q1.SetActive(false);
        q2.SetActive(false);
        q3.SetActive(false);
        button.SetActive(false);
        oImage.SetActive(false);
        canvas.SetActive(false);
    }

    public void GoAnim()
    {
        canvas.SetActive(true);
        _anim.SetBool("Go", true);
    }

    

  
    

}
