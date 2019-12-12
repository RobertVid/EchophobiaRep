using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public class Gamemanager : MonoBehaviour
{
    QuestionTotal qt;
    public Transform posIni;
    public GameObject demonio, pezfeo, canvasTxt, objtxt, btn;
    public Text _txt;

    // Start is called before the first frame update
    void Start()
    {
        canvasTxt.SetActive(false);
        objtxt.SetActive(false);
        btn.SetActive(false);
        
        /*
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
        */
    }

    // Update is called once per frame
    void Update()
    {
        
    }

    public void ReturnGame()
    {
        SceneManager.LoadScene(1);
    }
}
