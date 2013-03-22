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
	const float LOOKSPEED = 4.0f;
	public const float satisfactionRadius = 2.5f;
	public const float urgencyRadius = 7.5f;
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
	
	protected override float lookSpeed {
		get {
			return LOOKSPEED;
		}
	}
	
	public override Vector3 otherDirection {
		get {
			return targetPosition - transform.position; 
		}
	}
	
	protected override Vector3 mOffset {
		get {
			return Vector3.zero;
		}
	}
	
	public float distanceToPlayer {
		get {
			targetTransform = player;
			Vector3 travelVector = otherDirection;
			travelVector.y = 0.0f;
			return travelVector.magnitude;
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
		if (anim.GetFloat("Speed") < movingSpeed)
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

	public void facePlayer()
	{
		rotateY(Quaternion.LookRotation(otherDirection).eulerAngles.y);
	}

	#endregion
	
	#region Member functions
	protected override void BuildBehaviours ()
	{
		behaviour = new InstanceBehaviour[] { 
			new InstanceIdleBehaviour(this),
			new InstanceFollowBehaviour(this),
			new InstanceGotoBehaviour(this),
			new InstanceGotoIdleBehaviour(this),
			new InstanceActivateBehaviour(this),
			new InstanceAttackBehaviour(this),
		};
	}
	#endregion

	#region Internal functions
	protected override void Update () 
	{
		base.Update();
		agent.SetDestination(targetPosition);
		agent.speed = anim.GetFloat("Speed");
	}
	#endregion
}
