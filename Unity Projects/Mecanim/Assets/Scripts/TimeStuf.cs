using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class TimeStuf : MonoBehaviour {
	
	public GameObject checkFab;
	public GameObject charFab;
	
	private List<GameObject> checkpoints = new List<GameObject>();
	private List<GameObject> clones = new List<GameObject>();
	private bool isTeleporting = false;
	private List<float> maxInstanceExtends = new List<float>();
	
	private Animator anim;

	// Use this for initialization
	void Start () {
		anim = GetComponent<Animator>();
	}
	
	// Update is called once per frame
	void Update () {
		if (!isTeleporting) {
			if (Input.GetKeyDown("e")) 
			{	
				setCheckpoint();	
			}
			if (Input.GetKeyDown("t")) 
			{	
				//Debug.Log("go");
				anim.SetBool("Wave", true);
				StartCoroutine(teleport());	
			}
			if (Input.GetKeyDown("r")) 
			{	
				anim.SetBool("Wave", true);
				StartCoroutine(teleportCloner());	
			}
			if (Input.GetKeyDown("y")) 
			{	
				sendYoungestBack();	
			}
			
			//if (currentBaseState.nameHash == idleState)
			//{
			/*if (Input.GetKeyDown("t")) 
			{	
				//Debug.Log(("Wave"));
				anim.SetBool("Wave", true);
			}
			if (Input.GetKeyDown("r")) 
			{	
				anim.SetBool("Wave", true);
			}*/
			//}
			/*if(layer2CurrentState.nameHash == waveState)
			{
				anim.SetBool("Wave", false);
			}*/
		}
	}
	
	void setCheckpoint() {
		float posX = transform.position.x;
		float posZ = transform.position.z;
		
		updateLights(posZ, new Color(0.0f,1.0f,0.0f));
		
		//Create a 3D object at the checkpoint to indicate where it is set:
		GameObject checkpoint = (GameObject) Instantiate(checkFab, new Vector3(posX, 3.5f, posZ), Quaternion.identity);
		
		//Destroy the old checkpoint (for now we only have one checkpoint at a time):
		if (checkpoints.Count > 0) {
			GameObject oldCheck = checkpoints[0];
			GameObject.Destroy(oldCheck);
			checkpoints.RemoveAt(checkpoints.Count-1);
		}
		//Save the new checkpoint to the checkpoint list (checkpoint.length() == 1):
		checkpoints.Add(checkpoint);
	}
	
	public IEnumerator teleport() { 
		if (checkpoints.Count > 0) {
			var checkPosX = (checkpoints[0] as GameObject).transform.position.x;
			var checkPosZ = (checkpoints[0] as GameObject).transform.position.z;
			isTeleporting = true;
			Debug.Log(anim.GetBool("Wave"));
			while (anim.GetBool("Wave")) {
				yield return new WaitForSeconds(1.5f);
			}
			isTeleporting = false;
			transform.position = new Vector3(checkPosX, 0, checkPosZ);
			
			//Remove all instances:
			foreach (GameObject clone in clones) {
				GameObject.Destroy(clone);
			}
			clones = new List<GameObject>();
			maxInstanceExtends = new List<float>();
		}
	}
	
	public IEnumerator teleportCloner() {
		if (checkpoints.Count > 0 && clones.Count < 4) {
			float posZ = transform.position.z;
			
			if (posZ >= -17.5 && posZ < 2.5) {
				maxInstanceExtends.Add(-17.5f);
			}
			else if (posZ >= -27.5 && posZ < -17.5) {
				maxInstanceExtends.Add(-27.5f);
			}
			else 
				maxInstanceExtends.Add(-47.5f);
	 	
			updateLights(posZ, new Color(1.0f,0.0f,0.0f));
			
			
			var checkPosX = (checkpoints[0] as GameObject).transform.position.x;
			var checkPosZ = (checkpoints[0] as GameObject).transform.position.z;
			isTeleporting = true;
			yield return new WaitForSeconds(1.5f);
			isTeleporting = false;
			transform.position = new Vector3(checkPosX, 0, checkPosZ);
			
			float cloneX;
			float cloneZ;
			switch(clones.Count) {
				case 0: 
					cloneX = checkPosX + 1;
					cloneZ = checkPosZ + 1;
					break;
				case 1:
					cloneX = checkPosX - 1;
					cloneZ = checkPosZ + 1;
					break;
				case 2:
					cloneX = checkPosX + 1;
					cloneZ = checkPosZ - 1;
					break;
				default:
					cloneX = checkPosX - 1;
					cloneZ = checkPosZ - 1;
					break;
			}
			GameObject clone = (GameObject) Instantiate(charFab, new Vector3(cloneX, 0, cloneZ), Quaternion.identity);
			clones.Add(clone);
		}
	}
	
	void sendYoungestBack() {
		if (clones.Count > 0) {
			GameObject.Destroy(clones[clones.Count-1]);
			clones.RemoveAt(clones.Count-1);
			maxInstanceExtends.RemoveAt(maxInstanceExtends.Count-1);
		}
	}
	
	void updateLights(float posZ, Color color) {
		GameObject lightObject1 = GameObject.Find("Point light1");
		GameObject lightObject2 = GameObject.Find("Point light2");
		GameObject lightObject3 = GameObject.Find("Point light3");
		Light light1 = lightObject1.GetComponent<Light>();
		Light light2 = lightObject2.GetComponent<Light>();
		Light light3 = lightObject3.GetComponent<Light>();
	
		//First segment:
		if (posZ >= -17.5 && posZ < 2.5) {
			light1.color = color;
			light2.color = new Color(1.0f, 1.0f, 1.0f);
			light3.color = new Color(1.0f, 1.0f, 1.0f);
		}
		//Second segment:
		else if (posZ >= -27.5 && posZ < -17.5) {
			light2.color = color;
			light1.color = new Color(1.0f, 1.0f, 1.0f);
			light3.color = new Color(1.0f, 1.0f, 1.0f);
		}
		//Third segment:
		else {
			light3.color = color;
			light1.color = new Color(1.0f, 1.0f, 1.0f);
			light2.color = new Color(1.0f, 1.0f, 1.0f);
		}
	}

}
