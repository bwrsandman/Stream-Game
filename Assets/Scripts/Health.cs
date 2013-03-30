using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {

	public float healthLevel;
	public float maxHealth;
	
	public void increaseHealth (int delta) {
		healthLevel = Mathf.Min(healthLevel + delta, maxHealth);
	}
	
	public void decreaseHealth (int delta) {
		healthLevel -= delta;	
		if (healthLevel <= 0f)
			die();
	}
	
	private void die () {
		//Destruction/death animation/time travel.
		Destroy(this.gameObject);
	}

}
