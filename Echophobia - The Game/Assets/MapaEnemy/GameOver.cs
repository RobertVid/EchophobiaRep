using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class GameOver : MonoBehaviour
{
    private GameObject Enemy;
    private float x;
    public bool IsDead=false;
    private void Start()
    {
        Enemy = GameObject.FindGameObjectWithTag("Enemy");
    }

    private void Update()
    {
        if (IsDead) {
            TerminarGame();
        }
    }

    public void TerminarGame() {
        //x += Time.deltaTime * 10;
        //transform.rotation = Quaternion.Euler(x, 0, 0);
        Vector3 delta = Vector3.Lerp(transform.position,Enemy.transform.position, 0.01f);
        //transform.rotation = Quaternion.LookRotation(delta);
        transform.LookAt(delta);
    }

    public void Muerte(bool _muerte) {
        IsDead = _muerte;
    }
}
