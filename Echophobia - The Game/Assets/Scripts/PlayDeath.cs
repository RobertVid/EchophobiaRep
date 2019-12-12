using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayDeath : MonoBehaviour
{
    public Animator anim;
    public void StarAnim()
    {
        anim.SetBool("CanStart", true);
    }
}
