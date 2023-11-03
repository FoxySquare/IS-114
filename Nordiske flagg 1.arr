use context essentials2021

#Variabler for Flagg

#Norges flagg
NRr = rectangle(60, 60, "solid", "crimson")
NWr = rectangle(70, 70, "solid", "white")
NRl = rectangle(120, 60, "solid", "crimson")
NWl = rectangle(130, 70, "solid", "white")

Norges-flagg = 
  overlay-align("left", "top", NRr,
    overlay-align("left", "bottom", NRr,
      overlay-align("left", "top", NWr,
        overlay-align("left", "bottom", NWr,
          overlay-align("right", "top", NRl,
            overlay-align("right", "bottom", NRl,
              overlay-align("right", "top", NWl,
                overlay-align("right", "bottom", NWl,
                  (rectangle(220, 160, "solid", "navy"))))))))))

#Sveriges flagg
SBr = rectangle(50, 40, "solid", "dodger-blue")
SBl = rectangle(90, 40, "solid", "dodger-blue")

Sveriges-flagg =
  overlay-align("left", "top", SBr,
    overlay-align("left", "bottom", SBr,
      overlay-align("right", "top", SBl,
        overlay-align("right", "bottom", SBl,
          rectangle(160, 100, "solid", "gold")))))

#Danmarks flagg
DRr = rectangle(60, 60, "solid", "fire-brick")
DRl = rectangle(105, 60, "solid", "fire-brick")

Danmarks-flagg =
  overlay-align("left", "top", DRr,
    overlay-align("left", "bottom", DRr,
      overlay-align("right", "top", DRl,
        overlay-align("right", "bottom", DRl,
          rectangle(185, 140, "solid", "white")))))

#Finlands flagg
FWr = rectangle(50, 40, "solid", "white")
FWl = rectangle(100, 40, "solid", "white")

Finlands-flagg =
  overlay-align("left", "top", FWr,
    overlay-align("left", "bottom", FWr,
      overlay-align("right", "top", FWl,
        overlay-align("right", "bottom", FWl,
          rectangle(180, 110, "solid", "midnight-blue")))))

#Islands flagg
IBr = rectangle(70, 70, "solid", "navy")
IWr = rectangle(80, 80, "solid", "white")
IBl = rectangle(140, 70, "solid", "navy")
IWl = rectangle(150, 80, "solid", "white")

Islands-flagg = 
  overlay-align("left", "top", IBr,
    overlay-align("left", "bottom", IBr,
      overlay-align("left", "top", IWr,
        overlay-align("left", "bottom", IWr,
          overlay-align("right", "top", IBl,
            overlay-align("right", "bottom", IBl,
              overlay-align("right", "top", IWl,
                overlay-align("right", "bottom", IWl,
                  (rectangle(250, 180, "solid", "crimson"))))))))))
#Færøyenes flagg
FaWr = rectangle(60, 60, "solid", "White")
FaBr = rectangle(70, 70, "solid", "navy")
FaWl = rectangle(120, 60, "solid", "white")
FaBl = rectangle(130, 70, "solid", "navy")

Faroe-flagg = 
  overlay-align("left", "top", FaWr,
    overlay-align("left", "bottom", FaWr,
      overlay-align("left", "top", FaBr,
        overlay-align("left", "bottom", FaBr,
          overlay-align("right", "top", FaWl,
            overlay-align("right", "bottom", FaWl,
              overlay-align("right", "top", FaBl,
                overlay-align("right", "bottom", FaBl,
                  (rectangle(220, 160, "solid", "crimson"))))))))))

#Variabler for feilmelding
feil-melding = "Du kan kun skrive en av følgende: Norge, Sverige, Danmark, Finland, Island eller Færøyene"

#Skriv inn land her etter "="
flagg = "Norge"


if flagg == "Norge":
  Norges-flagg
else if flagg == "Sverige":
  Sveriges-flagg
else if flagg == "Danmark":
  Danmarks-flagg
else if flagg == "Finland":
  Finlands-flagg
else if flagg == "Island":
  Islands-flagg
else if flagg == "Færøyene":
  Faroe-flagg
else:
  feil-melding
end
