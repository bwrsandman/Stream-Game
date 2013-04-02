using UnityEngine;
using System.Collections;

public class MusicThemeController : MonoBehaviour
{
    public bool fight = false;
    AudioSource [] _audioSources;
    // Use this for initialization
    void Start ()
    {
        _audioSources = GetComponents<AudioSource>();
    }

    public void setFight ()
    {
        _audioSources[0].PlayDelayed(30);
        _audioSources[1].Play();
    }

    public void Update()
    {
        if(fight && !_audioSources[1].isPlaying)
            setFight ();
        fight = false;
    }
}
