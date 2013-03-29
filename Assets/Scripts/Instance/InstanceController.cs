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

	public GameObject NavCubeFab;
	#endregion
	
	#region Public fields
	public Transform player;
	#endregion
	
	#region Members
	Animator anim;
	NavMeshAgent agent;
	GameObject cube;
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
		cube = (GameObject) Instantiate(NavCubeFab, transform.position + otherDirection.normalized, transform.rotation);
		agent = cube.GetComponent<NavMeshAgent>();
	}
	#endregion
	
	#region Public functions

	public void Resume(bool running)
	{
		agent.Resume();
		if (anim.GetFloat("Speed") < movingSpeed) {
			anim.SetFloat("Speed", movingSpeed);
			agent.speed = 0.956f*1.75f*2.0f;
		}
		if (running) {
			anim.SetBool("Running", true);
			agent.speed = 3.247f*1.5f*1.1f;
		}
	}

	public void Stop ()
	{
		agent.Stop();
		anim.SetFloat("Speed", 0.0f);
		anim.SetBool("Running", false);
		agent.speed = 0.0f;
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
		if (anim.GetFloat("Speed") > 0.1f) {
			float dist = Vector3.Distance(transform.position, agent.transform.position);
		}
	}

	protected override void LateUpdate ()
	{
		if (anim.GetFloat("Speed") > 0.1f) {
			transform.LookAt(agent.transform);
			Vector3 rot = transform.rotation.eulerAngles;
			rot.x = 0.0f;
			transform.rotation = Quaternion.Euler(rot);
		}
	}
	#endregion
}
