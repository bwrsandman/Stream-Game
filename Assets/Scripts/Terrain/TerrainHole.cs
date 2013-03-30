using UnityEngine;
using System.Collections;

public class TerrainHole : MonoBehaviour
{

	public TerrainCollider tCollider;
	public Camera camera;
	AudioEchoFilter echo;

	void Start ()
	{
		echo = camera.GetComponent<AudioEchoFilter>();
	}

	void OnTriggerEnter (Collider c)
	{
		if (c.tag == "player") {
			Physics.IgnoreCollision(c, tCollider, true);
			echo.enabled = true;
		} else if (c.tag == "clone") {
			Physics.IgnoreCollision(c, tCollider, true);
		}
	}

	void OnTriggerExit (Collider c)
	{
		if (c.tag == "player") {
			Physics.IgnoreCollision(c, tCollider, false);
			echo.enabled = false;
		} else if (c.tag == "clone") {
			Physics.IgnoreCollision(c, tCollider, false);
		}
	}

}