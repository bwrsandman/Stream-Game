using UnityEngine;
using System.Collections;

public class Ammo : MonoBehaviour {

	public float ammoLevel;
	public float maxAmmo;
	public Material indicator;

	private float invMaxAmmo;

	void Start () {
		invMaxAmmo = 1 / maxAmmo;
		setTimeEnergyIndicator();
	}

	public void increaseAmmo (int delta) {
		ammoLevel = Mathf.Min(ammoLevel + delta, maxAmmo);
		setTimeEnergyIndicator();
	}

	public void decreaseAmmo (int delta) {
		ammoLevel = Mathf.Max(ammoLevel - delta, 0.0f);
		setTimeEnergyIndicator();
	}

	private void setTimeEnergyIndicator () {
		indicator.SetFloat("_timeEnergy", ammoLevel * invMaxAmmo);
	}

}
