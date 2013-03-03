using UnityEngine;
using System.Collections;

public class Aiming : MonoBehaviour {
	
	private Vector3 screenMidPoint;
	
	private Vector3 shootingDirection;
	private RaycastHit hit;
	
	public float projectileSpeed = 30.0f;
	public GameObject projectileFab;

	
	void Start () {
		screenMidPoint = new Vector3(Screen.width/2.0f, Screen.height/2.0f, 0.0f);
	}
	
	void Update () {
		//(Input should be changed to a cross-platform solution)
		if (Input.GetMouseButtonDown(0)) {
			
			//Some animation stuff should be here.
			
			shootRay();
			shootProjectile();
		}
	}
	
	void shootRay () {
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
	
	void shootProjectile () {
		Vector3 spawnPos = transform.position;
		spawnPos.y += 1.5f;
		
		//Make sure it spawns in front of the player:
		spawnPos += shootingDirection; 
		
		GameObject projectile = (GameObject) Instantiate(projectileFab, spawnPos, Quaternion.identity);

		projectile.transform.position = spawnPos;
		if (!hit.point.Equals(Vector3.zero))
			projectile.rigidbody.velocity = (hit.point - spawnPos).normalized * projectileSpeed;
		
		//If nothing collides make the projectile goes in the direction of the ray.
		//(This will never happen once we have a skybox, and then shootingDirection will not be needed anymore)
		else
			projectile.rigidbody.velocity = shootingDirection * projectileSpeed;
	}
}
