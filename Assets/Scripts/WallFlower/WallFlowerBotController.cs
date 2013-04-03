#region Using
using UnityEngine;
using System.Collections;

using WallFlower;
#endregion

namespace WallFlower
{
    public enum WallFlowerState {
        IDLE,
        SCANNING,
        SHOOTING,
    }
}

public class WallFlowerBotController : StateMachineController
{
    #region Constants
    const float LOOKSPEED = 4.0f;
    const float max_closed = 110.0f;
    #endregion
    
    #region Public fields
    public float _sphereRadius = 1.0f;
    public float timeout = 1.0f;
    public float opened = 0.0f;
    public MeshFilter [] prisms = new MeshFilter[3];
    public bool sense_player;
    public LineRenderer laser;

    public float idleVolume = 0.1f;
    public float volume = 1.0f;

    public AudioClip idleSound;
    public AudioClip scanningSound;
    public AudioClip deathSound;
    public AudioClip sweepSound;
    #endregion
    
    #region Members
    Health healthScript;
    MusicThemeController music;
    #endregion
    
    #region Properties
    protected override uint beginState {
        get {
            return (uint) WallFlowerState.IDLE;
        }
    }
    
    protected override float lookSpeed {
        get { return 0.0f; }
    }
    
    public override Vector3 otherDirection {
        get { return transform.forward; }
    }
    
    protected override Vector3 mOffset {
        get { return Vector3.zero; }
    }
    #endregion
    
    #region Initialization
    protected override void Start () 
    {
        base.Start();
        laser = GetComponentInChildren<LineRenderer>();
        healthScript = GetComponent<Health>();
        GameObject cam = GameObject.FindGameObjectWithTag("MainCamera");
        music = cam.GetComponent<MusicThemeController>();
        if(!idleSound || !scanningSound || !deathSound || !sweepSound)
            Debug.LogError("Audio Source missing");
    }
    
    protected override void BuildBehaviours()
    {
        behaviour = new WallFlowerBehaviour[] {
            new WallFlowerIdleBehaviour(this),
            new WallFlowerScanningBehaviour(this),
            new WallFlowerShootingBehaviour(this),
        };
    }
    #endregion
    
    #region Public functions
    public void close_prism()
    {
        opened = Mathf.Max(Mathf.Min(1.0f, opened), 0.0f);
        for(int i = 0; i < 3; ++i)
        {
            float closed = Mathf.Max(Mathf.Min(1.0f, ((1.0f - opened) - i * 0.05f) * 1.8f), 0.0f);
            Transform tran = prisms[i].transform;
            tran.localRotation = Quaternion.Euler(0.0f, 0.0f, i * -120.0f) * 
                                 Quaternion.Euler(max_closed * closed, 0.0f, 0.0f);
        }        
    }

    public void faceTarget(float delta)
    {
        faceTarget(delta, 1.0f);
    }

    public float faceTarget(float d_o, float d_s)
    {
        Quaternion target = lookAtTarget(d_o);
        transform.rotation = Quaternion.Slerp(transform.rotation,
        target, d_s * lookSpeed * Time.deltaTime);
        return Mathf.Abs(Quaternion.Angle(transform.rotation, target));
    }
    #endregion

    protected override void Update ()
    {
        base.Update ();
        music.fight |= sense_player;
    }
}
