using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GrabberScript : MonoBehaviour
{
    //public GameObject PressHelpText;
    public PlayerStatus playerStatus;
    public GameObject grabbedObject;
    public Gamemanager gmn;
    public float throwForce = 1.0f;

    private bool carryingObject;
    private int cont = 1;
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
                    cont = 2;
                    // Aqui se debe comunicar con el Player Status o algo asi para notificar que ya se agarro un objeto, se puede agarrar la informacion del script del objeto para saber que tipo de objeto se agarro.
                    // Se le manda el ID al PlayerStatus para que decida que hacer con este Item
                    playerStatus.ReceiveItem(hit.transform.GetComponent<ItemData>().itemID);
                    Destroy(hit.transform.gameObject);
                }   
            }
            else if (hit.transform.GetComponent<Throwable>())
            {
                gmn.canvasTxt.SetActive(true);
                if (Input.GetButtonDown("Activate"))
                {
                    if (!carryingObject)
                    {
                        grabbedObject = (hit.transform.gameObject);
                        grabbedObject.GetComponent<Throwable>().beingGrabbed = true;
                        grabbedObject.GetComponent<Rigidbody>().isKinematic = true;
                        grabbedObject.transform.parent = transform;
                        carryingObject = true;
                    }
                    else
                    {
                        grabbedObject.GetComponent<Throwable>().beingGrabbed = false;
                        grabbedObject.GetComponent<Rigidbody>().isKinematic = false;     
                        grabbedObject.transform.parent = null;
                        carryingObject = false;
                        grabbedObject = null;
                    }
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

        if (Input.GetButtonDown("Activate"))
        {
            if (carryingObject)
            {
                grabbedObject.GetComponent<Throwable>().beingGrabbed = false;
                grabbedObject.GetComponent<Rigidbody>().isKinematic = false;
                grabbedObject.transform.parent = null;
                carryingObject = false;
                grabbedObject = null;
            }
        }

        /*if (Input.GetButtonDown("Fire") && carryingObject)
        {
            grabbedObject.GetComponent<Throwable>().beingGrabbed = false;
            grabbedObject.GetComponent<Rigidbody>().isKinematic = false;
            grabbedObject.transform.parent = null;
            carryingObject = false;
            grabbedObject.GetComponent<Rigidbody>().AddForce(Camera.main.transform.forward * throwForce);
            grabbedObject = null;
        }*/
    }

    public void LeaveObject()
    {
        if (carryingObject)
        {
            grabbedObject.GetComponent<Rigidbody>().isKinematic = false;
            grabbedObject.transform.parent = null;
            carryingObject = false;
            grabbedObject = null;
        }
    }
}
