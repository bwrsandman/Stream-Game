using UnityEngine;
using System.Collections;

public class Projectile : MonoBehaviour {

	private Transform hand;
	private Vector3 velocity;
	private float lifeTime;
	private float speed;
	private float damage;
	private float lifeSpan;


	public void initialize (Vector3 position, Weapon weapon, Transform hand) {
		transform.position = position;
		this.hand = hand;
		this.speed = weapon.getProjectileSpeed();
		this.damage = weapon.getDamage();
		this.lifeSpan = weapon.getLifeSpan();
	}

	void Start () {
		lifeTime = 0.0f;
		transform.parent = null;
		Vector3 direction = (transform.position - (hand.position - new Vector3(0.0f, -0.125f, 0.0f))).normalized;
		velocity = direction * speed;

		//Make the projectile start a bit in front of the weapon's muzzle
		transform.position += direction;
		transform.rotation = Quaternion.LookRotation(velocity) * Quaternion.Euler(90.0f,0.0f,0.0f);
	}
	
	// Update is called once per frame
	void FixedUpdate () {
		transform.position += velocity * Time.deltaTime;
		lifeTime += Time.deltaTime;
		if (lifeTime > lifeSpan)
			Destroy(this.gameObject);
	}
	
	void OnTriggerEnter(Collider other) 
	{
		if (other.tag == "tCollider" || other.tag == "Environment") {
			Destroy(this.gameObject);
		}
		/*else if (other.tag == "player" || other.tag == "clone") {
			PlayerHealth otherHealth = other.gameObject.GetComponent<PlayerHealth>();
			if (otherHealth != null)
				otherHealth.decreaseHealth(damage);
		}*/
		else if (other.tag != "TriggerArea" && other.tag != "MainCamera" && other.name != "LongDistance" && other.tag != "player"  && other.tag != "Player" && other.tag != "Projectile") {
			Health otherHealth = other.gameObject.GetComponent<Health>();
			if (otherHealth != null)
				otherHealth.decreaseHealth(damage);

			Destroy(this.gameObject);
		}
	}
}
