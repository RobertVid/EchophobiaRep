using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Gamemanager : MonoBehaviour
{
    QuestionTotal qt;
    public Transform posIni;
    public Gamemanager demonio, pezfeo;
    // Start is called before the first frame update
    void Start()
    {
        qt = GameObject.FindGameObjectWithTag("GameQuestionManager").GetComponent<QuestionTotal>();
        Debug.Log(qt.GetTotal());
        switch (qt.GetTotal())
        {            
            case 0:
                Instantiate(demonio, posIni);
                break;
            case 1:
                Instantiate(pezfeo, posIni);
                break;
            case 2:
                Instantiate(demonio, posIni);
                break;
            case 3:
                Instantiate(pezfeo, posIni);
                break;
            default:
                Instantiate(demonio, posIni);
                break;
        }
    }

    // Update is called once per frame
    void Update()
    {
        
    }
}
