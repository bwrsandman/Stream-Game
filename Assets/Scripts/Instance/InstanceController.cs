#region Using
using UnityEngine;
using System.Collections;

using Instance;
#endregion

public class InstanceController : StateMachineController 
{
    // Constants
    public const float scanRadius           = 5.0f;
	public const float LOOKSPEED            = 4.0f;
	public const float satisfactionRadius   = 2.5f;
	public const float urgencyRadius        = 7.5f;
	public const float movingSpeed          = 0.11f;

    public bool _use_point_target;
    public Vector3 _target_point;
	public Transform    _player_transform;
	public GameObject   _nav_cube_fab;
    public GameObject   _target;
	public bool facing = true;
    public GameObject _foe;

	Animator        _animator;
	NavMeshAgent    _navmesh_agent;
	GameObject      _cube;
	SelfActivationHandler _activation;
    SphereCollider _scanSphere;
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
	

	#region UTILITY FUNCTIONS

    protected override void BuildBehaviours() {
        _state_behaviour = new InstanceIdleBehaviour(this);
    }

    protected override void Start() {
        base.Start();
        _animator = GetComponent<Animator>();
        _cube = (GameObject)Instantiate(_nav_cube_fab, transform.position + otherDirection.normalized, transform.rotation);
		_cube.name = "Nav" + name;
        _navmesh_agent = _cube.GetComponent<NavMeshAgent>();
		_activation = GetComponent<SelfActivationHandler>();
        _target_point = Vector3.zero;
        _use_point_target = false;
        _scanSphere = GetComponent<SphereCollider>();
    }

    public float GetTravelDistance(Vector3 destination) {
        Vector3 travelVector = destination - transform.position;
        travelVector.y = 0.0f;
        return travelVector.magnitude;
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

    public void face(Vector3 direction)
    {
        rotateY(Quaternion.LookRotation(direction).eulerAngles.y);
    }

    public void facePlayer()
    {
        face(otherDirection);
    }

	public void Activate()
	{
		_activation.Activate();
	}

	#endregion
	
	#region Internal functions
	protected override void Update () {
        if (_switched_state)
            OnEnterState();
        _state_behaviour.run();
        face(_navmesh_agent.transform.position - transform.position);
	}

	protected override void LateUpdate ()
	{
		// Way to avoid setting and unsetting before animator can transition
		bool tmpKneeling = _animator.GetBool("Kneel");
		if(kneeling)
			_animator.SetBool("Kneel", false);
		kneeling = tmpKneeling;

        if (_use_point_target)
            _navmesh_agent.SetDestination(_target_point);
        else
            _navmesh_agent.SetDestination(targetPosition);

        // Instance is walking or running
		if (_animator.GetFloat("Speed") > 0.1f) {
			float dist = Vector3.Distance(transform.position, _navmesh_agent.transform.position);
			if (dist > 0.4f)
				_animator.SetFloat("Speed", movingSpeed);
			else
				_animator.SetFloat("Speed", 0.0f);
		}

        // Instance is standing still, make him face player.
		if (_animator.GetFloat("Speed") > 0.1f && facing) {
			transform.LookAt(_navmesh_agent.transform);
			Vector3 rot = transform.rotation.eulerAngles;
			rot.x = 0.0f;
			transform.rotation = Quaternion.Euler(rot);
		}

        // Face Foe but don't walk towards it.
        if (_foe)
            face(_foe.transform.position - transform.position);
	}

    void OnTriggerEnter(Collider other)
    {
        OnTriggerStay(other);
    }

    void OnTriggerStay(Collider other)
    {
        if (other.tag == "Enemy") {
            _scanSphere.radius = 2.0f * scanRadius;
            _foe = other.gameObject;
        }
    }

    void OnTriggerExit(Collider other)
    {
        if (other.gameObject == _foe) {
            _scanSphere.radius = scanRadius;
            _foe = null;
        }
    }

	#endregion
}
