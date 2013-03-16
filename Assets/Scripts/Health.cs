using UnityEngine;
using System.Collections;

public class Health : MonoBehaviour {
	
	public int healthLevel;
	public int maxHealth;
	
	public void increaseHealth (int delta) {
		healthLevel += delta;	
		if (healthLevel > maxHealth)
			healthLevel = maxHealth;
	}
	
	public void decreaseHealth (int delta) {
		Debug.Log(healthLevel);
		
		healthLevel -= delta;	
		if (healthLevel <= 0)
			die();
	}
	
	private void die () {
		//Destruction/death animation/time travel.
		Destroy(this.gameObject);
	}
}