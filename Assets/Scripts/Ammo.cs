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

    private float maxAmmoOffset = 0.0f;

	protected float invMaxAmmo;

	void Update () {
		freezeTime = Mathf.Max(-0.1f, freezeTime - Time.deltaTime);

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
		else if (ammoLevel > maxAmmo - maxAmmoOffset)
			ammoLevel = maxAmmo - maxAmmoOffset;

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

	public void setSemiAuto() {
        if (!semiAutoLocked)
            StartCoroutine(shootSemiAutoTime());
		this.semiAutoLocked = true;
	}

	protected void setTimeEnergyIndicator () {
		indicator.SetFloat("_timeEnergy", ammoLevel * invMaxAmmo );
	}

    public void setMaxAmmoOffset (float offset) {
        maxAmmoOffset = offset;
    }

    IEnumerator shootSemiAutoTime () {
        yield return new WaitForSeconds(0.7f);
        this.semiAutoLocked = false;
    }
}
