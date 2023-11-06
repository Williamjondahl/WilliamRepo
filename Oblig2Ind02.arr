use context essentials2021
include 
shared-gdrive(
  "dcic-2021",
  "1wyQZj_L0qqV9Ekgr9au6RX2iqt2Ga8Ep")
include gdrive-sheets
include data-source
ssid = "1RYN0i4Zx_UETVuYacgaGfnFcv4l9zd9toQTTdkQkj7g"
kWh-wealthy-consumer-data =
load-table: komponent, energi
source: load-spreadsheet(ssid).sheet-by-name("kWh", true)
    sanitize energi using string-sanitizer
  end

#DPD = distanse per dag
#DPDE = distanse per drivstoffenhet
#EPDE = Energi per distanseenhet
fun bilforbruk(DPD, DPDE, EPDE) :
  energiPerDag = (DPD / DPDE) * EPDE
  
  energiPerDag
  
end

fun energi-to-number(s :: String) -> Number:
  cases(Option) string-to-number(s):
    | some(a) => a
    | none => bilforbruk(10, 5, 10)
  end
where:
  energi-to-number("10") is 10
  energi-to-number("30") is 30

end

transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)
kWh-wealthy-consumer-data

tabellFix = transform-column(kWh-wealthy-consumer-data, "energi", energi-to-number)

sum(tabellFix, "energi") 

bar-chart(tabellFix, "komponent", "energi")


