using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.SceneManagement;
using UnityEngine.UI;
public class Gamemanager : MonoBehaviour
{
    QuestionTotal qt;
    public GameObject demonio, pezfeo, canvasTxt, objtxt, btn;
    public Text _txt;

    // Start is called before the first frame update
    void Start()
    {
        canvasTxt.SetActive(false);
        objtxt.SetActive(false);
        btn.SetActive(false);        
        
        qt = GameObject.FindGameObjectWithTag("GameQuestionManager").GetComponent<QuestionTotal>();
        Debug.Log(qt.GetTotal());
        switch (qt.GetTotal())
        {            
            case 0:
                demonio.SetActive(true);
                break;
            case 1:
                pezfeo.SetActive(true);
                break;
            case 2:
                demonio.SetActive(true);
                break;
            case 3:
                pezfeo.SetActive(true);
                break;
            default:
                demonio.SetActive(true);
                break;
        }
        
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
