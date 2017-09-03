'******************************************************************
' Author: Jason Dixon
' Description: Home Scene 
'******************************************************************

'run initializaion requirements, then run example'
Function Init()
    m.dialog_mask_screen = m.top.findNode("dialog_mask_screen")
    m.top.globalSecondaryColor = "#E40090"
    SetAppColors()
    runExample()
End Function

'example of setting mask label to custom color'
function SetAppColors()
    m.dialog_mask_screen.MaskLabelColor = m.top.globalSecondaryColor
end function

'show dialog_mask_screen and set focus on central button'
sub runExample()
    m.dialog_mask_screen.visible = true
    m.dialog_mask_screen.setFocus(true)
end sub