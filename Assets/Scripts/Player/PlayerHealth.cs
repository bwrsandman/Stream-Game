using UnityEngine;
using System.Collections;

public class PlayerHealth : Health  {
	public Material indicator;
	private float invMaxHealth;

	void Start () {

	}

	public void setIndicator() {
		invMaxHealth = 1.0f / maxHealth;
		setHealthIndicator();
	}
	
	public override void increaseHealth (float delta) {
		healthLevel = Mathf.Min(healthLevel + delta, maxHealth);
		setHealthIndicator();
	}
	
	public override void decreaseHealth (float delta) {
		healthLevel -= delta;	
		if (healthLevel <= 0f) {
			die();
			healthLevel = maxHealth;
		}
		setHealthIndicator();
	}
	
	protected override void die () {
		//Destruction/death animation/time travel.

		//Remember to set the start of the level as a checkpoint!

		/*StartCoroutine(*/GetComponent<TimeActions>().teleport()/*)*/;
		//Destroy(this.gameObject);
	}

	private void setHealthIndicator () {
		Debug.Log("Health " +  (healthLevel * invMaxHealth));
		indicator.SetFloat("_health", healthLevel * invMaxHealth);
	}
}
