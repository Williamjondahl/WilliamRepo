use context essentials2021
include shared-gdrive("dcic-2021", "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include tables

#Definerer spillefeltet med de 3 pinnene
justering = rectangle(540, 200, "solid" , "transparent")
spillFelt = rectangle(420, 200, "solid", "transparent")
pinne = circle(10, "solid", "black")
feltSteg1 = overlay-align("left", "center", pinne, spillFelt)
feltSteg2 = overlay-align("center", "center", pinne, feltSteg1)
feltSteg3 = overlay-align("right", "center", pinne, feltSteg2)
ferdigFelt = overlay-align("center", "center", feltSteg3, justering)

#Definerer sirklene og deres justeringsbokser
sirkel1 = circle(50, "solid", "blue")
sirkel2 = circle(40, "solid", "purple")
sirkel3 = circle(30, "solid", "yellow")
sirkel4 = circle(20, "solid", "orange")
#Justeringsboksene brukes for å ha noe å justere de forskjellige sirklene til
sirkel1Justering = rectangle(500, 200, "solid", "transparent")
sirkel2Justering = rectangle(480, 200, "solid", "transparent")
sirkel3Justering = rectangle(460, 200, "solid", "transparent")
sirkel4Justering = rectangle(440, 200, "solid", "transparent")

#Disse brukes i move() funksjonen for å bevare posisjone til sirklene
var pos1 = 1
var pos2 = 1
var pos3 = 1
var pos4 = 1
var i = 1
var sirkelLogg = [list: ]
var posLogg = [list: ]
var trekkLogg = [list: ]


#tegner startposisjonen til spillet og gir en liten forklaring av move()
fun start():
  block:
    print("skriv move(sirkel, pinne) for å gjøre ett trekk")
    print("1 er den største sirkelen og 4 er den minste")
    print("1 er pinnen til venstre, 3 er pinnen til høyre")
    print("f.eks move(3, 2) flytter sirkel 3(nest minst) til pinne2 (midterste)")
    print("skriv reset() for å restarte brettet")
    print("skriv start() for å starte fra start igjen")
    print("skriv logg() for å se en logg av alle trekkene dine(bare etter et trekk er gjort)")
    
    pos1 := 1
    pos2 := 1
    pos3 := 1
    pos4 := 1
    
    underlay(move1(1),
      underlay(move2(1),
        underlay(move3(1),
          move4(1))))
  end
end

#Funksjon for å restarte spillebrettet uten teksten fra start()
fun reset():
  block:
    pos1 := 1
    pos2 := 1
    pos3 := 1
    pos4 := 1
    
    underlay(move1(1),
      underlay(move2(1),
        underlay(move3(1),
          move4(1))))
  end
end

#Funksjoner som endrer justeringen til bestemt sirkel basert på posisjonsverdi brukeren gir
fun move1(pos):
  if pos == 1:
    block:
      left1 = underlay-align("left", "center", sirkel1, sirkel1Justering)
      posFiks = underlay-align("center", "center", left1, ferdigFelt)
      posFiks
    end
  else if pos == 2:
    block:
      mid1 = underlay-align("center", "center", sirkel1, sirkel1Justering)
      posFiks = underlay-align("center", "center", mid1, ferdigFelt)
      posFiks
    end
  else if pos == 3:
    block:
      right1 = underlay-align("right", "center", sirkel1, sirkel1Justering)
      posFiks = underlay-align("center", "center", right1, ferdigFelt)
      posFiks
    end
  end
end

fun move2(pos):
  if pos == 1:
    block:
      left2 = underlay-align("left", "center", sirkel2, sirkel2Justering)
      posFiks = underlay-align("center", "center", left2, ferdigFelt)
      posFiks
    end
  else if pos == 2:
    block:
      mid2 = underlay-align("center", "center", sirkel2, sirkel2Justering)
      posFiks = underlay-align("center", "center", mid2, ferdigFelt)
      posFiks
    end
  else if pos == 3:
    block:
      right2 = underlay-align("right", "center", sirkel2, sirkel2Justering)
      posFiks = underlay-align("center", "center", right2, ferdigFelt)
      posFiks
    end
  end
end
  
fun move3(pos):
  if pos == 1:
    block:
      left3 = underlay-align("left", "center", sirkel3, sirkel3Justering)
      posFiks = underlay-align("center", "center", left3, ferdigFelt)
      posFiks
    end
  else if pos == 2:
    block:
      mid3 = underlay-align("center", "center", sirkel3, sirkel3Justering)
      posFiks = underlay-align("center", "center", mid3, ferdigFelt)
      posFiks
    end
  else if pos == 3:
    block:
      right3 = underlay-align("right", "center", sirkel3, sirkel3Justering)
      posFiks = underlay-align("center", "center", right3, ferdigFelt)
      posFiks
    end
  end
end

fun move4(pos):
  if pos == 1:
    block:
      left4 = underlay-align("left", "center", sirkel4, sirkel4Justering)
      posFiks = underlay-align("center", "center", left4, ferdigFelt)
      posFiks
    end
  else if pos == 2:
    block:
      mid4 = underlay-align("center", "center", sirkel4, sirkel4Justering)
      posFiks = underlay-align("center", "center", mid4, ferdigFelt)
      posFiks
    end
  else if pos == 3:
    block:
      right4 = underlay-align("right", "center", sirkel4, sirkel4Justering)
      posFiks = underlay-align("center", "center", right4, ferdigFelt)
      posFiks
    end
  end
end

#Funksjon som tegner modellen for trekket, bruker pos1 pos2.. variablene for å beholde posisjonen til alle sirklene etter man har gjort ett trekk
fun tegnAlle():
  #If statement som sjekker om brukeren har vunnet spillet
  #sjekker om alle posisjonene = 3
  #På grunn av gyldighetssjekk i move() vil disse posisjonene bare være like om brukeren har vunnet
  if (pos1 == 3) and (pos2 == 3) and (pos3 == 3) and (pos4 == 3):
    block:
      print("Gratulerer du vant!")
      underlay(move1(pos1),
        underlay(move2(pos2),
          underlay(move3(pos3),
            move4(pos4))))
        
    end
  else:
    block:
      underlay(move1(pos1),
        underlay(move2(pos2),
          underlay(move3(pos3),
            move4(pos4))))
    end
  end
end

#funksjon som brukeren kan skrive inn i interaksjonsvinduet for å gjøre ett trekk. f.eks move(4, 3) flytter sirkel 4(den minste) til pinne 3(høyre)
fun move(sirkel, stav):
  block:
    if (sirkel == 1):
      block:
        #Gyldighets sjekk, sørger for at man ikke kan gjøre ulovlige trekk
        if ((pos1 == pos2) or (pos1 == pos3) or (pos1 == pos4)) or ((pos2 == stav) or (pos3 == stav) or (pos4 == stav)):
          "ugyldig trekk"
        else:
          block:
            #oppdaterer posisjonsvariabel
            pos1 := stav
            #legger til verdier i lister som brukes for å lage logg tabell
            sirkelListe = [list: sirkel]
            posListe = [list: stav]
            iListe = [list: i]
            sirkelLogg := sirkelLogg.append(sirkelListe)
            posLogg := posLogg.append(posListe)
            trekkLogg := trekkLogg.append(iListe)
            #teller antall trekk gjort
            i := i + 1
            tegnAlle()
          end
        end
      end
    else if (sirkel == 2):
      block:
        if ((pos2 == pos3) or (pos2 == pos4)) or ((pos3 == stav) or (pos4 == stav)):
          "ugyldig trekk"
        else:
          block:
            pos2 := stav
            sirkelListe = [list: sirkel]
            posListe = [list: stav]
            iListe = [list: i]
            sirkelLogg := sirkelLogg.append(sirkelListe)
            posLogg := posLogg.append(posListe)
            trekkLogg := trekkLogg.append(iListe)
            i := i + 1
            tegnAlle()
          end
        end
      end
    else if (sirkel == 3):
      block:
        if (pos3 == pos4) or (pos4 == stav):
          "ugyldig trekk"
        else:
          block:
            pos3 := stav
            sirkelListe = [list: sirkel]
            posListe = [list: stav]
            iListe = [list: i]
            sirkelLogg := sirkelLogg.append(sirkelListe)
            posLogg := posLogg.append(posListe)
            trekkLogg := trekkLogg.append(iListe)
            i := i + 1
            tegnAlle()
          end
        end
      end
    else if (sirkel == 4):
      block:
        pos4 := stav
        sirkelListe = [list: sirkel]
        posListe = [list: stav]
        iListe = [list: i]
        sirkelLogg := sirkelLogg.append(sirkelListe)
        posLogg := posLogg.append(posListe)
        trekkLogg := trekkLogg.append(iListe)
        i := i + 1
        tegnAlle()
      end
    else: 
      "ugyldig input"
    end
  end
end

#Funksjon som lager tabell fra listene som bevarer trekk, sirkel og posisjonsverdier.
fun logg():
  loggTabell = [table-from-columns:
    {"Trekk"; trekkLogg},
    {"Sirkel"; sirkelLogg},
    {"Posisjon"; posLogg}
  ]
 
    loggTabell
end


start()
