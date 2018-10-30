from umodbus import conf
from umodbus.client import tcp
import socket
import time
from maq20 import MAQ20

maq20 = MAQ20(ip_address="192.168.1.152", port=502)

print(maq20)


# Configure TTC
ttc = maq20.find("TTC")
ttc.write_registers(100,[1]*8)

#Save
ttc.write_register(119,1)

#

# Range
# Standard Input
# Temperature
# Equivalent
# Counts Over/Under Range
# Equivalent
# Counts
# Deg C per
# Count

#1 -100°C to +220°C -2048 to 4505 -102°C to +224°C -2089 to 4595 0.0488



# Configure DIOL

diol = maq20.find("DIOL")





while True:
    print(diol.read_register(1106))#+diol.read_register(1106)<<16)
    print(diol.read_registers(1106,2))
    print()
    time.sleep(0.1)
