using UnityEngine;
using System.Collections;

public class ForegroundMouseEvent : MonoBehaviour {
	private GameObject backgroundObject;
	
	void Start () {
		backgroundObject = GameObject.Find("MenuBackground");
	}
	
	void Update () {
	}
	
	void OnMouseEnter(){
		backgroundObject.GetComponent<ResizeBackground>().DeactivateButtons();
	}
}
