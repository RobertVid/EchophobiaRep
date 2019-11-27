using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class IsGround : MonoBehaviour
{
    // Start is called before the first frame update
    public bool pieIzq=false;
    public bool pieDer = false;
    private float lastCheck =0.0f;
    private void LateUpdate()
    {
        if (pieIzq && Time.time>lastCheck+0.1f)
        {
            Debug.Log("Piso el píe izquierdo");
            lastCheck = Time.time;
        }
        if (pieDer && Time.time > lastCheck + 0.1f)
        {
            Debug.Log("Piso el píe Derecho");
            lastCheck = Time.time;
        }
    }
   
}
