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
	}
	
	void Update () 
	{
		Vector3 travelVector = m_Player.position - transform.position;
		travelVector.y = 0.0f;
		float distance = travelVector.magnitude;
		float yRot = Quaternion.LookRotation(travelVector).eulerAngles.y;
		transform.rotation = Quaternion.Euler(transform.rotation.x, yRot, transform.rotation.z);
		
		if(distance < satisfaction_radius) {
			//Debug.Log("Player within satisfaction radius. Idling.");
			agent.Stop();
			anim.SetFloat("Speed", 0.0f);
			anim.SetBool("Running", false);
		}
		else if(distance < urgency_radius) {
			//Debug.Log("Just outside satisfaction radius. Walking to follow.");
			agent.Resume();
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