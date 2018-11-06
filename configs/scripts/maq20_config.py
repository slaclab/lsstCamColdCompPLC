from maq20 import MAQ20

ip = "192.168.1.171"
#ip = "192.168.1.153"
#ip = "192.168.1.155"
#ip = "192.168.1.157"
#ip = "192.168.1.159"

maq20 = MAQ20(ip_address=ip, port=502)

for module in maq20:
    # Configure range in TTC-00
    if module.get_name().find("TTC") > -1:
        module.write_registers(100, [1] * 8)  # Temperature Range -100°C to +220°C
        module.write_register(119, 1)  # Save to EPPROM
        print("Configured", module.get_name(), module.get_serial_number())

    # Configure module-00
    #TODO MUST SELECT THE RGHT SERIAN NUMEBER
    if module.get_name().find("DIOL") > -1:
        #
        # Timer 0 (DO0 and DO2) - PWM output
        #

        module.write_register(1100, 6)  # Timer 1 as PMW Generator
        module.write_register(1103, 2)  # Microseconds time base
        module.write_register(1104, 0)  # Disable output 2

        # Configure DO0 - PWM output
        module.write_registers(1108, [0, 9000])  # Low level PWM (fan speed control)
        module.write_register(1101, 1)  # Arm Timer (must be the last thing done)
        # module.write_register(1190, 0)  # Save to EPPROM                               ## ERROR????

        #
        # Timer 1 (DI2) - Fan 1 Freq read
        #
        module.write_register(1200, 1)  # Timer 1 as Pulse/Freq
        # Configure DI2 - Fan 2 Speed
        module.write_register(1201, 1)  # Arm Timer (must be the last thing done)
        # module.write_register(1290, 0)  # Save to EPPROM                               ## ERROR????

        module.write_register(190, 0)  # Save to EPPROM

        print("Configured", module.get_name(), module.get_serial_number())

        # Write 1108 and 1109 to control PWM
        # Read 1206 and 1207 to get the FAN 1 frequency


    # Configure module-01
    # TODO MUST SELECT THE RGHT SERIAN NUMEBER
    if module.get_name().find("DIOL") > -1:

        #
        # Timer 0 (DI0) - Fan 2 Freq read
        #
        module.write_register(1100, 1)  # Timer 1 as Pulse/Freq
        # Configure DI2 - Fan 2 Speed
        module.write_register(1101, 1)  # Arm Timer (must be the last thing done)
        # module.write_register(1190, 0)  # Save to EPPROM                               ## ERROR????

        #
        # Timer 1 (DI2) - Fan 3 Freq read
        #
        module.write_register(1200, 1)  # Timer 1 as Pulse/Freq
        # Configure DI2 - Fan 2 Speed
        module.write_register(1201, 1)  # Arm Timer (must be the last thing done)
        # module.write_register(1290, 0)  # Save to EPPROM                               ## ERROR????


        module.write_register(190, 0)  # Save to EPPROM

        print("Configured", module.get_name(), module.get_serial_number())

        # Read 1106 and 1107 to get the FAN 2 frequency
        # Read 1206 and 1207 to get the FAN 3 frequency




