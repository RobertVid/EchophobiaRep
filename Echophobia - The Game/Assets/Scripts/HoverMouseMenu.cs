using UnityEngine;
using UnityEngine.EventSystems;
using UnityEngine.UI;


public class HoverMouseMenu : MonoBehaviour
{
    public Text txt;
    public Button btn;
    public Color colorBase, colorHover, colorClick;
    public Animator _anim;


    private void Start()
    {
        txt.color = colorBase;
    }

    public void ColorEnter()
    {
        txt.color = colorHover;
    }

    public void ColorExit()
    {
        txt.color = colorBase;
    }

    private void OnMouseOver()
    {
        txt.color = colorHover;
    }

    public void ClickStartGame()
    {
        
        txt.color = colorClick;
        
        _anim.SetBool("NextPage", false);
        _anim.SetBool("ReturnPage", false);
        _anim.SetTrigger("StatGame");
        txt.color = colorBase;
    }

    public void ClickCredits()
    {
        _anim.SetBool("NextPage", true);
        _anim.SetBool("ReturnPage", false);
        _anim.SetBool("ActualPage", false);
        txt.color = colorClick;
    }

    public void BackMenu()
    {
        _anim.SetBool("NextPage", true);
        _anim.SetBool("ReturnPage", true);
        _anim.SetBool("ActualPage", false);
        txt.color = colorClick;
    }
}
