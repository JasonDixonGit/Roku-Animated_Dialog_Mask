'******************************************************************
' Author: Jason Dixon
' Description: Home Scene 
'******************************************************************

'run initializaion requirements
Function Init()
    m.button = m.top.findNode("button")
    
    setButtonProperties(m)

    m.mask = m.top.findNode("Mask")
    m.maskLabel = m.top.findNode("MaskLabel")

    'initial state
    m.top.maskIsVisible = false

    m.top.observeField("buttonClicked", "OnButtonClick")
End Function

Function setButtonProperties(m)
    m.button.font = "font:LargeSystemFont"
    m.button.font.size = m.button.font.size
    m.button.focusedFont = "font:LargeSystemFont"
    m.button.focusedFont.size = m.button.focusedFont.size+4
End Function

'on create username screen next button click:'
Function OnButtonClick()
    ShowMask("Put Dialog Text Here.")
end Function

Function ShowMask(maskText)
    m.button.setFocus(false)
    m.top.setFocus(true)
    m.top.MaskLabelText = maskText
    AnimateToShowMask = m.top.FindNode("AnimateToShowMask")
    AnimateToShowMask.control = "start"
    m.top.maskIsVisible = true
end Function

Function HideMask()
    m.button.setFocus(true)
    AnimateToHideMask = m.top.FindNode("AnimateToHideMask")
    AnimateToHideMask.control = "start"
    m.top.maskIsVisible = false
end Function

Function OnKeyEvent(key, press) as Boolean
   result = false
    if press then
        'Print key

        if key = "back" then
            if(m.top.maskIsVisible = true) then
                HideMask()
                result = true
            else
                result = true
            end if

        else if(key = "OK") then
            if(m.top.maskIsVisible = true) then
                result = true
            end if

        end if
    end if
    return result
End Function
