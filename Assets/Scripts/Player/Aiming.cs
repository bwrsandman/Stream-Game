using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Animator))]  

public class Aiming : MonoBehaviour {
	
	private Vector3 screenMidPoint;
	
	private Vector3 shootingDirection;
	public RaycastHit hit;
	
	private ThirdPersonCamera camScript;
	
	protected Animator anim;
	
	public float projectileSpeed = 30.0f;
	public GameObject projectileFab;
	
	void Start () {
		screenMidPoint = new Vector3(Screen.width/2.0f, Screen.height/2.0f, 0.0f);
		anim = GetComponent<Animator>();
		camScript = GetComponent<ThirdPersonCamera>();
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
	
	public void shootRay () {
		Ray ray = Camera.main.ScreenPointToRay(screenMidPoint);
		
		Debug.DrawRay(ray.origin, ray.direction * 5.0f, Color.red);
		
		shootingDirection = ray.direction;
		
		if (Physics.Raycast(ray, out hit)) {
			Vector3 objectHit = hit.point;
		}
		//If nothing collides make the projectile goes in the direction of the ray. 
		//(This will never happen once we have a skybox)
		else
			hit.point = Vector3.zero;
	}
	
	public void shootProjectile () {
		Vector3 spawnPos = transform.position;
		spawnPos.y += 1.5f;
		
		//Make sure it spawns in front of the player:
		spawnPos += shootingDirection; 
		
		GameObject projectile = (GameObject) Instantiate(projectileFab, spawnPos, Quaternion.identity);
		
		Projectile projectileScript = projectile.GetComponent<Projectile>();
		
		projectileScript.setPosition(spawnPos);
		projectileScript.setVelocity((hit.point - spawnPos).normalized * projectileSpeed);
	}
}
