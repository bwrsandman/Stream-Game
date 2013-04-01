using UnityEngine;
using System.Collections;

public class InstanceHealth : Health {

	private Material indicator;
	private float invMaxHealth;
	private int instanceNum;

	public void setInstanceSpecifics (int num) {
		this.instanceNum = num;
		indicator = GetComponent<PackHandler>().Pack.renderer.material;
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
		Destroy(this.gameObject);
		Destroy(GameObject.Find("Nav" + this.name));
	}

	private void setHealthIndicator () {
		indicator.SetFloat("_health", healthLevel * invMaxHealth);
	}
}
