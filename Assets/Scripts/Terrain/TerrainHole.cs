using UnityEngine;
using System.Collections;

public class TerrainHole : MonoBehaviour
{

	public TerrainCollider tCollider;
	public GameObject landscape;
	public Camera camera;
	AudioEchoFilter echo;

	void Start ()
	{
		echo = camera.GetComponent<AudioEchoFilter>();
	}

	void OnTriggerEnter (Collider c)
	{
		if (c.tag == "Player") {
			Physics.IgnoreCollision(c, tCollider, true);
			landscape.GetComponent<Terrain>().enabled = false;
			echo.enabled = true;
		} else if (c.tag == "clone") {
			Physics.IgnoreCollision(c, tCollider, true);
		}
	}

	void OnTriggerExit (Collider c)
	{
		if (c.tag == "Player") {
			Physics.IgnoreCollision(c, tCollider, false);
			landscape.GetComponent<Terrain>().enabled = true;
			echo.enabled = false;
		} else if (c.tag == "clone") {
			Physics.IgnoreCollision(c, tCollider, false);
		}
	}

}