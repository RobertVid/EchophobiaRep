using System.Collections;
using System.Collections.Generic;
using UnityEngine;

public class PlayerStatus : MonoBehaviour
{
    public int HealthPoints;
    private bool bHasRadio = false;

    public void ReceiveItem(int _itemID)
    {
        switch (_itemID)
        {
            case 0:
                // 0 puede ser para healing o algo asi
                break;

            case 1:
                // Radio o Celular
                bHasRadio = true;
                break;
        }
    }
}
