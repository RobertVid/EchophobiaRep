using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Throwable : MonoBehaviour
{
    public bool beingGrabbed = false;
    private void OnCollisionEnter(Collision collision)
    {
        if (beingGrabbed)
        {
            transform.parent.GetComponent<GrabberScript>().LeaveObject();
        }
    }
}
