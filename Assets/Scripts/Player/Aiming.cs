using UnityEngine;
using System.Collections;

[RequireComponent(typeof(Animator))]  

public class Aiming : MonoBehaviour {
	
	private Vector3 screenMidPoint;
	
	private Vector3 shootingDirection;
	private RaycastHit hit;
	
	public float projectileSpeed = 30.0f;
	public GameObject projectileFab;
	public GameObject handFab;
	
	public Transform IKtarget;
	
	private bool ikActive = false;
	
	protected Animator anim;
	
	void Start () {
		screenMidPoint = new Vector3(Screen.width/2.0f, Screen.height/2.0f, 0.0f);
		anim = GetComponent<Animator>();

	}
	
	void OnAnimatorIK () {	
		float camRot = Camera.main.transform.eulerAngles.y;
		float playerRot = transform.eulerAngles.y;
		
		float playerCamDiff = Mathf.DeltaAngle(camRot,playerRot);
		
		if(ikActive && playerCamDiff > -95.0f && playerCamDiff < 30.0f) {
			anim.SetIKPositionWeight(AvatarIKGoal.RightHand,1.0f);
			//anim.SetIKRotationWeight(AvatarIKGoal.RightHand,1.0f);
	
		    //set the position and the rotation of the right hand where the external object is
			if(IKtarget != null) {				
				Quaternion q = Quaternion.Euler(0.0f,180.0f,0.0f);
				
				anim.SetIKPosition(AvatarIKGoal.RightHand,IKtarget.position);
				//anim.SetIKRotation(AvatarIKGoal.RightHand,q*IKtarget.rotation);
			}		
		}
	}
	
	void LateUpdate () {
		
		//Move IKtarget according to the look direction of the camera:
		Vector3 pos = transform.position;
		pos.y += 1.5f;
		
		Vector3 dir = (pos - Camera.main.transform.position).normalized;
		
		//A more precise solution would be to use the ray hit point as in shootProjectile.
		IKtarget.position = pos + dir*.75f;
			
		Debug.DrawRay(pos, dir * 5.0f, Color.green);
		
		//(Input should be changed to a cross-platform solution)
		if (Input.GetMouseButtonDown(0)) {
			//For now ikActive never becomes false, will need some sort of timer for that.
			ikActive = true; 
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
