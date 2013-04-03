using UnityEngine;
using System.Collections;

public class SalSound : MonoBehaviour {
	
	GameObject sal;
	Animator anim;
	public AudioClip walkingClip;
	public AudioClip runningClip;
	
	AudioSource [] _audioSources;
	
	// Use this for initialization
	void Start () {
		sal = GameObject.Find("Sal");
		anim = sal.GetComponent<Animator>();
		_audioSources = GetComponents<AudioSource>();
	}
	 
	// Update is called once per frame
	void Update () {
		bool isMoving = anim.GetFloat ("Speed") > 0.1f;
		bool isRunning = anim.GetBool("Running");
		Debug.Log("isMoving: " + isMoving + " isRunning:" + isRunning);
		
		if (isMoving) {
			
			if (isRunning) {
				_audioSources[2].clip = runningClip;
			}
			/*else
				audio.clip = walkingClip;*/
			
			if (!_audioSources[2].isPlaying)
				_audioSources[2].Play();
			
		}
		else
			_audioSources[2].Stop();
	}
}
