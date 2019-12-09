using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class QuestionScript : MonoBehaviour
{
    public QuestionTotal qt;
    public GameObject title, q1, q2, q3,button, oImage;
    public Toggle q11, q12, q21, q22, q31, q32;
    public Animator _anim;
    
    public void QuestionAwake()
    {
        title.SetActive(true);
        q1.SetActive(true);
        q2.SetActive(true);
        q3.SetActive(true);
        button.SetActive(true);
    }

    public void Q1_1()
    {
        if(q11.isOn && !q12.isOn)
            qt.SetTotal(1);
    }
    public void Q1_2()
    {
        if (!q11.isOn && q12.isOn)
            qt.SetTotal(-1);
    }
    public void Q2_1()
    {
        if (q21.isOn && !q22.isOn)
            qt.SetTotal(1);
    }
    public void Q2_2()
    {
        if (!q21.isOn && q22.isOn)
            qt.SetTotal(-1);
    }
    public void Q3_1()
    {
        if (q31.isOn && !q32.isOn)
            qt.SetTotal(1);
    }
    public void Q3_2()
    {
        if (!q31.isOn && q32.isOn)
            qt.SetTotal(-1);
    }

    public void GoOnGame()
    {
        oImage.SetActive(true);
        _anim.SetBool("Go", true);
    }
}
