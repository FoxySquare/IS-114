use context essentials2021
#Alle pakker og content brukt i koden

include gdrive-sheets
include shared-gdrive("dcic-2021", "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
      sanitize energi using string-sanitizer
end

#Variabler for utregningen av "Energiforburk"

#Km
distance-travelled-per-day = 50
#Km
distance-per-unit-of-fuel = 12
#kWh
energy-per-unit-of-fuel = 9

#Funksjon fo utregning av "Energiforbruk"
energy-per-day = (distance-travelled-per-day / 
  distance-per-unit-of-fuel) * 
energy-per-unit-of-fuel

#Her lager vi en funksjon for å endre energi kolonnene fra bosktaver til tall.
fun energi-to-number(s :: String) -> Number:
  cases(Option) string-to-number(s):
    | some(a) => a
    | none => energy-per-day
  end
where:
  energi-to-number("") is energy-per-day
  energi-to-number("48") is 48
end

#Bruker "energy-to-number" funksjonen for å gjøre om dataen i "energi" kolonnen
kWh-data = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

#Her summerer vi de nye tallene i "energi" kolonnen
summering = sum(kWh-data, "energi")

#Her legger vi til en kolonne til med summeringen av "energi"
data-sum = table: komponent :: String, energi :: Number
  row: "Sum energi", summering
end

#Funksjonen for bar chart
Chart = bar-chart(kWh-data, "komponent", "energi") 

#Tilslutt printer vi tabellen, og inkluderer rad for summering av energiforbruk
Ferdig-tabell = get-row(data-sum, 0)
add-row(kWh-data, Ferdig-tabell)


