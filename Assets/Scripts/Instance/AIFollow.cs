using UnityEngine;

public class AIFollow : MonoBehaviour {
	private Animator anim;
	public Transform m_Player;
	NavMeshAgent agent;
	
	public float satisfaction_radius = 2.5f;
	public float urgency_radius = 7.5f;
	public float movingSpeed = 0.11f;
	
	void Start () 
	{
		anim = GetComponent<Animator>();	
		agent = GetComponent<NavMeshAgent>();
		agent.enabled = false;
	}
	
	void LateUpdate () 
	{
		float distance = Vector3.Distance(transform.position, m_Player.position);
		
		//Debug.Log(distance);
		
		if(distance < satisfaction_radius) {
			//Debug.Log("Player within satisfaction radius. Idling.");
			agent.Stop();
			
			anim.SetFloat("Speed", 0.0f);
			anim.SetBool("Running", false);
		}
		else if(distance < urgency_radius) {
			//Debug.Log("Just outside satisfaction radius. Walking to follow.");
			agent.Resume();
			agent.enabled = true;
			
			//Vector3 direction = (transform.position - m_Player.position).normalized;
			//transform.rotation = Quaternion.LookRotation(-direction);
			anim.SetFloat("Speed", movingSpeed);
		}
		else {
			//Debug.Log("Player outside of urgency radius. Must run to catch up.");
			anim.SetFloat("Speed", movingSpeed);
			anim.SetBool("Running", true);
		}
		agent.destination = m_Player.position;		
		agent.speed = anim.GetFloat("Speed");
	}
	
}