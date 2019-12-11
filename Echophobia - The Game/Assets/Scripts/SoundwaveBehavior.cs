using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class SoundwaveBehavior : MonoBehaviour
{
    public void Initialize(float _size, float _speed)
    {
        StartCoroutine(Grow(_size, _speed));
    }

    IEnumerator Grow(float _size, float _speed)
    {
        yield return new WaitForSeconds(0.01f);

        if (transform.localScale.x < _size)
        {
            transform.localScale += new Vector3(_speed * 0.1f, _speed * 0.1f, _speed * 0.1f);
        }

        if (transform.localScale.x > _size)
        {
            transform.localScale = new Vector3(_size, _size, _size);
            yield return new WaitForSeconds(0.3f);
            Destroy(gameObject);
        }
        else
        {
            StartCoroutine(Grow(_size, _speed));
        }
    }
}
