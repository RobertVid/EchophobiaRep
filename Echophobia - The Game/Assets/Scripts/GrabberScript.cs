using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrabberScript : MonoBehaviour
{
    //public GameObject PressHelpText;
    public PlayerStatus playerStatus;
    public Gamemanager gmn;
    int cont = 1;
    void Update()
    {
        RaycastHit hit;
        Ray ray = GetComponent<Camera>().ViewportPointToRay(new Vector3(0.5f, 0.5f, 0));

        if (Physics.Raycast(ray, out hit))
        {
            if (hit.transform.tag == "Grabbable")
            {
                gmn.canvasTxt.SetActive(true);
                //PressHelpText.SetActive(true);
                hit.transform.gameObject.GetComponent<Renderer>().material.SetColor("_OutLineColor", Color.yellow);
                if (Input.GetButtonDown("Activate"))
                {
                    // Aqui se debe comunicar con el Player Status o algo asi para notificar que ya se agarro un objeto, se puede agarrar la informacion del script del objeto para saber que tipo de objeto se agarro.
                    // Se le manda el ID al PlayerStatus para que decida que hacer con este Item
                    playerStatus.ReceiveItem(hit.transform.GetComponent<ItemData>().itemID);
                    Destroy(hit.transform.gameObject);
                }   
            }
            else if (hit.transform.tag == "Door")
            {
                gmn.canvasTxt.SetActive(true);
                //PressOpenText.SetActive(true);
                if (Input.GetButtonDown("Activate") && cont >= 1)
                {
                    if (!hit.transform.gameObject.GetComponent<Animator>().GetBool("Open"))
                    {
                        
                        hit.transform.gameObject.GetComponent<Animator>().SetBool("Open", true);
                        cont--;
                        //hit.transform.GetComponent<DoorBehaviour>().ToggleDoor();
                        //Destroy(hit.transform.gameObject);
                    }

                }
            }
            else
            {
                //PressHelpText.SetActive(false);
                gmn.canvasTxt.SetActive(false);
            }
        }
        else
        {
            //PressHelpText.SetActive(false);
            gmn.canvasTxt.SetActive(false);
        }
    }
}
