using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Throwable : MonoBehaviour
{
    public bool beingGrabbed = false;

    private ItemSoundwaveGenerator swGen;
    private void Start()
    {
        swGen = GetComponent<ItemSoundwaveGenerator>();
    }

    private void OnTriggerEnter(Collider collision)
    {
        //Debug.Log("Collision");
        if (beingGrabbed)
        {
            Debug.Log(transform.parent.name);
            transform.parent.GetComponent<GrabberScript>().LeaveObject();
        }
    }

    private void OnCollisionEnter(Collision collision)
    {
        if (!beingGrabbed)
        {
            Debug.Log(collision.relativeVelocity.magnitude);
            if (collision.relativeVelocity.magnitude > 1)
            {
                swGen.GenerateWave();
            }
        }
    }
}
