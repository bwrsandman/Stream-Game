using UnityEngine;
using System.Collections;

public class Projectile : MonoBehaviour {
	
	private Vector3 velocity = new Vector3(0.0f, 0.0f, 0.0f);
	
	// Use this for initialization
	void Start () {
		
	}
	
	// Update is called once per frame
	void FixedUpdate () {		
		transform.position += velocity * Time.deltaTime;
	}
	
	public void setPosition (Vector3 position) {
		transform.position = position;
	}
	
	public void setVelocity (Vector3 velocity) {
		this.velocity = velocity;
	}
	
	void OnTriggerEnter(Collider other) 
	{		
		if (other.tag == "Environment") {
			Debug.Log("env");
			Destroy(this.gameObject);
		}
		else if (other.tag != "TriggerArea") {
			Health otherHealth = other.gameObject.GetComponent<Health>();
			if (otherHealth != null)
				otherHealth.decreaseHealth(20);
		}
    }
}
