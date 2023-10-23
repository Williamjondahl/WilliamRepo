use context essentials2021
include image

import image as img

justering = circle(100, "solid", "transparent")
sirkel1 = circle(50, "solid", "blue")
sirkel2 = circle(40, "solid", "green")
sirkel3 = circle(30, "solid", "red")
sirkel4 = circle(20, "solid", "orange")
pinne = circle(10, "solid", "black")

# vi bruker en 'justering' sirkel slik at de tre pinnene blir justert til høyre, og det blir plass til alle sirklene på display-område

underlay((justering), 
  underlay((sirkel1), 
    underlay((sirkel2), 
      underlay((sirkel3), 
        underlay((sirkel4), 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay((sirkel1), 
    underlay((sirkel2), 
      underlay((sirkel3), 
        underlay-xy((sirkel4), -150, 0, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay((sirkel1), 
    underlay((sirkel2), 
      underlay-xy((sirkel4), -150, -10, 
        underlay-xy((sirkel3), -290, 10, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))
#på sirkel3 måtte vi justere koordinatene litt fra -300, 0 til -290, 10. Dette kommer nok fra at underlay-xy metoden bestemmer posisjon i forhold til til den tideligere tegna sirkelen.

underlay((justering), 
  underlay((sirkel1), 
    underlay((sirkel2), 
      underlay-xy((sirkel3), -290, 10, 
        underlay-xy((sirkel4), -300, 0, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay((sirkel1), 
    underlay-xy((sirkel2), -130, 10, 
      underlay-xy((sirkel3), -290, 10, 
        underlay-xy((sirkel4), -300, 0, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay((sirkel1), 
    underlay-xy((sirkel2), -140, 10, 
      underlay-xy((sirkel3), -300, 0, 
        underlay-xy((sirkel4), 10, 10, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay((sirkel1), 
    underlay-xy((sirkel2), -140, 10, 
      underlay-xy((sirkel3), -150, 0, 
        underlay-xy((sirkel4), 10, 10, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay((sirkel1), 
    underlay-xy((sirkel2), -130, 10, 
      underlay-xy((sirkel3), -140, 10, 
        underlay-xy((sirkel4), -150, 0, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay-xy((sirkel1), -270, 10, 
    underlay-xy((sirkel2), -130, 10, 
      underlay-xy((sirkel3), -140, 10, 
        underlay-xy((sirkel4), -150, 0, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay-xy((sirkel1), -270, 10, 
    underlay-xy((sirkel2), -130, 10, 
      underlay-xy((sirkel3), -140, 10, 
        underlay-xy((sirkel4), -300, 0, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))
underlay((justering), 
  underlay-xy((sirkel1), -290, 10, 
    underlay-xy((sirkel2), -150, 0, 
      underlay-xy((sirkel3), 20, 20, 
        underlay-xy((sirkel4), -300, 0, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay-xy((sirkel1), -290, 10, 
    underlay-xy((sirkel2), -150, 0, 
      underlay-xy((sirkel3), 10, 10, 
        underlay-xy((sirkel4), 10, 10, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay-xy((sirkel1), -290, 10, 
    underlay-xy((sirkel2), -300, 0, 
      underlay-xy((sirkel3), 10, 10, 
        underlay-xy((sirkel4), 10, 10, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay-xy((sirkel1), -290, 10, 
    underlay-xy((sirkel2), -300, 0, 
      underlay-xy((sirkel3), 20, 20, 
        underlay-xy((sirkel4), -150, 0, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

underlay((justering), 
  underlay-xy((sirkel1), -270, 10, 
    underlay-xy((sirkel2), -280, 10, 
      underlay-xy((sirkel3), -290, 10, 
        underlay-xy((sirkel4), -150, 0, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))


underlay((justering), 
  underlay-xy((sirkel1), -270, 10, 
    underlay-xy((sirkel2), -280, 10, 
      underlay-xy((sirkel3), -290, 10, 
        underlay-xy((sirkel4), -300, 0, 
          underlay((pinne), 
            underlay-xy((pinne), -150, 0, 
              underlay-xy((pinne), -300, 0, empty-image))))))))

#bruker empty-image argument på underlay-xy for å fylle in den siste av 4 argumenter som underlay-xy krever, utenom å endre outputtet