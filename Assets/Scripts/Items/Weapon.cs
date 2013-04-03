#region Using
using UnityEngine;
using System.Collections;
#endregion

#region Required components
[RequireComponent(typeof(BoxCollider), typeof(Rigidbody))]
#endregion

public class Weapon : Equipable
{
	public float lifeSpan = 3.0f;
	public float damage = 20.0f;
	public float projectileSpeed = 30.0f;
	public float ammoPerShot = 5.0f;
	public GameObject projectileFab;
	public GameObject muzzleSparkFab;

	private static Vector3 screenMidPoint = new Vector3(Screen.width/2.0f, Screen.height/2.0f, 0.0f);
	private Ammo ammoScript;
	private Transform muzzleTransform;
	private Transform hand;

    void Awake () {
        muzzleTransform = transform.FindChild("Mouth");
    }

	#region Initialization
	void Start () 
	{

	}
	#endregion
	
	#region Internal Member functions
	void Update () 
	{
	
	}

	public void activate (Transform hand, Ammo ammoScript) {
		this.hand = hand;
		this.ammoScript = ammoScript;

	}
	public void deactivate () {
		this.hand = null;
		this.ammoScript = null;
	}

	public float getDamage () {
		return damage;
	}

	public float getLifeSpan () {
		return lifeSpan;
	}

	public float getProjectileSpeed () {
		return projectileSpeed;
	}

	public void shootProjectile () {
		//if (ammoScript.canShoot(ammoPerShot)) {
            audio.Play();

			Vector3 spawnPos = muzzleTransform.transform.position;

			GameObject projectile = (GameObject) Instantiate(projectileFab, spawnPos, Quaternion.identity);
			GameObject muzzleSpark = (GameObject) Instantiate(muzzleSparkFab, spawnPos, transform.rotation);
			projectile.transform.parent = muzzleTransform;
			muzzleSpark.transform.parent = muzzleTransform;
			
			Projectile projectileScript = projectile.GetComponent<Projectile>();
			projectileScript.initialize(spawnPos,  this, hand);

			ammoScript.decreaseAmmo(ammoPerShot);
		//}
	}
	#endregion

}
