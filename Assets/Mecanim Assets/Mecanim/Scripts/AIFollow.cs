using UnityEngine;
using System.Collections;

public class AIFollow : MonoBehaviour {
	private Animator anim;							// a reference to the animator on the character
	public Transform m_Player;
	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator>();	
	}
	
	// Update is called once per frame
void Update () {
	float charSpeed;

	if(Vector3.Distance(transform.position, m_Player.position) > 1.5f)
	{
		GetComponent<NavMeshAgent>().enabled = true;
		GetComponent<NavMeshAgent>().destination = m_Player.position;
		charSpeed = GetComponent<NavMeshAgent>().speed;
	}
	else
	{
		GetComponent<NavMeshAgent>().enabled = false;
		charSpeed = 0.0f;
	}
	anim.SetFloat("Speed", charSpeed);
}
	
}