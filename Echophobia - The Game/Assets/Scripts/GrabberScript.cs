using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrabberScript : MonoBehaviour
{
    //public GameObject PressHelpText;

    void Update()
    {
        RaycastHit hit;
        Ray ray = GetComponent<Camera>().ScreenPointToRay(new Vector3(0, 0, 0));

        if (Physics.Raycast(ray, out hit))
        {
            if (hit.transform.tag == "Grabbable")
            {
                //PressHelpText.SetActive(true);
                if (Input.GetButtonDown("Activate"))
                {
                    // Aqui se debe comunicar con el Player Status o algo asi para notificar que ya se agarro un objeto, se puede agarrar la informacion del script del objeto para saber que tipo de objeto se agarro.
                    //hit.transform.GetComponent<GrabbableObject>();
                    Destroy(hit.transform.gameObject);
                }   
            }
            else if (hit.transform.tag == "Door")
            {
                //PressOpenText.SetActive(true);
                if (Input.GetButtonDown("Activate"))
                {
                    //hit.transform.GetComponent<GrabbableObject>().ToggleDoor();
                    Destroy(hit.transform.gameObject);
                }
            }
            else
            {
                //PressHelpText.SetActive(false);
            }
        }
        else
        {
            //PressHelpText.SetActive(false);
        }
    }
}
