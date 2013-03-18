using UnityEngine;

public class Weapon : MonoBehaviour 
{
	public GameObject weapon;
	Transform mTransform;
	public Transform holdingHand;
	public Transform supportHand;
	bool supporting;
	public Vector3 offset;
	
	void Start () 
	{
		if (weapon)
			mTransform = weapon.transform;
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
