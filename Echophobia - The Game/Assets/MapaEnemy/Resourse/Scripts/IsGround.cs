using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IsGround : MonoBehaviour
{
    // Start is called before the first frame update
    public bool pieIzq=false;
    public bool pieDer = false;
    private float lastCheck =0.0f;
    public GameObject objectToSpawn;


    public GameObject rightfootprint, leftfootprint;
    public Transform righfootTransform, leftfootTransform;

    private void LateUpdate()
    {
        if ((pieIzq || pieDer) && Time.time > lastCheck + 0.1f)
        {
            if (pieIzq)
            {
                LeftFoot();
            }
            if (pieDer)
            {
                RightFoot();
            }
            Debug.Log("Piso el píe izquierdo");
            lastCheck = Time.time;  
            GameObject obj = Instantiate(objectToSpawn, transform.position, transform.rotation);
            obj.GetComponent<SoundwaveBehavior>().Initialize(10, 1);
        }

    }

    void LeftFoot()
    {
        RaycastHit hit;
        if (Physics.Raycast(leftfootTransform.position, leftfootTransform.forward, out hit))
        {
            Instantiate(leftfootprint, new Vector3(hit.point.x, hit.point.y+0.003f, hit.point.z), Quaternion.LookRotation(hit.normal, leftfootTransform.up));
        }
    }

    void RightFoot()
    {
        RaycastHit hit;
        if (Physics.Raycast(righfootTransform.position, righfootTransform.forward, out hit))
        {
            Instantiate(rightfootprint, new Vector3(hit.point.x, hit.point.y+0.003f, hit.point.z), Quaternion.LookRotation(hit.normal, righfootTransform.up));
        }
    }

}
