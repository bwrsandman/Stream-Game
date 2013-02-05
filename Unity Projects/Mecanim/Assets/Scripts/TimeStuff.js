#pragma strict

public var checkFab : GameObject;
public var charFab : GameObject;

private var checkpoints = new Array();
private var clones = new Array();
private var isTeleporting = false;
private var maxInstanceExtends = new Array();

function Start () {

}

function Update () {
	if (!isTeleporting) {
		if (Input.GetKeyDown("e")) 
		{	
			setCheckpoint();	
		}
		if (Input.GetKeyDown("t")) 
		{	
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

function setCheckpoint() {
	var posX = transform.position.x;
	var posZ = transform.position.z;
	
	var lightObject : GameObject;
	var light : Light;
	
	//First segment:
	if (posZ > -45 && posZ < -4) {
		lightObject = GameObject.Find("Point light1");
		light = lightObject.GetComponent(Light);
		light.color = Color(1.0, 0.0, 0.0);
		lightObject = GameObject.Find("Point light2");
		light = lightObject.GetComponent(Light);
		light.color = Color(1.0, 1.0, 1.0);
		lightObject = GameObject.Find("Point light3");
		light = lightObject.GetComponent(Light);
		light.color = Color(1.0, 1.0, 1.0);
	}
	//Second segment:
	else if (posZ >= -4 && posZ < 24) {
		lightObject = GameObject.Find("Point light2");
		light = lightObject.GetComponent(Light);
		light.color = Color(1.0, 0.0, 0.0);
		lightObject = GameObject.Find("Point light1");
		light = lightObject.GetComponent(Light);
		light.color = Color(1.0, 1.0, 1.0);
		lightObject = GameObject.Find("Point light3");
		light = lightObject.GetComponent(Light);
		light.color = Color(1.0, 1.0, 1.0);
	}
	//Third segment:
	else {
		lightObject = GameObject.Find("Point light3");
		light = lightObject.GetComponent(Light);
		light.color = Color(1.0, 0.0, 0.0);
		lightObject = GameObject.Find("Point light1");
		light = lightObject.GetComponent(Light);
		light.color = Color(1.0, 1.0, 1.0);
		lightObject = GameObject.Find("Point light2");
		light = lightObject.GetComponent(Light);
		light.color = Color(1.0, 1.0, 1.0);
	}
	
	//Create a 3D object at the checkpoint to indicate where it is set:
	var checkpoint : GameObject = Instantiate(checkFab, Vector3(posX, 3.5, posZ), Quaternion.identity);
	
	//Destroy the old checkpoint (for now we only have one checkpoint at a time):
	if (checkpoints.length > 0) {
		var oldCheck : GameObject = checkpoints[0];
		GameObject.Destroy(oldCheck);
		checkpoints.pop();
	}
	//Save the new checkpoint to the checkpoint list (checkpoint.length() == 1):
	checkpoints.push(checkpoint);
}

public function teleport() { 
	if (checkpoints.length > 0) {
		var checkPosX = (checkpoints[0] as GameObject).transform.position.x;
		var checkPosZ = (checkpoints[0] as GameObject).transform.position.z;
		isTeleporting = true;
		yield WaitForSeconds(0.75);
		isTeleporting = false;
		transform.position = Vector3(checkPosX, 1, checkPosZ);
		
		//Remove all instances:
		for (var clone : GameObject in clones) {
			GameObject.Destroy(clone);
		}
		clones = new Array();
		maxInstanceExtends = new Array();
	}
}

public function teleportCloner() {
	if (checkpoints.length > 0 && clones.length < 4) {
		var posZ = transform.position.z;
		
		if (posZ > -45 && posZ < -4) {
			maxInstanceExtends.push(-4);
		}
		else if (posZ >= -4 && posZ < 24) {
			maxInstanceExtends.push(24);
		}
		else 
			maxInstanceExtends.push(45);
 	
	
		var checkPosX = (checkpoints[0] as GameObject).transform.position.x;
		var checkPosZ = (checkpoints[0] as GameObject).transform.position.z;
		isTeleporting = true;
		yield WaitForSeconds(0.75);
		isTeleporting = false;
		transform.position = Vector3(checkPosX, 1, checkPosZ);
		
		var cloneX;
		var cloneZ;
		switch(clones.length) {
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
			case 3:
				cloneX = checkPosX - 1;
				cloneZ = checkPosZ - 1;
				break;
		}
		var clone : GameObject = Instantiate(charFab, Vector3(cloneX, 1, cloneZ), Quaternion.identity);
		clones.push(clone);
	}
}

function sendYoungestBack() {
	if (clones.length > 0) {
		GameObject.Destroy(clones[clones.length-1]);
		clones.pop();
		maxInstanceExtends.pop();
	}
}
