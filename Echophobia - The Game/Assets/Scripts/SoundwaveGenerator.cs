using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundwaveGenerator : MonoBehaviour
{
    public GameObject objectToSpawn;

    private void OnTriggerEnter(Collider other)
    {
        if (other.transform.tag == "Floor")
        {
            GameObject obj = Instantiate(objectToSpawn, transform.position, transform.rotation);
            obj.GetComponent<SoundwaveBehavior>().Initialize(10, 3); // Size, Speed
        }
    }
}
