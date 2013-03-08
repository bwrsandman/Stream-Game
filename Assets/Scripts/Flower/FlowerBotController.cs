using UnityEngine;
using System.Collections;

using Flower;

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

public class FlowerBotController : MonoBehaviour 
{
	
	public float opened = 0.0f;
	public float angular_velocity = 0.0f;
	public float angular_acceleration = 0.0f;
	public float max_angular_velocity = 10.0f;
	public Vector3 offset;
	const float offset_mag = 2.0f; // How much will the flower miss by at start
	
	const float look_speed = 4.0f;
	const float max_closed = 110.0f;
	public MeshFilter [] prisms = new MeshFilter[3];
	FlowerBehaviour [] behaviour;
	FlowerState behaviour_state;
	public bool sense_player;
	Transform target_transform;
	public Vector3 other_direction;
	
	
	public float angle_to_other()
	{
		Vector2 forward = transform.forward.x * Vector2.right + 
			transform.forward.z * Vector2.up;
		Vector2 other = other_direction.x * Vector2.right + 
			other_direction.z * Vector2.up;
		return Vector2.Angle(forward, other);
	}
	
	Vector3 target_pos
	{
		get { return target_transform.position; }
	}
	
	FlowerBehaviour current_behaviour 
	{
		get { return behaviour[(int)behaviour_state]; }
	}
	
	
	// Use this for initialization
	void Start () 
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
		behaviour_state = FlowerState.IDLE;
		
		transform.RotateAround(Vector3.up, Random.value * 360.0f);
	}
	
	// Update is called once per frame
	void Update () 
	{
		behaviour_state = current_behaviour.run ();
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
	
	public void face_target(float delta)
	{
		face_target(delta, 1.0f);
	}
	
	public float face_target(float d_o, float d_s)
	{
		Quaternion target = lookat_target(d_o);
		transform.rotation = Quaternion.Slerp(transform.rotation, 
		target, d_s * look_speed * Time.deltaTime);
		return Mathf.Abs(Quaternion.Angle(transform.rotation, target));
	}
	
	public Quaternion lookat_target(float delta)
	{
		return Quaternion.LookRotation(other_direction + delta * offset + Vector3.up);
	}
	
	public void set_offset(float delta)
	{
		offset = delta * Vector3.Cross(other_direction, Vector3.up).normalized * Random.value * offset_mag;
	}
		
	
	public Vector3 vector_to_target()
	{
		return target_pos - transform.position;
	}
	
	void OnTriggerEnter(Collider other) 
	{
		if (other.tag == "Player") {
        	sense_player = true;
			target_transform = other.transform;
		}
		else 
			Destroy(this.gameObject);
    }
	
	void OnTriggerStay(Collider other) 
	{
		other_direction = -transform.position + other.transform.position;
	}
	
	void OnTriggerExit(Collider other) 
	{
		if (other.tag == "Player") 
        	sense_player = false;
    }
}
