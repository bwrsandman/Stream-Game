using UnityEngine;
using System.Collections;

public class Ammo : MonoBehaviour {

	public float ammoLevel;
	public float maxAmmo;
	public Material indicator;
	public float recharge_percentage_lock;
	public float freezePeriod = 1f;
	public float rechargeRate = 0.125f;

	private bool locked = false;
	private bool semiAutoLocked = false;
	private float freezeTime;

	protected float invMaxAmmo;

	void Update () {
		freezeTime = Mathf.Max(-0.1f, freezeTime - Time.deltaTime);

		Debug.Log(freezeTime);
		if (freezeTime <= 0.0f)
			increaseAmmo(rechargeRate);
	}

	void Start () {
		invMaxAmmo = 1.0f / maxAmmo;
		setTimeEnergyIndicator();
	}

	public void increaseAmmo (float delta) {
		ammoLevel += delta;
		if (ammoLevel > maxAmmo * recharge_percentage_lock && locked && freezeTime <= 0.0f)
			locked = false;
		else if (ammoLevel > maxAmmo)
			ammoLevel = maxAmmo;

		setTimeEnergyIndicator();
	}

	public void decreaseAmmo (float delta) {
		ammoLevel-= delta;
		setTimeEnergyIndicator();
	}

	public bool canShoot (float ammoPerShoot) {
		freezeTime = freezePeriod;
		bool enoughAmmo = ammoLevel >= ammoPerShoot;
		if (!enoughAmmo) {
			locked = true;
		}
		return enoughAmmo && !locked && !semiAutoLocked;
	}

	public void setSemiAuto(bool semiAutoLocked) {
		this.semiAutoLocked = semiAutoLocked;
	}

	protected void setTimeEnergyIndicator () {
		indicator.SetFloat("_timeEnergy", ammoLevel * invMaxAmmo);
	}
}
