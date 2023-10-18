use context essentials2021
rodFirkant = rectangle(400, 300, "solid", "red")
hvittKors1 = rectangle(400, 50, "solid",  "white")
hvittKors2 = rectangle(50, 300, "solid",  "white")
blaKors1 = rectangle(400, 25, "solid",  "blue")
blaKors2 = rectangle(25, 300, "solid",  "blue")

underlay-xy((rodFirkant), 0, 0,
  underlay-xy((hvittKors1), 0, -125,
    underlay-xy((hvittKors2), -150, 0, 
      underlay-xy((blaKors1), 162.5, -137.5,
        underlay-xy((blaKors2), 200,0, empty-image)))))