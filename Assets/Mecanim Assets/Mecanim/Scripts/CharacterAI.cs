using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class CharacterAI : MonoBehaviour {
	
	private TimeActions timeActions;
	
	/* TODO: Create a Character class with the subclasses being the main characters and the clones
	 * to facilitate all their implementations.
	 */ 
    /*Transform playerTransform //the player's position
	{
		get{
			return master.transform;
		}
		set{
			playerTransform=value;
		}
	}*/
	Transform playerTransform;
	Transform cloneTransform; //current transform data of this clone
    private float moveSpeed = 3.0f; //move speed
    private float rotationSpeed = 3.0f; //speed of turning
	private static CharControl master;
	
    void Awake()
    {
    	cloneTransform = transform; //cache transform data for easy access/preformance
    }
     
    void Start()
    {
		timeActions = GetComponent<TimeActions>();
		master = GetComponent<CharControl>();
		playerTransform = GameObject.FindWithTag("Player").transform;
    }
     
    void Update () {
		for(int i = 0; i < timeActions.GetCloneCount(); ++i)
		{
			GameObject currentClone = GameObject.Find("clone"+i);
			if (currentClone)
			{
				cloneTransform = currentClone.transform; //target the player
				if(Vector3.Distance(cloneTransform.position, playerTransform.position) > 1.0f)
				{
				    //rotate to look at the player
				    cloneTransform.rotation = Quaternion.Slerp(cloneTransform.rotation,
				    Quaternion.LookRotation(playerTransform.position - cloneTransform.position), rotationSpeed*Time.deltaTime);
				    //move towards the player
				    cloneTransform.position += cloneTransform.forward * moveSpeed * Time.deltaTime;
				}
			}
		}
    }
}
