using UnityEngine;
using System.Collections;

public class BotHealth : Health {

	public GameObject exploderFab;
    public float explosionWaitTime = 2.0f;

    private bool dead = false;

	protected override void die () {
        if (dead)
            return;
        dead = true;
        FlowerBotController controller = GetComponent<FlowerBotController>();
        controller.laser.enabled = false;
        controller.enabled = false;

        if (!audio.isPlaying)
            audio.PlayOneShot(controller.deathSound);

        //Destruction/death animation/time travel.
        StartCoroutine(exploder());

    }

    IEnumerator exploder () {
     yield return new WaitForSeconds(explosionWaitTime);
     Instantiate(exploderFab, transform.position, Quaternion.identity);
     Destroy(this.gameObject);

    }
}
