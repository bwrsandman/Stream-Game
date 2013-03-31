using UnityEngine;
using System.Collections;
using System.Collections.Generic;

public class TimeActions : MonoBehaviour {
	
	public GameObject checkFab;
	public GameObject charFab;
	public GameObject cloneFab;
	public Material [] cloneMaterials;
	
	private List<GameObject> checkpoints = new List<GameObject>();
	private List<GameObject> clones = new List<GameObject>();
	private bool teleporting = false;
	private List<float> maxInstanceExtends = new List<float>();
	private Animator anim;
	
	void Start () {
		anim = GetComponent<Animator>();
	}
	
	public void setCheckpoint() {
		//NB: Needs to be called on LateUpdate because the position is changed.
		
		float posX = transform.position.x;
		float posY = transform.position.y;
		float posZ = transform.position.z;
		
		//Destroy the old checkpoint (for now we only have one checkpoint at a time):
		if (checkpoints.Count > 0) {
			GameObject oldCheck = checkpoints[0];
			GameObject.Destroy(oldCheck);
			checkpoints.RemoveAt(checkpoints.Count-1);
		}
		
		//Create a 3D object at the checkpoint to indicate where it is set:
		GameObject checkpoint = (GameObject) Instantiate(checkFab, new Vector3(posX, posY + 3.5f, posZ), Quaternion.identity);
		
		//Save the new checkpoint to the checkpoint list (checkpoint.length() == 1):
		checkpoints.Add(checkpoint);
	}
	
	public IEnumerator teleport() { 
		if (checkpoints.Count > 0) {
			anim.SetBool("SettingWaypoint", true);
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
			anim.SetBool("SettingWaypoint", true);
			float posZ = transform.position.z;
			
			if (posZ >= -17.5 && posZ < 2.5) {
				maxInstanceExtends.Add(-17.5f);
			}
			else if (posZ >= -27.5 && posZ < -17.5) {
				maxInstanceExtends.Add(-27.5f);
			}
			else 
				maxInstanceExtends.Add(-47.5f);
	 	
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
			GameObject clone = (GameObject) Instantiate(cloneFab, new Vector3(cloneX, transform.position.y, cloneZ), Quaternion.identity);
			clone.name = "clone" + clones.Count;
			clone.GetComponent<PackHandler>().Pack.renderer.material = cloneMaterials[clones.Count];
			InstanceController ai = (InstanceController)clone.GetComponent("InstanceController");
			ai._player_transform = transform;
			ai.targetTransform = transform;
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
	
	public bool isTeleporting () {
		return teleporting;	
	}
	
	public int GetCloneCount()
	{
		return clones.Count;
	}

    #region Anton's Cool Shit

    public GameObject GetClone(int number) {
        return clones[number];
    }

    #endregion
}
