from umodbus import conf
from umodbus.client import tcp
import socket
import time
from maq20 import MAQ20

#maq20 = MAQ20(ip_address="192.168.1.152", port=502)
maq20 = MAQ20(ip_address="192.168.1.154", port=502)
print(maq20)


# Configure TTC
ttc = maq20.find("TTC")
ttc.write_registers(100,[1]*8)#Save
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



#diol.write_register(98,255)
diol.write_register(98,0)
#print(diol.read_registers(99,2))

#Input


#diol.write_register(1100,1)




#diol.write_register(1101,1)


#Output

#diol.write_register(1002,0)


diol.write_register(1100,6)
#diol.write_register(1200,0)

diol.write_register(1103,2)
diol.write_register(1104,1)
diol.write_register(1106,0)
diol.write_register(1107,10000)
diol.write_registers(1108,[0,9000])
diol.write_registers(1110,[0,500])


diol.write_register(1101,1)

#diol.write_register(1190,0)
#diol.write_register(190,0)



#diol.write_register(1002,0)


# Output. 100% Default

print(diol.read_registers(1100,20))
print(diol.read_registers(1108,2))





#Save EEPROM
#diol.write_register(1290,1)


#maq20.write_register(70,1)




