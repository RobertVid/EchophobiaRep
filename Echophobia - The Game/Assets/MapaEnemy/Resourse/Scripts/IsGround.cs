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
    private void LateUpdate()
    {
        if ((pieIzq|| pieDer) && Time.time>lastCheck+0.1f)
        {
            Debug.Log("Piso el píe izquierdo");
            lastCheck = Time.time;
            //GameObject obj = Instantiate(objectToSpawn, transform.position, transform.rotation);
            //obj.GetComponent<SoundwaveBehavior>().Initialize(10, 1);
        }
        /*
        if (pieDer && Time.time > lastCheck + 0.1f)
        {
            Debug.Log("Piso el píe Derecho");
            lastCheck = Time.time;
            GameObject obj = Instantiate(objectToSpawn, transform.position, transform.rotation);
            obj.GetComponent<SoundwaveBehavior>().Initialize(10, 1);
        }
        */
    }
   
}
