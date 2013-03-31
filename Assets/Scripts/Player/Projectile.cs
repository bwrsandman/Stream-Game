using UnityEngine;
using System.Collections;

public class Projectile : MonoBehaviour {
	
	private Vector3 velocity = new Vector3(0.0f, 0.0f, 0.0f);

	private float lifeTime;
	
	// Use this for initialization
	void Start () {
		lifeTime = 0.0f;
	}
	
	// Update is called once per frame
	void FixedUpdate () {		
		transform.position += velocity * Time.deltaTime;
		lifeTime += Time.deltaTime;
		if (lifeTime > 3.0f)
			Destroy(this.gameObject);
	}
	
	public void setPosition (Vector3 position) {
		transform.position = position;
	}
	
	public void setVelocity (Vector3 velocity) {
		this.velocity = velocity;
	}
	
	void OnTriggerEnter(Collider other) 
	{
		if (other.tag == "tCollider" || other.tag == "Environment") {
			Destroy(this.gameObject);
		}
		else if (other.tag == "player" || other.tag == "clone") {
			PlayerHealth otherHealth = other.gameObject.GetComponent<PlayerHealth>();
			if (otherHealth != null)
				otherHealth.decreaseHealth(20);
		}
		else if (other.tag != "TriggerArea" && other.tag != "MainCamera" && other.name != "LongDistance") {
			Health otherHealth = other.gameObject.GetComponent<Health>();
			if (otherHealth != null)
				otherHealth.decreaseHealth(20);

			Destroy(this.gameObject);
		}
	}
}
