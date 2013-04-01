#region Using
using UnityEngine;
using System.Collections;

using Flower;
#endregion

namespace Flower
{
	public enum FlowerState {
		IDLE,
		OPENNING_MID,
		OPENNING_FULL,
		SPRINGUP,
		SCANNING,
		SHOOTING,
		DROPDOWN,
		CLOSEUP,
	}
}

public class FlowerBotController : StateMachineController 
{
	#region Constants
	const float LOOKSPEED = 4.0f;
	const float max_closed = 110.0f;
	const float offset_mag = 2.0f; // How much will the flower miss by at start
	#endregion
	
	#region Public fields
	public float _sphereRadius = 1.0f;
	public float opened = 0.0f;
	public float angular_velocity = 0.0f;
	public float angular_acceleration = 0.0f;
	public float max_angular_velocity = 10.0f;
	public Vector3 offset;
	public MeshFilter [] prisms = new MeshFilter[3];
	public bool sense_player;
	public Vector3 other_direction;
	public LineRenderer laser;

    public AudioClip deathSound;
	#endregion
	
	#region Members
	Health healthScript;
	#endregion
	
	#region Properties
	public float scan_radius
	{
		get { return ((FlowerBehaviour)currentBehaviour).sphereRadius; }
	}
	
	protected override uint beginState {
		get {
			return (uint) FlowerState.IDLE;
		}
	}
	
	protected override float lookSpeed {
		get {
			return LOOKSPEED;
		}
	}
	
	public override Vector3 otherDirection {
		get {
			return other_direction;
		}
	}
	
	protected override Vector3 mOffset {
		get {
			return offset;
		}
	}
	#endregion
	
	#region Initialization
	protected override void Start () 
	{
		base.Start();
		laser = GetComponentInChildren<LineRenderer>();
		healthScript = GetComponent<Health>();
		transform.RotateAround(Vector3.up, Random.value * 360.0f);
	}
	
	protected override void BuildBehaviours()
	{
		behaviour = new FlowerBehaviour[] { 
			new FlowerIdleBehaviour(this),
			new FlowerOpenningEarlyBehaviour(this),
			new FlowerOpenningLateBehaviour(this),
			new FlowerSpringUpBehaviour(this),
			new FlowerScanningBehaviour(this),
			new FlowerShootingBehaviour(this),
			new FlowerDropDownBehaviour(this),
			new FlowerCloseUpBehaviour(this),
		};
	}
	#endregion
	
	#region Public functions
	public float angle_to_other()
	{
		Vector2 forward = transform.forward.x * Vector2.right +
			transform.forward.z * Vector2.up;
		Vector2 other = other_direction.x * Vector2.right +
			other_direction.z * Vector2.up;
		return Vector2.Angle(forward, other);
	}

	public void set_offset(float delta)
	{
		offset = delta * Vector3.Cross(other_direction, Vector3.up).normalized * Random.value * offset_mag;
	}

	public void close_prism()
	{
		opened = Mathf.Max(Mathf.Min(1.0f, opened), 0.0f);
		for(int i = 0; i < 3; ++i)
		{
			float closed = Mathf.Max(Mathf.Min(1.0f, ((1.0f - opened) - i * 0.05f) * 1.8f), 0.0f);
			Transform tran = prisms[i].transform;
			tran.localRotation = Quaternion.Euler(0.0f, 0.0f, i * -120.0f) * 
								 Quaternion.Euler(max_closed * closed, 0.0f, 0.0f);
		}		
	}

	public void faceTarget(float delta)
	{
		faceTarget(delta, 1.0f);
	}

	public float faceTarget(float d_o, float d_s)
	{
		Quaternion target = lookAtTarget(d_o);
		transform.rotation = Quaternion.Slerp(transform.rotation,
		target, d_s * lookSpeed * Time.deltaTime);
		return Mathf.Abs(Quaternion.Angle(transform.rotation, target));
	}
	#endregion
}
