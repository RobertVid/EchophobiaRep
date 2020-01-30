using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ItemSoundwaveGenerator : MonoBehaviour
{
    public GameObject objectToSpawn;
    public float size, speed;

    public void GenerateWave()
    {
        GameObject obj = Instantiate(objectToSpawn, transform.position, transform.rotation);
        obj.GetComponent<SoundwaveBehavior>().Initialize(size, speed); // 10, 3 Default
    }
}
