from maq20 import MAQ20




original_ip = "192.168.128.100"

#new_ip = [192,168,1,152]
new_ip = [192,168,1,154]

maq20 = MAQ20(ip_address=original_ip, port=502)

maq20.write_register(50,new_ip[0])
maq20.write_register(51,new_ip[1])
maq20.write_register(52,new_ip[2])
maq20.write_register(53,new_ip[3])
print(maq20.read_registers(50,4))

maq20.write_register(70,1)





