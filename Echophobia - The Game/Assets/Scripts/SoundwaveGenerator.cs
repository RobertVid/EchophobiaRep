using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundwaveGenerator : MonoBehaviour
{
    public GameObject objectToSpawn;
    public float size, speed;

    private void OnTriggerEnter(Collider other)
    {
        if (other.transform.tag == "Floor")
        {
            GameObject obj = Instantiate(objectToSpawn, transform.position, transform.rotation);
            obj.GetComponent<SoundwaveBehavior>().Initialize(size, speed); // 10, 3 Default
        }
    }
}
