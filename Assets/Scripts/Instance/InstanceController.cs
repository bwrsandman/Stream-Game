#region Using
using UnityEngine;
using System.Collections;

using Instance;
#endregion

namespace Instance
{
	public enum InstanceState {
		IDLE,
		FOLLOW,
		GOTO,
		GOTO_IDLE,
		ACTIVATE,
		ATTACK,
	}
}

public class InstanceController : StateMachineController 
{
	#region Constants
	const float satisfaction_radius = 2.5f;
	const float urgency_radius = 7.5f;
	const float movingSpeed = 0.11f;
	#endregion
	
	#region Public fields

	#endregion
	
	#region Members
	Animator anim;
	NavMeshAgent agent;
	#endregion
	
	#region Properties

	#endregion
	
	#region Initialization
	void Start () 
	{
		anim = GetComponent<Animator>();	
		agent = GetComponent<NavMeshAgent>();
	}
	#endregion
	
	#region Public functions
	
	#endregion
	
	#region Internal Functions
	protected override void Update () 
	{
		Vector3 travelVector = target_pos - transform.position;
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
		agent.destination = target_pos;
		agent.speed = anim.GetFloat("Speed");
	}
	#endregion
}
