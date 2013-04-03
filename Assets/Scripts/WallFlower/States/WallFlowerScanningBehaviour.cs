using UnityEngine;
using System.Collections;

namespace WallFlower
{
    /* ********************************************************
     * Look for player or Instances.
     * If the player has left the collision sphere, drop down
     * and close up.
     * If the player is still there, start shooting 
     * ******************************************************** */
    public class WallFlowerScanningBehaviour : WallFlowerBehaviour
    {
        public float timeout
        {
            get { return ((WallFlowerBotController)mController).timeout; }
            set { ((WallFlowerBotController)mController).timeout = value; }
        }

        public WallFlowerScanningBehaviour (WallFlowerBotController controller)
            :base (controller)
        {
        }
        
        protected override uint state
        {
            get { return (uint)WallFlowerState.SCANNING; }
        }

        bool sensePlayer
        {
            get { return ((WallFlowerBotController)mController).sense_player; }
        }

        protected uint next_state
        {
            get { return (timeout > 0.0f)? state : (uint)(sensePlayer? WallFlowerState.SHOOTING : WallFlowerState.IDLE); }
        }

        public override uint run ()
        {
            WallFlowerBotController contr = (WallFlowerBotController)mController;
            uint ret = base.run ();
            if(sensePlayer)
                contr.opened = Mathf.Lerp(1.0f, contr.opened, timeout);
            else
                contr.opened = Mathf.Lerp(contr.opened, 0.0f, timeout);
            ret = next_state;
            timeout -= Time.deltaTime;
            if (ret != state)
            {
                timeout = 1.0f;
                mController.audio.Stop();
            }

            return ret;
        }
    }
}

