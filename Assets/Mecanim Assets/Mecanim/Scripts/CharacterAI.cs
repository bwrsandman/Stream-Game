using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CharacterAI : MonoBehaviour {
	
    Transform target; //the player's target
    private float moveSpeed = 3.0f; //move speed
    private float rotationSpeed = 3.0f; //speed of turning
	
    Transform myTransform; //current transform data of this enemy
	
	private TimeActions timeActions;
	
    void Awake()
    {
    	myTransform = transform; //cache transform data for easy access/preformance
    }
     
    void Start()
    {
	    target = GameObject.FindWithTag("Player").transform; //target the player
		timeActions = GetComponent<TimeActions>();
    }
     
    void Update () {	
		for(int i = 0; i < timeActions.GetCloneCount(); ++i)
		{
			GameObject currentClone = GameObject.Find("clone"+i);
			if (currentClone)
			{
				myTransform = currentClone.transform; //target the player
			    //rotate to look at the player
			    myTransform.rotation = Quaternion.Slerp(myTransform.rotation,
			    Quaternion.LookRotation(target.position - myTransform.position), rotationSpeed*Time.deltaTime);
			     
			    //move towards the player
			    myTransform.position += myTransform.forward * moveSpeed * Time.deltaTime;
			}
		}
    }
}
