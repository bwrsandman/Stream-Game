using UnityEngine;
using System.Collections;

public class TimeRift : Activateable 
{

    public GameObject OpenState;
    public GameObject ClosedState;
    public AudioClip OpenSound;
    private Transform crack;
    private bool isOpen = false;

	// Use this for initialization
	void Awake () {
        crack = ClosedState.transform.FindChild("CrackInSpaceTime");
        OpenState.SetActive(false);
	}
	
	// Update is called once per frame
	void Update () {
	
	}

    public void open(TimeActions timeScript, Animator anim) {
        isOpen = true;
        anim.SetBool("SettingWaypoint", true);
        timeScript.setCheckpoint();
        StartCoroutine(setState());
        audio.PlayOneShot(OpenSound);
        audio.PlayDelayed(1.0f);
        //Save state of the world.
    }

    IEnumerator setState () {
        yield return new WaitForSeconds(1.0f);
        OpenState.SetActive(true);
        ClosedState.SetActive(false);
    }

    protected override void OnTriggerEnter(Collider other)
    {
        if (!isOpen && other.name == "PlayerCamera") {
            mPlayerActivate.setSelectedObject(this, Vector3.zero);
            mPlayerActivate.activationTexture.transform.position = crack.position + Vector3.up;
        }
        else
             mPlayerActivate.unsetSelectedObject(this);
    }
}
