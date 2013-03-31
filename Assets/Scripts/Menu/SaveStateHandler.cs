using UnityEngine;
using System.Collections;

public class SaveStateHandler : MonoBehaviour {
	void Awake () {
        DontDestroyOnLoad (transform.gameObject);
    }
}
