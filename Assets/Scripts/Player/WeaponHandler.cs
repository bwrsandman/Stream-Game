using UnityEngine;
using System.Collections;

public class WeaponHandler : MonoBehaviour 
{
	private Transform mTransform;
	private bool supporting;
	
	public Weapon weapon;
    public Weapon spawnWeapon;
	public Transform holdingHand;
	public Transform supportHand;
	public Vector3 offset;
	public Quaternion rotationOffset;

	private Quaternion rot;
	private Vector3 holdingPos;
	private Animator anim;

	private Ammo ammoScript;
    private bool isShooting = false;

    void Awake () {


        anim = GetComponent<Animator>();
        ammoScript = GetComponent<Ammo>();

        Weapon weap = (Weapon) Instantiate(spawnWeapon, Vector3.zero, Quaternion.identity);
        PickUpWeapon(weap);
    }
	
	void Start () 
	{
		if (weapon)
			mTransform = weapon.transform;
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
			this.weapon.deactivate();
		}

		this.weapon = weapon;
		this.weapon.activate(holdingHand, ammoScript);
		weapon.collider.isTrigger = true;
		weapon.rigidbody.useGravity = false;

		weapon.transform.parent = holdingHand;
		weapon.transform.localPosition = new Vector3(0.0f, 0.0f, 0.0f);

		//Start();
	}
	
	// The weapon is located in the holding
	// If supporting, the weapon will be oriented through the vector between
	// the holding hand and support hand (supportHand - holdingHand)
	// otherwise, the weapon is oriented according to the holding hand.
	void Update () {
	}

	void LateUpdate ()
	{
		if (!weapon)
			return;

		rot =  Quaternion.Euler(0.0f,90.0f,-90.0f);
		holdingPos = holdingHand.localPosition;
		mTransform.localPosition = holdingPos + rot * offset;
		if (anim.GetBool("Aiming"))
			mTransform.localRotation = rot * rotationOffset;
		else
			mTransform.localRotation = rot;

	}

    IEnumerator shoot () {
       while(true) {
           yield return new WaitForSeconds(1.5f);
           weapon.shootProjectile();
       }
    }

	public bool hasWeapon () {
		return weapon != null;
	}

	public Transform getWeaponMouth () {
		return weapon.transform.FindChild("Mouth");
	}

    public void startShooting () {
        if (!isShooting) {
            StartCoroutine("shoot");
            isShooting = true;
        }
    }

    public void stopShooting () {
         if (isShooting) {
            StopCoroutine("shoot");
            isShooting = false;
        }
    }
}