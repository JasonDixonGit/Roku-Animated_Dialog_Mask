'******************************************************************
' Author: Jason Dixon
' Description: Main Thread. 
'******************************************************************

sub Main()
    LaunchHomeScene()
end sub

sub LaunchHomeScene()
    screen = CreateObject("roSGScreen")
    m.port = CreateObject("roMessagePort")
    screen.setMessagePort(m.port)
    homeScene = screen.CreateScene("HomeScene")
    screen.show()
end sub