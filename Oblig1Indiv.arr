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

# I denne oppgaven, har jeg brukt erfaring fra gruppeoppgaven. Etter mye ekspeimentering på gruppeoppgaven kom gruppen fram til å bruke underlay-xy funksjonen for å tegne bilder over hverandre. 
# Flagget består av fem rektangler, ett stort rødt ett, og de 4 rektanglene som sammen lager hvitt og blått kors.
# Siden underlay-xy funksjonen tar 4 argumenter bruker jeg empty-image funksjonen til å fylle ut siste argument uten å endre på outputtet

