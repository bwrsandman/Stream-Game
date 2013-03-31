using UnityEngine;
using System.Collections;

public class BotHealth : Health {

	public GameObject exploderFab;

	protected override void die () {

		//Destruction/death animation/time travel.
		Instantiate(exploderFab, transform.position, Quaternion.identity);
		Destroy(this.gameObject);
	}
}
