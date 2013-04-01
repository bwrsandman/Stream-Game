using UnityEngine;
using System.Collections;

public abstract class Health : MonoBehaviour {

	public float healthLevel;
	public float maxHealth;

	public virtual void increaseHealth (float delta) {
		healthLevel = Mathf.Min(healthLevel + delta, maxHealth);
	}
	
	public virtual void decreaseHealth (float delta) {
		healthLevel -= delta;	
		if (healthLevel <= 0f)
			die();
	}
	
	protected abstract void die ();
}