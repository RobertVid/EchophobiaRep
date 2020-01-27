using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.AI;
using UnityEngine.UI;
using UnityStandardAssets.Characters.FirstPerson;

public class AI_Enemy : MonoBehaviour
{
    private NavMeshAgent agent;
    private GameObject target;
    private Animator Anim;
    private Vector3 point;
    float disolve = 0;
    private bool listenPlayer = false;
    private bool seePlayer = true;

    public FirstPersonController fpC;
    public GameObject objtxt, btn;
    public Text _txt;
    public bool CanFollow=true;
    public bool CanAtack = true;

    public void Start()
    {
        target = GameObject.FindGameObjectWithTag("Player");
        Anim = GetComponent<Animator>();
        agent = GetComponent<NavMeshAgent>();
        CambiarPunto();
    }

    public void Update()
    {
        if (CanAtack)
        {
            Anim.SetFloat("Velocity", agent.velocity.normalized.magnitude);

            float distance = Vector3.Distance(transform.position, point);

            if (distance < 0.5f)
            {
                CambiarPunto();
            }

            RaycastHit hit;

            if (Physics.Raycast(transform.position + new Vector3(0, 1, 0), transform.TransformDirection(Vector3.forward), out hit, 100))
            {
                Debug.DrawRay(transform.position + new Vector3(0, 1, 0), transform.TransformDirection(Vector3.forward) * hit.distance, Color.yellow);
                if (hit.transform.tag == "Player")
                {
                    agent.SetDestination(target.transform.position);
                    transform.LookAt(target.transform.position);
                    //Activar Shader
                    seePlayer = true;

                }
                else
                {

                    agent.SetDestination(point);
                    seePlayer = false;
                }
            }
            float fovAngle = 10.0f;
            Vector3 leftRayRotation = Quaternion.AngleAxis(-fovAngle, transform.up) * transform.forward;
            Vector3 rightRayRotation = Quaternion.AngleAxis(fovAngle, transform.up) * transform.forward;
            RaycastHit hit2;
            if (Physics.Raycast(transform.position + new Vector3(0, 1, 0), leftRayRotation, out hit2, 100))
            {
                Debug.DrawRay(transform.position + new Vector3(0, 1, 0), leftRayRotation * hit2.distance, Color.yellow);
                if (hit2.transform.tag == "Player")
                {
                    agent.SetDestination(target.transform.position);
                    transform.LookAt(target.transform.position);
                    //Activar Shader
                    seePlayer = true;
                }
            }

            RaycastHit hit3;
            if (Physics.Raycast(transform.position + new Vector3(0, 1, 0), rightRayRotation, out hit3, 100))
            {
                Debug.DrawRay(transform.position + new Vector3(0, 1, 0), rightRayRotation * hit3.distance, Color.yellow);
                if (hit3.transform.tag == "Player")
                {
                    agent.SetDestination(target.transform.position);
                    transform.LookAt(target.transform.position);
                    //Activar Shader
                    seePlayer = true;
                }
            }

            if (seePlayer)
            {
                //if veo al jugador y lo escucho para seguir hago esto
                if (disolve <= 1)
                {
                    disolve += Time.deltaTime * 0.5f;
                    this.transform.GetChild(0).GetComponent<Renderer>().material.SetFloat("_SliderNoise", disolve);
                }
            }
            else
            {
                if (disolve >= 0)
                {
                    disolve -= Time.deltaTime * 0.5f;
                    this.transform.GetChild(0).GetComponent<Renderer>().material.SetFloat("_SliderNoise", disolve);
                }
            }

        }
        else
        {
            agent.isStopped = true;
        }
    }
    public void OnTriggerEnter(Collider other)
    {
        if (other.CompareTag("Player"))
        {
            if (CanAtack)
            {
                CanAtack = false;
                agent.isStopped = true;
                this.transform.GetChild(0).GetComponent<Renderer>().material.SetFloat("_SliderNoise", 0.9f);
                transform.LookAt(other.transform.position);
                StartCoroutine(AnimAttack());
                target.GetComponent<GameOver>().Muerte(true);
                objtxt.SetActive(true);
                _txt.text = "You Die";
                btn.SetActive(true);
                Cursor.visible = true;
                Cursor.lockState = CursorLockMode.None;
                Time.timeScale = 0;
                fpC.enabled = false;
                CanFollow = false;
                agent.SetDestination(transform.position);
                //Muerte
            }
        }

        if (other.CompareTag("DontWalk")) {
            CambiarPunto();
        }
    
    }

    IEnumerator AnimAttack() {
        Anim.SetTrigger("UsarAtaque");
        Anim.SetFloat("Ataque", 1);
        yield return new WaitForSeconds(2.7f);
        agent.isStopped = false;
        Anim.SetTrigger("UsarAtaque");
        Anim.SetFloat("Ataque", 0);
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
