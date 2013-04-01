using UnityEngine;

namespace Instance
{

public class InstanceAttackBehaviour : InstanceBehaviour
{
	public InstanceAttackBehaviour (InstanceController controller)
		:base (controller) { }

    protected float _time;
    public float _attack_interval = 3.0f;

    public override void OnEnterState() {
        _time = Time.time;
    }


    /*
     *  TODO 
     * 
     *  - Move projectile spawning to weapon.
     *  - Get clone to aim, possible by giving him an aiming scrip
     *    (in which case the aiming script must be adjusted).
     * 
     *  - For running other commands along with the attack, I suggest moving 
     *    the attack logic in the InstanceBehaviour class run() function.
     *    This function gets called by all states that inherit from it,
     *    so an if(_is_time_to_attack) attack() code would work better
     *    than pop an attack state, pushing the other command and then 
     *    re-pushing the attack state.
     * 
     */

    protected void Attack() {

    }

    protected void FireProjectile() {
        Vector3 shootingDirection = _controller._target.transform.position - _controller.transform.position;
        Vector3 spawnPos = _controller.transform.position + shootingDirection;

        spawnPos.y += 1.5f;

//         GameObject projectile = (GameObject) _controller.Instantiate(projectileFab, spawnPos, Quaternion.identity);
// 
//         Projectile projectileScript = projectile.GetComponent<Projectile>();
// 
//         projectileScript.setPosition(spawnPos);
//         projectileScript.setVelocity((hit.point - spawnPos).normalized * projectileSpeed);
//         ammoScript.decreaseAmmo(1);
    }

	public override uint run() {
        if ((Time.time - _time) > _attack_interval) {
            Attack();
            _time = Time.time;
        }
        else {
            // If it's not time to attack, do whatever we were doing previously.
            RunPushedState();
        }

		return base.run();
	}
}

}

