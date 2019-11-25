using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ObjectInteract : MonoBehaviour
{
    // Start is called before the first frame update
    void Start()
    {
        
    }

    // Update is called once per frame
    void Update()
    {
        
    }


    private void OnTriggerEnter(Collider other)
    {
       // Debug.Log(other.name);
        other.gameObject.GetComponent<Renderer>().material.SetFloat("_Outline", 0.003f);
    }

    private void OnTriggerExit(Collider other)
    {
        other.gameObject.GetComponent<Renderer>().material.SetFloat("_Outline",0);
        
    }
}
