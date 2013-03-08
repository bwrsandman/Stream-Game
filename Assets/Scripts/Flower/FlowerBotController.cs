using UnityEngine;
using System.Collections;

using Flower;

namespace Flower
{
	public enum FlowerState {
		IDLE,
		OPENNING,
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
	const float look_speed = 4.0f;
	const float max_closed = 110.0f;
	public MeshFilter [] prisms = new MeshFilter[3];
	FlowerBehaviour [] behaviour;
	FlowerState behaviour_state;
	public bool sense_player;
	Transform target_transform;
	
	
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
			new FlowerOpenningBehaviour(this),
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
	
	public void face_target()
	{
		transform.rotation = Quaternion.Slerp(transform.rotation, 
		lookat_target(), look_speed * Time.deltaTime);
	}
		
	public Quaternion lookat_target()
	{
		return Quaternion.LookRotation(vector_to_target());
	}
	
	public Vector3 vector_to_target()
	{
		return target_pos - transform.position;
	}
	
	void OnTriggerEnter(Collider other) 
	{
        sense_player = true;
		target_transform = other.transform;
    }
	
	void OnTriggerExit(Collider other) 
	{
        sense_player = false;
    }
}
