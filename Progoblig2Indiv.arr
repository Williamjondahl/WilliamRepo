use context essentials2021
include color

fun tegnFlagg(land):
  if land == "Norge":
    block:
      storRektangel = rectangle(220, 160, "solid", color(186, 12, 47, 1))
      kors1Y = rectangle(40, 160, "solid", color(255, 255, 255, 1))
      kors1X = rectangle(220, 40, "solid", color(255, 255, 255, 1))
      kors2Y = rectangle(20, 160, "solid", color(0, 32, 91, 1))
      kors2X = rectangle(220, 20, "solid", color(0, 32, 91, 1))
      kors1YJustering = rectangle(100, 160, "solid", "transparent")
      kors2YJustering = rectangle(80, 160, "solid", "transparent")
      
      steg1 = overlay-align("left", "center", kors2YJustering, kors2Y)
      steg2 = overlay-align("center", "center", kors2X, steg1)
      steg3 = overlay-align("left", "center", kors1YJustering, kors1Y)
      steg4 = overlay(steg2, steg3)
      steg5 = overlay-align("center", "center", steg4, kors1X)
      steg6 = overlay(steg5, storRektangel)
      steg6
      
    end
  else if  land == "Sverige":
    block:
      storRektangel = rectangle(240, 150, "solid", color(0, 106, 167, 1))
      korsY = rectangle(30, 150, "solid", color(254, 204, 2, 1))
      korsX = rectangle(240, 30, "solid", color(254, 204, 2, 1))
      korsYJustering = rectangle(80, 150, "solid", "transparent")
      
      steg1 = overlay-align("left", "center", korsY, korsYJustering)
      steg2 = overlay-align("center", "center", korsX, steg1)
      steg3 = overlay(steg2, storRektangel)
      steg3
    end
  else if land == "Danmark":
    block:
      storRektangel = rectangle(370, 280, "solid", color(200, 16, 46, 1))
      korsY = rectangle(30, 280, "solid", color(255, 255, 255, 1))
      korsX = rectangle(370, 30, "solid", color(255, 255, 255, 1))
      korsYJustering = rectangle(80, 280, "solid", "transparent")
      
      steg1 = overlay-align("left", "center", korsY, korsYJustering)
      steg2 = overlay-align("center", "center", korsX, steg1)
      steg3 = overlay(steg2, storRektangel)
      steg3
    end
  else if land == "Finland":
    block:
      #forhold skalert med 1.5
      storRektangel = rectangle(260, 180, "solid", color(255, 255, 255, 1))
      korsY = rectangle(45, 180, "solid", color(0, 47, 108, 1))
      korsX = rectangle(260, 45, "solid", color(0, 47, 108, 1))
      korsYJustering = rectangle(105, 180, "solid", "transparent")
      
      steg1 = overlay-align("left", "center", korsY, korsYJustering)
      steg2 = overlay-align("center", "center", korsX, steg1)
      steg3 = overlay(steg2, storRektangel)
      steg3
    end
  else if land == "Island":
    block:
      storRektangel = rectangle(250, 180, "solid", color(2, 82, 156, 1))
      kors1Y = rectangle(40, 180, "solid", color(255, 255, 255, 1))
      kors1X = rectangle(250, 40, "solid", color(255, 255, 255, 1))
      kors2Y = rectangle(20, 180, "solid", color(220, 30, 53, 1))
      kors2X = rectangle(250, 20, "solid", color(220, 30, 53, 1))
      kors1YJustering = rectangle(100, 180, "solid", "transparent")
      kors2YJustering = rectangle(80, 180, "solid", "transparent")
      
      steg1 = overlay-align("left", "center", kors2YJustering, kors2Y)
      steg2 = overlay-align("center", "center", kors2X, steg1)
      steg3 = overlay-align("left", "center", kors1YJustering, kors1Y)
      steg4 = overlay(steg2, steg3)
      steg5 = overlay-align("center", "center", steg4, kors1X)
      steg6 = overlay(steg5, storRektangel)
      steg6
    end
  else if land == "Færøyene":
    block:
      storRektangel = rectangle(220, 160, "solid", color(255, 255, 255, 1))
      kors1Y = rectangle(40, 160, "solid", color(0, 101, 189, 1))
      kors1X = rectangle(220, 40, "solid", color(0, 101, 189, 1))
      kors2Y = rectangle(20, 160, "solid", color(237, 41, 57, 1))
      kors2X = rectangle(220, 20, "solid", color(237, 41, 57, 1))
      kors1YJustering = rectangle(100, 160, "solid", "transparent")
      kors2YJustering = rectangle(80, 160, "solid", "transparent")
      
      steg1 = overlay-align("left", "center", kors2YJustering, kors2Y)
      steg2 = overlay-align("center", "center", kors2X, steg1)
      steg3 = overlay-align("left", "center", kors1YJustering, kors1Y)
      steg4 = overlay(steg2, steg3)
      steg5 = overlay-align("center", "center", steg4, kors1X)
      steg6 = overlay(steg5, storRektangel)
      steg6
    end
  else: 
    "ugyldig land"
  end
end 

tegnFlagg("Island")
  
