using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class Footprint : MonoBehaviour
{
    // Start is called before the first frame update

    public GameObject rightfootprint, leftfootprint;
    public Transform righfootTransform, leftfootTransform;

    
    void LeftFoot()
    {
        RaycastHit hit;
        if (Physics.Raycast(leftfootTransform.position, leftfootTransform.forward, out hit))
        {
            Instantiate(leftfootprint, hit.point, Quaternion.LookRotation(hit.normal, leftfootTransform.up));
        }
    }

    void RightFoot()
    {
        RaycastHit hit;
        if(Physics.Raycast(righfootTransform.position,righfootTransform.forward,out hit))
        {
            Instantiate(rightfootprint, hit.point, Quaternion.LookRotation(hit.normal, righfootTransform.up));
        }
    }
}
