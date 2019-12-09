using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Gamemanager : MonoBehaviour
{
    QuestionTotal qt;
    // Start is called before the first frame update
    void Start()
    {
        qt = GameObject.FindGameObjectWithTag("GameQuestionManager").GetComponent<QuestionTotal>();
        Debug.Log(qt.GetTotal());
        switch (qt.GetTotal())
        {            
            case 0:
                //instancear enemigo ??
                break;
            case 1:
                break;
            case 2:
                break;
            case 3:
                break;
            default:
                break;
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
