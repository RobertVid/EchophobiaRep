using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class AI_Enemy : MonoBehaviour
{
    public NavMeshAgent agent;
    public GameObject target;
    public Animator Anim;
    public void Start()
    {
        agent.SetDestination(target.transform.position);
    }

    public void Update()
    {
        Anim.SetFloat("Velocity", agent.velocity.normalized.magnitude);
    }
    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            agent.isStopped = true;
            StartCoroutine(AnimAttack());
        }
    
    }

    IEnumerator AnimAttack() {
        Anim.SetTrigger("UsarAtaque");
        Anim.SetFloat("Ataque", 1);
        Debug.Log(Anim.GetCurrentAnimatorStateInfo(Anim.GetLayerIndex("Base Layer")).length);
        yield return new WaitForSeconds(2.7f);
        Debug.Log(Anim.GetCurrentAnimatorStateInfo(Anim.GetLayerIndex("Base Layer")).length);
        agent.isStopped = false; ;
        
    }
}
