using UnityEngine;

public class WeaponHandler : MonoBehaviour 
{
	private Transform mTransform;
	private bool supporting;
	
	public Weapon weapon;
	public Transform holdingHand;
	public Transform supportHand;
	public Vector3 offset;
	
	void Start () 
	{
		if (weapon)
			mTransform = weapon.transform;
	}
	
	public void PickUpWeapon(Weapon weapon)
	{
		if (this.weapon != null) {
			//Dropped weapon gets collider re-enabled and is moved in front of the character.
			this.weapon.collider.enabled = true;
			this.weapon.rigidbody.velocity = new Vector3(0.0f, 1.0f, 0.0f);			
			
			Vector3 dir = (transform.position - Camera.main.transform.position).normalized;			
			dir *= 4.0f;
			dir.y = 1.0f;
			
			this.weapon.rigidbody.position = transform.position + dir;
			
		}
		this.weapon = weapon;
		weapon.collider.enabled = false;
				
		Start();
	}
	
	// The weapon is located in the holding
	// If supporting, the weapon will be oriented through the vector between
	// the holding hand and support hand (supportHand - holdingHand)
	// otherwise, the weapon is oriented according to the holding hand.
	void LateUpdate () 
	{
		if (!weapon)
			return;
		
		Vector3 handDiff = supportHand.position - holdingHand.position;
		Quaternion rotate = Quaternion.LookRotation(handDiff);
		mTransform.localPosition = holdingHand.position + rotate * offset;
		mTransform.rotation = rotate;
			
	}
}
