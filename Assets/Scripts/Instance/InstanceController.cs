#region Using
using UnityEngine;
using System.Collections;

using Instance;
#endregion

public class InstanceController : StateMachineController 
{
    // Constants
	public const float LOOKSPEED            = 4.0f;
	public const float satisfactionRadius   = 2.5f;
	public const float urgencyRadius        = 7.5f;
	public const float movingSpeed          = 0.11f;

	public Transform    _player_transform;
	public GameObject   _nav_cube_fab;
    public GameObject   _target;

	Animator        _animator;
	NavMeshAgent    _navmesh_agent;
	GameObject      _cube;
	SelfActivationHandler _activation;
	bool kneeling = false;

	private float walkingSpeed = 0.956f * 1.75f * 2.0f;
	private float runningSpeed = 3.247f * 1.5f * 1.1f;

	protected override uint beginState
    { get { return 0; } }
	
	protected override float lookSpeed
    { get { return LOOKSPEED; } }
	
	public override Vector3 otherDirection
    { get { return targetPosition - transform.position; } }
	
	protected override Vector3 mOffset
    { get { return Vector3.zero; } }
	
	public float distanceToPlayer {
		get {
			targetTransform = _player_transform;
			Vector3 travelVector = otherDirection;
			travelVector.y = 0.0f;
			return travelVector.magnitude;
		}
	}
	

	#region UTILITY FUNCTIONS

    protected override void BuildBehaviours() {
        _state_behaviour = new InstanceIdleBehaviour(this);
    }

    protected override void Start() {
        base.Start();
        _animator = GetComponent<Animator>();
        _cube = (GameObject)Instantiate(_nav_cube_fab, transform.position + otherDirection.normalized, transform.rotation);
        _navmesh_agent = _cube.GetComponent<NavMeshAgent>();
		_activation = GetComponent<SelfActivationHandler>();
    }

	public void Resume(bool running)
	{
		_navmesh_agent.Resume();
		if (_animator.GetFloat("Speed") < movingSpeed) {
			_animator.SetFloat("Speed", movingSpeed);
			_navmesh_agent.speed = walkingSpeed;
		}
		if (running) {
			_animator.SetBool("Running", true);
			_navmesh_agent.speed = runningSpeed;
		}
	}

	public void Stop ()
	{
		_navmesh_agent.Stop();
		_animator.SetFloat("Speed", 0.0f);
		_animator.SetBool("Running", false);
		_navmesh_agent.speed = 0.0f;
	}
	
	public void SetSelection(Activateable obj)
	{
		_activation.selectedObject = obj;
	}

	public void rotateY (float y)
	{
		transform.rotation = Quaternion.Euler(transform.rotation.x, y, transform.rotation.z);
	}

	public void facePlayer()
	{
		rotateY(Quaternion.LookRotation(otherDirection).eulerAngles.y);
	}
	
	public void Activate()
	{
		_activation.Activate();
	}

	#endregion
	
	#region Internal functions
	protected override void Update () {
        _state_behaviour.run();
	}

	protected override void LateUpdate ()
	{
		//Debug.Log ("targetPos " + targetPosition + " " + "Sal pos: " + GameObject.FindGameObjectWithTag("Player").transform.position);
		_navmesh_agent.SetDestination(targetPosition);

		if (_animator.GetFloat("Speed") > 0.1f) {
			float dist = Vector3.Distance(transform.position, _navmesh_agent.transform.position);
			if (dist > 0.4f)
				_animator.SetFloat("Speed", movingSpeed);
			else
				_animator.SetFloat("Speed", 0.0f);
		}


		if (_animator.GetFloat("Speed") > 0.1f) {
			transform.LookAt(_navmesh_agent.transform);
			Vector3 rot = transform.rotation.eulerAngles;
			rot.x = 0.0f;
			transform.rotation = Quaternion.Euler(rot);
		}
		
		// Way to avoid setting and unsetting before animator can transition
		bool tmpKneeling = _animator.GetBool("Kneel");
		if(kneeling)
			_animator.SetBool("Kneel", false);
		kneeling = tmpKneeling;
	}
	#endregion
}
