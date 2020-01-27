using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityStandardAssets.Characters.FirstPerson;
public class GameOver : MonoBehaviour
{
    private GameObject Enemy;
    private FirstPersonController fps;
    public bool IsDead=false;
    private void Start()
    {
        Enemy = GameObject.FindGameObjectWithTag("Enemy");
        fps = GetComponent<FirstPersonController>();
    }

    private void Update()
    {
        if (IsDead) {
            TerminarGame();
            fps.enabled = false;
        }
        TerminarGame();
    }

    public void TerminarGame() {
        Enemy = GameObject.FindGameObjectWithTag("Enemy");
        Vector3 rellposition = Enemy.transform.position - transform.position;
        rellposition += (new Vector3(0,1,0));
        Quaternion Rotation = Quaternion.LookRotation(rellposition);
        transform.rotation = Quaternion.RotateTowards(transform.rotation, Rotation, 1f);
    }

    public void Muerte(bool _muerte) {
        IsDead = _muerte;
    }
}
