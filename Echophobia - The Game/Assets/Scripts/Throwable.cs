using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Throwable : MonoBehaviour
{
    public bool beingGrabbed = false;
    private void OnTriggerEnter(Collider collision)
    {
        Debug.Log("Collision");
        if (beingGrabbed)
        {
            Debug.Log(transform.parent.name);
            transform.parent.GetComponent<GrabberScript>().LeaveObject();
        }
    }
}
