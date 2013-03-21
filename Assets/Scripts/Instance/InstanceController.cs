#region Using
using UnityEngine;
using System.Collections;

using Instance;
#endregion

namespace Instance
{
	public enum InstanceState {
		FOLLOW,
		IDLE,
		GOTO,
		GOTO_IDLE,
		ACTIVATE,
		ATTACK,
	}
}

public class InstanceController : StateMachineController 
{
	#region Constants
	public const float satisfaction_radius = 2.5f;
	public const float urgency_radius = 7.5f;
	public const float movingSpeed = 0.11f;
	#endregion
	
	#region Public fields
	public Transform player;
	#endregion
	
	#region Members
	Animator anim;
	NavMeshAgent agent;
	#endregion
	
	#region Properties
	protected override uint beginState {
		get {
			return (uint) InstanceState.FOLLOW;
		}
	}
	
	public Vector3 travelVector {
		get {
			return targetPosition - transform.position;
		}
	}
	#endregion
	
	#region Initialization
	protected override void Start () 
	{
		base.Start();
		anim = GetComponent<Animator>();	
		agent = GetComponent<NavMeshAgent>();
	}
	#endregion
	
	#region Public functions

	public void Resume(bool running)
	{
		agent.Resume();
		anim.SetFloat("Speed", movingSpeed);
		if (running)
			anim.SetBool("Running", true);
	}

	public void Stop ()
	{
		agent.Stop();
		anim.SetFloat("Speed", 0.0f);
		anim.SetBool("Running", false);
	}

	public void rotateY (float y)
	{
		transform.rotation = Quaternion.Euler(transform.rotation.x, y, transform.rotation.z);
	}
	
	#endregion
	
	#region Member functions
	protected override void BuildBehaviours ()
	{
		behaviour = new InstanceBehaviour[] { 
			new InstanceFollowBehaviour(this),
		};
	}
	#endregion
	
	#region Internal functions
	protected override void Update () 
	{
		base.Update();
		agent.destination = targetPosition;
		agent.speed = anim.GetFloat("Speed");
	}
	#endregion
}
