using UnityEngine;
using System.Collections;

public class PlayerHealth : Health {
	public Material indicator;

	private float invMaxHealth;

	void Start () {
		invMaxHealth = 1.0f / maxHealth;
		setHealthIndicator();
	}
	
	public void increaseHealth (int delta) {
		healthLevel = Mathf.Min(healthLevel + delta, maxHealth);
		setHealthIndicator();
	}
	
	public void decreaseHealth (int delta) {
		healthLevel -= delta;	
		if (healthLevel <= 0f) {
			die();
			healthLevel = maxHealth;
		}
		setHealthIndicator();
	}
	
	private void die () {
		//Destruction/death animation/time travel.
		StartCoroutine(GetComponent<TimeActions>().teleport());
		//Destroy(this.gameObject);
	}

	private void setHealthIndicator () {
		Debug.Log("Health " +  (healthLevel * invMaxHealth));
		indicator.SetFloat("_health", healthLevel * invMaxHealth);
	}
}
