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
    
        while(true)
        msg = wait(0, m.port)
        msgType = type(msg)
        if msgType = "roSGNodeEvent"
            

        end if  
    end while
end sub