using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TimeActions : MonoBehaviour {
	
	public GameObject checkFab;
	public GameObject charFab;
	public GameObject cloneFab;
	
	private List<GameObject> checkpoints = new List<GameObject>();
	private List<GameObject> clones = new List<GameObject>();
	private bool teleporting = false;
	private List<float> maxInstanceExtends = new List<float>();
	
	void Start () {
		
	}
	
	public void setCheckpoint() {
		float posX = transform.position.x;
		float posY = transform.position.y;
		float posZ = transform.position.z;
		
		//updateLights(posZ, new Color(0.0f,1.0f,0.0f));
		
		//Create a 3D object at the checkpoint to indicate where it is set:
		GameObject checkpoint = (GameObject) Instantiate(checkFab, new Vector3(posX, posY + 3.5f, posZ), Quaternion.identity);
		
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
			var checkPosY = (checkpoints[0] as GameObject).transform.position.y;
			var checkPosZ = (checkpoints[0] as GameObject).transform.position.z;
			teleporting = true;			
			yield return new WaitForSeconds(1.5f);
			teleporting = false;
			transform.position = new Vector3(checkPosX, checkPosY - 3.5f, checkPosZ);
			
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
	 	
			//updateLights(posZ, new Color(1.0f,0.0f,0.0f));
			
			
			//Update position of character after a waiting period (should be updated to event based instead of time based):
			var checkPosX = (checkpoints[0] as GameObject).transform.position.x;
			var checkPosY = (checkpoints[0] as GameObject).transform.position.y;
			var checkPosZ = (checkpoints[0] as GameObject).transform.position.z;
			teleporting = true;
			yield return new WaitForSeconds(1.5f);
			teleporting = false;
			transform.position = new Vector3(checkPosX, checkPosY - 3.5f, checkPosZ);
			
			//Find position for new instance:
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
			GameObject clone = (GameObject) Instantiate(cloneFab, new Vector3(cloneX, transform.position.y + 1.0f, cloneZ), Quaternion.identity);
			clone.name = "clone" + clones.Count;
			AIFollow ai = (AIFollow)clone.GetComponent("AIFollow");
			ai.m_Player = transform;
			clones.Add(clone);
		}
	}
	
	public void sendYoungestBack() {
		if (clones.Count > 0) {
			GameObject.Destroy(clones[clones.Count-1]);
			clones.RemoveAt(clones.Count-1);
			maxInstanceExtends.RemoveAt(maxInstanceExtends.Count-1);
		}
	}
	
	/*void updateLights(float posZ, Color color) {
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
	}*/
	public bool isTeleporting () {
		return teleporting;	
	}
	
	public int GetCloneCount()
	{
		return clones.Count;
	}
}
