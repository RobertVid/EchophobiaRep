using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
public class AI_Enemy : MonoBehaviour
{
    public NavMeshAgent agent;
    private GameObject target;
    public Animator Anim;
    private Vector3 point;
    float disolve = 0;
    private bool listenPlayer = false;
    private bool seePlayer = true;

    public void Start()
    {
        target = GameObject.FindGameObjectWithTag("Player");
        CambiarPunto();
    }

    public void Update()
    {
        Anim.SetFloat("Velocity", agent.velocity.normalized.magnitude);

        float distance = Vector3.Distance(transform.position, point);

        if (distance < 0.5f) {
            CambiarPunto();
        }

        RaycastHit hit;
      
        if (Physics.Raycast(transform.position, transform.TransformDirection(Vector3.forward), out hit, 100))
        {
            Debug.DrawRay(transform.position, transform.TransformDirection(Vector3.forward) * hit.distance, Color.yellow);
            if (hit.transform.tag == "Player")
            {
                agent.SetDestination(target.transform.position);
                transform.LookAt(target.transform.position);
                //Activar Shader
                seePlayer = true;
            }
            else {
                
                agent.SetDestination(point);
                seePlayer = false;
            }
        }
        float fovAngle = 10.0f;
        Vector3 leftRayRotation = Quaternion.AngleAxis(-fovAngle, transform.up) * transform.forward;
        Vector3 rightRayRotation = Quaternion.AngleAxis(fovAngle, transform.up) * transform.forward;
        RaycastHit hit2 ;
        if (Physics.Raycast(transform.position, leftRayRotation, out hit2, 100))
        {
            Debug.DrawRay(transform.position, leftRayRotation * hit2.distance, Color.yellow);
            if (hit2.transform.tag == "Player")
            {
                agent.SetDestination(target.transform.position);
                transform.LookAt(target.transform.position);
                //Activar Shader
                seePlayer = true;
            }
        }

        RaycastHit hit3;
        if (Physics.Raycast(transform.position, rightRayRotation, out hit3, 100))
        {
            Debug.DrawRay(transform.position, rightRayRotation * hit3.distance, Color.yellow);
            if (hit3.transform.tag == "Player")
            {
                agent.SetDestination(target.transform.position);
                transform.LookAt(target.transform.position);
                //Activar Shader
                seePlayer = true;
            }
        }

        if (seePlayer) {
            //if veo al jugador y lo escucho para seguir hago esto
            disolve += Time.deltaTime * 0.5f;
            this.transform.GetChild(0).GetComponent<Renderer>().material.SetFloat("_SliderNoise", disolve);
        }
        else{
            disolve -= Time.deltaTime * 0.5f;
            this.transform.GetChild(0).GetComponent<Renderer>().material.SetFloat("_SliderNoise", disolve);
        }
    }
    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            agent.isStopped = true;
            StartCoroutine(AnimAttack());
            //Muerte
        }

        if (other.CompareTag("DontWalk")) {
            CambiarPunto();
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

    public float range = 10.0f;

    void CambiarPunto()
    {
        bool Enontrado = true;
        while (Enontrado)
        {
            if (RandomPoint(transform.position, range, out point))
            {
                agent.SetDestination(point);
                Enontrado = false;
            }
        }
    }

    bool RandomPoint(Vector3 center, float range, out Vector3 result)
    {
        for (int i = 0; i < 30; i++)
        {
            Vector3 randomPoint = center + Random.insideUnitSphere * range;
            NavMeshHit hit;
            if (NavMesh.SamplePosition(randomPoint, out hit, 1.0f, NavMesh.AllAreas))
            {
                result = hit.position;
                return true;
            }
        }
        result = Vector3.zero;
        return false;
    
    
    }

    public void EscuchoAlPlyaer()
    {
        point = target.transform.position;
        agent.SetDestination(point);
    }
}
