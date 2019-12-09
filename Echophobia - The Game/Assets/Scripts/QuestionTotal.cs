using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class QuestionTotal : MonoBehaviour
{
    
    public int total = 0;

    // Start is called before the first frame update
    void Awake()
    {
        DontDestroyOnLoad(this.gameObject);
        if (FindObjectsOfType(GetType()).Length > 1)
        {
            Destroy(gameObject);
        }
    }

    public int GetTotal()
    {
        return total;
    }

    public void SetTotal(int _val)
    {
        if (total < 0)
        {
            total = 0;
        }
        else
        {
            total += _val;
        }
    }
}
