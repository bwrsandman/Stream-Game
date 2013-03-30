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

	private float walkingSpeed = 0.956f * 1.75f * 2.0f;
	private float runningSpeed = 3.247f * 1.5f * 1.1f;
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
			agent.speed = walkingSpeed;
		}
		if (running) {
			anim.SetBool("Running", true);
			agent.speed = runningSpeed;
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
	}

	protected override void LateUpdate ()
	{
		//Debug.Log ("targetPos " + targetPosition + " " + "Sal pos: " + GameObject.FindGameObjectWithTag("Player").transform.position);
		agent.SetDestination(targetPosition);

		if (anim.GetFloat("Speed") > 0.1f) {
			float dist = Vector3.Distance(transform.position, agent.transform.position);
			Debug.Log("dist " + dist);
			if (dist > 0.4f)
				anim.SetFloat("Speed", movingSpeed);
			else
				anim.SetFloat("Speed", 0.0f);
		}


		if (anim.GetFloat("Speed") > 0.1f) {
			transform.LookAt(agent.transform);
			Vector3 rot = transform.rotation.eulerAngles;
			rot.x = 0.0f;
			transform.rotation = Quaternion.Euler(rot);
		}
	}
	#endregion
}
