using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class ExternalSound : MonoBehaviour
{
    private void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Enemy"))
        {
            other.gameObject.GetComponent<AI_Enemy>().EscuchoAlPlyaer();
        }
        if (other.tag != "Enemy" && other.tag != "Doctor" && other.tag != "Player" && other.tag != "Gamemanager")
        {
            other.gameObject.GetComponent<Renderer>().material.SetFloat("_Outline", 0.003f);
        }
    }

    private void OnTriggerExit(Collider other)
    {

        if (other.tag != "Enemy" && other.tag != "Doctor" && other.tag != "Player" && other.tag != "Gamemanager")
        {
            other.gameObject.GetComponent<Renderer>().material.SetFloat("_Outline", 0.0f);
        }
    }
}
