
Function Init()
    m.dialog_mask_screen = m.top.findNode("dialog_mask_screen")
    m.top.globalSecondaryColor = "#E40090"
End Function

function SetAppColors()
    m.dialog_mask_screen.MaskLabelColor = m.top.globalSecondaryColor
end function
