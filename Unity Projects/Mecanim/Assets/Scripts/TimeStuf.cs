using UnityEngine;
using System.Collections;
using System.Collections.Generic;


public class TimeStuf : MonoBehaviour {
	
	public GameObject checkFab;
	public GameObject charFab;
	
	private List<GameObject> checkpoints = new List<GameObject>();
	private List<GameObject> clones = new List<GameObject>();
	private bool isTeleporting = false;
	private List<int> maxInstanceExtends = new List<int>();

	// Use this for initialization
	void Start () {
	
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
				Debug.Log("go");
				teleport();	
			}
			if (Input.GetKeyDown("r")) 
			{	
				teleportCloner();	
			}
			if (Input.GetKeyDown("y")) 
			{	
				sendYoungestBack();	
			}
		}
	}
	
	void setCheckpoint() {
		float posX = transform.position.x;
		float posZ = transform.position.z;
		
		GameObject lightObject;
		Light light;
		
		//First segment:
		if (posZ > -45 && posZ < -4) {
			lightObject = GameObject.Find("Point light1");
			light = lightObject.GetComponent<Light>();
			light.color = new Color(1.0f, 0.0f, 0.0f);
			lightObject = GameObject.Find("Point light2");
			light = lightObject.GetComponent<Light>();
			light.color = new Color(1.0f, 1.0f, 1.0f);
			lightObject = GameObject.Find("Point light3");
			light = lightObject.GetComponent<Light>();
			light.color = new Color(1.0f, 1.0f, 1.0f);
		}
		//Second segment:
		else if (posZ >= -4 && posZ < 24) {
			lightObject = GameObject.Find("Point light2");
			light = lightObject.GetComponent<Light>();
			light.color = new Color(1.0f, 0.0f, 0.0f);
			lightObject = GameObject.Find("Point light1");
			light = lightObject.GetComponent<Light>();
			light.color = new Color(1.0f, 1.0f, 1.0f);
			lightObject = GameObject.Find("Point light3");
			light = lightObject.GetComponent<Light>();
			light.color = new Color(1.0f, 1.0f, 1.0f);
		}
		//Third segment:
		else {
			lightObject = GameObject.Find("Point light3");
			light = lightObject.GetComponent<Light>();
			light.color = new Color(1.0f, 0.0f, 0.0f);
			lightObject = GameObject.Find("Point light1");
			light = lightObject.GetComponent<Light>();
			light.color = new Color(1.0f, 1.0f, 1.0f);
			lightObject = GameObject.Find("Point light2");
			light = lightObject.GetComponent<Light>();
			light.color = new Color(1.0f, 1.0f, 1.0f);
		}
		
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
	
	public /*IEnumerator*/ void teleport() { 
		if (checkpoints.Count > 0) {
			var checkPosX = (checkpoints[0] as GameObject).transform.position.x;
			var checkPosZ = (checkpoints[0] as GameObject).transform.position.z;
			isTeleporting = true;
			//yield return new WaitForSeconds(0.75f);
			isTeleporting = false;
			transform.position = new Vector3(checkPosX, 1f, checkPosZ);
			
			//Remove all instances:
			foreach (GameObject clone in clones) {
				GameObject.Destroy(clone);
			}
			clones = new List<GameObject>();
			maxInstanceExtends = new List<int>();
		}
	}
	
	public /*IEnumerator*/ void teleportCloner() {
		if (checkpoints.Count > 0 && clones.Count < 4) {
			float posZ = transform.position.z;
			
			if (posZ > -45 && posZ < -4) {
				maxInstanceExtends.Add(-4);
			}
			else if (posZ >= -4 && posZ < 24) {
				maxInstanceExtends.Add(24);
			}
			else 
				maxInstanceExtends.Add(45);
	 	
		
			var checkPosX = (checkpoints[0] as GameObject).transform.position.x;
			var checkPosZ = (checkpoints[0] as GameObject).transform.position.z;
			isTeleporting = true;
			//yield return new WaitForSeconds(0.75f);
			isTeleporting = false;
			transform.position = new Vector3(checkPosX, 1, checkPosZ);
			
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
			GameObject clone = (GameObject) Instantiate(charFab, new Vector3(cloneX, 1f, cloneZ), Quaternion.identity);
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

}
