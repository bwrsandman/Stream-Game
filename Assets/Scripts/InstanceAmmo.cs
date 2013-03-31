using UnityEngine;
using System.Collections;

public class InstanceAmmo : Ammo {

	private int instanceNum;

	// Use this for initialization
	void Start () {
	
	}
	
	public void setInstanceSpecifics (int num) {
		this.instanceNum = num;
		indicator = GetComponent<PackHandler>().Pack.renderer.material;
		invMaxAmmo = 1.0f / maxAmmo;
		setTimeEnergyIndicator();
	}
}
