using UnityEngine;

public class WeaponHandler : MonoBehaviour 
{
	private Transform mTransform;
	private bool supporting;
	
	public Weapon weapon;
	public Transform holdingHand;
	public Transform supportHand;
	public Vector3 offset;
	public Quaternion rotationOffset;

	private Quaternion rot;
	private Vector3 holdingPos;
	private Animator anim;
	
	void Start () 
	{
		if (weapon)
			mTransform = weapon.transform;

		anim = GetComponent<Animator>();
	}
	
	public void PickUpWeapon(Weapon weapon)
	{
		if (this.weapon != null) {
			this.weapon.collider.isTrigger = false;
			this.weapon.rigidbody.useGravity = true;
			this.weapon.rigidbody.velocity = new Vector3(0.0f, 1.0f, 0.0f);
			
			Vector3 dir = (transform.position - Camera.main.transform.position).normalized;
			dir *= 4.0f;
			dir.y = 1.0f;

			this.weapon.transform.parent = null;
			this.weapon.rigidbody.position = transform.position + dir;
		}

		this.weapon = weapon;
		//weapon.collider.enabled = false;
		weapon.collider.isTrigger = true;
		weapon.rigidbody.useGravity = false;
		//Destroy(weapon.rigidbody);

		weapon.transform.parent = holdingHand;
		weapon.transform.localPosition = new Vector3(0.0f, 0.0f, 0.0f);

		Start();
	}
	
	// The weapon is located in the holding
	// If supporting, the weapon will be oriented through the vector between
	// the holding hand and support hand (supportHand - holdingHand)
	// otherwise, the weapon is oriented according to the holding hand.
	void Update () {
		//Debug.Log(supportHand.rotation);



	}

	void LateUpdate ()
	{
		//Debug.Log(supportHand.rotation);

		if (!weapon)
			return;

		//Vector3 handDiff = supportHand.position - holdingHand.position;
		/*Vector3 buf = new Vector3(handDiff.z, -handDiff.x, handDiff.y).normalized;
		handDiff = buf;
		Debug.Log(handDiff);*/
		rot =  Quaternion.Euler(0.0f,90.0f,-90.0f);
		holdingPos = holdingHand.localPosition;
		mTransform.localPosition = holdingPos + rot * offset;
		if (anim.GetBool("Aiming"))
			mTransform.localRotation = rot * rotationOffset;
		else
			mTransform.localRotation = rot;

		//Vector3 handDiff = supportHand.position - holdingHand.position;
		//Quaternion rotate = Quaternion.LookRotation(handDiff);
		//mTransform.localPosition = holdingHand.position + rot * offset;
		//mTransform.rotation = rot * rotationOffset;

	}

	public bool hasWeapon () {
		return weapon != null;
	}

	public Transform getWeaponMouth () {
		return weapon.transform.FindChild("Mouth");
	}
}
