using UnityEngine;
using System.Collections;

public class Ammo : MonoBehaviour {

	public float ammoLevel;
	public float maxAmmo;
	public Material indicator;
	public float recharge_percentage_lock;

	private bool locked = false;
	private bool semiAutoLocked = false;

	protected float invMaxAmmo;

	void Update () {
		increaseAmmo(0.125f);
	}

	void Start () {
		invMaxAmmo = 1.0f / maxAmmo;
		setTimeEnergyIndicator();
	}

	public void increaseAmmo (float delta) {
		ammoLevel += delta;
		if (ammoLevel > maxAmmo * recharge_percentage_lock && locked)
			locked = false;
		else if (ammoLevel > maxAmmo)
			ammoLevel = maxAmmo;

		setTimeEnergyIndicator();
	}

	public void decreaseAmmo (float delta) {
		ammoLevel-= delta;
		if (ammoLevel < 0.0f)
			locked = true;
		setTimeEnergyIndicator();
	}

	public bool canShoot (float ammoPerShoot) {
		return ammoLevel >= ammoPerShoot && !locked && !semiAutoLocked;
	}

	public void setSemiAuto(bool semiAutoLocked) {
		this.semiAutoLocked = semiAutoLocked;
	}

	protected void setTimeEnergyIndicator () {
		indicator.SetFloat("_timeEnergy", ammoLevel * invMaxAmmo);
	}
}
