using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Animator))]  

public class Aiming : MonoBehaviour {

    public Vector3 _aim_position;
    private Vector3 screenMidPoint;
	private Vector3 shootingDirection;
	private ThirdPersonCamera camScript;
	private Ammo ammoScript;
	private WeaponHandler weapHandler;
	
	protected Animator anim;
	
	public float projectileSpeed = 30.0f;
	public GameObject projectileFab;
	public GameObject muzzleSparkFab;
	public RaycastHit hit;

	void Start () {
		screenMidPoint = new Vector3(Screen.width/2.0f, Screen.height/2.0f, 0.0f);
		anim = GetComponent<Animator>();
		camScript = GetComponent<ThirdPersonCamera>();
		ammoScript = GetComponent<Ammo>();
		weapHandler = GetComponent<WeaponHandler>();
	}
	
	void LateUpdate () {
		
		//Move IKtarget according to the look direction of the camera:
		Vector3 pos = transform.position;
		pos.y += 1.5f;
		
		Vector3 dir = (pos - Camera.main.transform.position).normalized;
		
		if (anim.GetBool("Aiming")) {
		 	Vector3 forward = Camera.main.transform.TransformDirection(Vector3.forward);	
			float rot = Mathf.Atan2(forward.x, forward.z) * Mathf.Rad2Deg;
			transform.localEulerAngles = new Vector3(0.0f, rot, 0.0f);	
		}
	}
	
	public void shootProjectile (float ammoPerShoot) {
		if (weapHandler.hasWeapon() && ammoScript.canShoot(ammoPerShoot)) {
			bool target = shootRay();

			Transform mouthTransform = weapHandler.getWeaponMouth();
			Vector3 spawnPos = mouthTransform.transform.position;
			
			GameObject projectile = (GameObject) Instantiate(projectileFab, spawnPos, Quaternion.identity);
			GameObject muzzle = (GameObject) Instantiate(muzzleSparkFab, spawnPos, transform.rotation);
			projectile.transform.parent = mouthTransform;
			muzzle.transform.parent = mouthTransform;
			
			Projectile projectileScript = projectile.GetComponent<Projectile>();
			
			projectileScript.setPosition(spawnPos);
			if (target)
				projectileScript.setVelocity((hit.point - spawnPos).normalized * projectileSpeed);
			else
				projectileScript.setVelocity(shootingDirection * projectileSpeed);
			ammoScript.decreaseAmmo(ammoPerShoot);
		}
	}

	public bool shootRay () {
		Ray ray = Camera.main.ScreenPointToRay(screenMidPoint);
		
		Debug.DrawRay(ray.origin, ray.direction * 5.0f, Color.red);
		
		shootingDirection = ray.direction;
		
		if (Physics.Raycast(ray, out hit)) {
			Vector3 objectHit = hit.point;
			return true;
		}
		//If nothing collides make the projectile goes in the direction of the ray.
		else
			return false;
	}
	

}
