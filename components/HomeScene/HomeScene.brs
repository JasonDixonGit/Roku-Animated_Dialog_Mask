
Function Init()
    ?"home scene init"
    m.dialog_mask_screen = m.top.findNode("dialog_mask_screen")
    m.top.globalSecondaryColor = "#E40090"
    SetAppColors()
    runExample()
End Function

function SetAppColors()
    m.dialog_mask_screen.MaskLabelColor = m.top.globalSecondaryColor
end function

sub runExample()
    ?"Running example"
    m.dialog_mask_screen.visible = true
    m.dialog_mask_screen.setFocus(true)
end sub