1: Flow
2: Class
    2a: Class relationships

-App welcome user to train search
---Show all lines with delays (stretch goal)
-User is asked for a location

-User submits zip
---All stations lat/lon converted to zip code
---return results of all stations matching user inputed zip (use gem ---geocoder to convert stations lat/long to zip)

-User is asked what time they would like to depart
---all resulting stations, compare their arrival time to user submitted ---time +20min
---puts all trains within 20 min of user submitted time (and their ---directions), w/ time shown in 'HHMM' and 'MM to depart'. (get MM to ---depart by comparing arrT to prdT)

-Ask user if they would like to search again or exit the app


-------------BACKUP PLAN--------------

-App welcome user to train search
---Show all lines with delays (stretch goal)
-User is asked which station they would like times

-User submits station
---return results of all departure times for selected station

-Ask user if they would like to search again or exit the app






-----To calculate the number of minutes until arrival (so you can say “4 min” instead of 2:35 p.m., for example, we recommend comparing arrT to prdt – this will give you the number of minutes we calculated from when a train last moved into a new track circuit until when it should get to a station.-----