$Name Refrigeration Cold Compressor Protection

! Obj_Source
;LSST Refrigeration Cold Comnpressor Protection

#Include <func06.fps>

! Id_Pluto_Double[D45]:1=000000000010


! I1.0=DisTempI                         ;4-20 mA compressor temperature
! I1.1=SucTempI                         ;4-20 mA suction temperature
! I1.2=LiqTempI                         ;4-20 mA phase separator temperature
! I1.3=DisPressI                        ;4-20 mA discharge pressure
! I1.4=SucPressI                        ;4-20 mA suction pressure
! I1.6=VoltageI                         ;0-10 V input power rms voltage
! I1.7=CurrentI                         ;0-10 V compressor rms current
! Q1.0=CompOn                           ;Compressor power

! Pgm_Pluto:1
! Instruction_Set_3
! Ext_comm:0=Device 0,Packet 0, 1000
;Pluto for the Compressor Control Box
;Inputs: 
;Outputs: 
;

! I1.0,Analog,20mA
! I1.1,Analog,20mA
! I1.2,Analog,20mA
! I1.3,Analog,20mA
! I1.4,Analog,20mA
! I1.6,Analog,10V
! I1.7,Analog,10V
! I1.31,A_Pulse,Non_Inv
! I1.32,B_Pulse,Non_Inv
! I1.33,A_Pulse,Non_Inv
! I1.34,C_Pulse,Non_Inv
! Q1.10,A_Pulse
! Q1.11,B_Pulse
! Q1.12,C_Pulse
! Q1.13,Static
! Q1.14,Static

! I1.31=ExtPermI                        ;External permit, pattern A
! I1.32=KeyOnI                          ;key switch, on, pattern B
! I1.33=ResetI                          ;Reset button, pattern A
! I1.34=SmokeI                          ;Smoke detector, pattern C
! Q1.10=A_Power                         ;Pattern A
! Q1.11=B_Power                         ;Pattern B
! Q1.12=C_Power                         ;Pattern C
! Q1.13=Led1                            ;
! Q1.14=Led2                            ;
! M1.0=DisTempValid                     ;Compressor Discharge Temperature Valid
! M1.1=SucTempValid                     ;Suction temperature Valid
! M1.2=LiqTempValid                     ;Liquid temperature Valid
! M1.3=DisPressValid                    ;Discharge Pressure Valid
! M1.4=SucPressValid                    ;Suction Pressure Valid
! M1.5=CurrentValid                     ;Compressor current Valid
! M1.6=VoltageValid                     ;Compressor voltage Valid
! M1.10=DisTempBad30min                 ;Discharge temperature over 125C for more than 30 minutes
! M1.11=DisTempOKLatch                  ;Discharge temperature not high
! M1.12=DisTempOKLatchStatus            ;
! M1.13=DisTempOKLatchNeedsReset        ;
! M1.21=SucTempOKLatch                  ;Suction Temperature not low
! M1.22=SucTempOKLatchStatus            ;
! M1.23=SucTempOKLatchNeedsReset        ;
! M1.31=LiqTempOKLatch                  ;Liquid temperature not high
! M1.32=LiqTempOKLatchStatus            ;
! M1.33=LiqTempOKLatchNeedsReset        ;
! M1.40=DisPressBad10min                ;Discharge pressure over 440 psia for more than 10 minutes
! M1.41=DisPressOKLatch                 ;Discharge Pressure not high
! M1.42=DisPressOKLatchStatus           ;
! M1.43=DisPressOKLatchNeedsReset       ;
! M1.51=SucPressOKLatch                 ;Suction Pressure not high
! M1.52=SucPressOKLatchStatus           ;
! M1.53=SucPressOKLatchNeedsReset       ;
! M1.60=PowerBad5min                    ;
! M1.61=PowerOKLatch                    ;Compressor power not High
! M1.62=PowerOKLatchStatus              ;
! M1.63=PowerOKLatchNeedsReset          ;
! M1.71=ExtPermLatch                    ;External Permit Latch
! M1.72=ExtPermLatchStatus              ;
! M1.73=ExtPermLatchNeedsReset          ;
! M1.81=SmokeOKLatch                    ;
! M1.82=SmokeOKLatchStatus              ;
! M1.83=SmokeOKLatchNeedsReset          ;
! M1.90=IntPerm                         ;CCS Compressor Permit
! M1.91=CompEnable                      ; Compressor power enabled
! M1.92=CompOnInterlocks                ;
! M1.93=CompPermit                      ;
! M1.94=CompOn2minDelay                 ;
! M1.95=CompOnWaiting                   ;
! M1.100=ResetGate                      ;
! M1.101=MasReset                       ;
! M1.105=LightsOn                       ;Enable indicating lights on the control box
! M1.150=ToGateOne                      ;
! M1.151=ToGateTwo                      ;
! M1.152=ToGateThree                    ;
! M1.153=ToGateFour                     ;
! M1.154=ToGateFive                     ;
! M1.155=ToGateSix                      ;
! M1.156=ToGateSeven                    ;
! M1.157=ToGateEight                    ;
! M1.158=ToGateNine                     ;
! M1.159=ToGateTen                      ;
! M1.160=ToGateEleven                   ;
! M1.161=ToGateTwelve                   ;
! M1.162=ToGateThirteen                 ;
! M1.163=ToGateFourteen                 ;
! M1.164=ToGateFifteen                  ;
! R1.0=DisTempCur                       ;Discharge temperature current
! R1.1=DisTemp                          ;Discharge temperature
! R1.2=SucTmpCur                        ;Suction temperature current
! R1.3=SucTemp                          ;Suction temperature
! R1.4=LiqTempCur                       ;Liquid temperature current
! R1.5=LiqTemp                          ;Liquid temperature
! R1.6=DisPressCur                      ;Discharge pressure current
! R1.7=DisPress                         ;Discharge pressure
! R1.8=SucPressCur                      ;Suction pressure current
! R1.9=SucPress                         ;Suction pressure
! R1.10=CurrentVolt                     ;Compressor current voltage
! R1.11=Current                         ;Compressor current
! R1.12=VoltageVolt                     ;Compressor voltage voltage
! R1.13=Voltage                         ;Compressor voltage
! R1.20=WaitingSecs                     ;Seconds to activate the relay
! DR1.50=DCurrent                       ;Double precision compressor current
! DR1.52=DVoltage                       ;Double precision compressor voltage
! DR1.54=DOnePhasePower                 ;Power of one phase of the compressor
! DR1.56=DPower                         ;Compressor power


S1.0_0=Logic
MasReset=P(ResetGate)+P(ResetI)
DisTempValid=ReadCurrent(0,-5000,15000,DisTempCur,DisTemp)
DisTempBad30min=Upcount(SM_1Hz,(DisTemp<=12500)+MasReset,1800)
;
;Discharge temperature over 125C for more than 30 minutes
;
DisTempOKLatch=StartT(((DisTemp<=13000)*/DisTempBad30min+(DisTemp<=12500))*DisTempValid,MasReset,1,DisTempOKLatchStatus)
DisTempOKLatchNeedsReset=((DisTemp<=13000)*/DisTempBad30min+(DisTemp<=12500))*DisTempValid*/DisTempOKLatch
SucTempValid=ReadCurrent(1,-5000,15000,SucTmpCur,SucTemp)
SucTempOKLatch=StartT((SucTemp>-3000)*SucTempValid,MasReset,1,SucTempOKLatchStatus)
SucTempOKLatchNeedsReset=(SucTemp>-3000)*SucTempValid*/SucTempOKLatch
LiqTempValid=ReadCurrent(2,-5000,15000,LiqTempCur,LiqTemp)
LiqTempOKLatch=StartT((LiqTemp<4500)*LiqTempValid,MasReset,1,LiqTempOKLatchStatus)
LiqTempOKLatchNeedsReset=(LiqTemp<4500)*LiqTempValid*/LiqTempOKLatch
DisPressValid=ReadCurrent(3,0,10000,DisPressCur,DisPress)
DisPressBad10min=Upcount(SM_1Hz,(DisPress<=4400)+MasReset,600)
DisPressOKLatch=StartT(((DisPress<=4650)*/DisPressBad10min+(DisPress<=4400))*DisPressValid,MasReset,1,DisPressOKLatchStatus)
DisPressOKLatchNeedsReset=((DisPress<=4650)*/DisPressBad10min+(DisPress<=4400))*DisPressValid*/DisPressOKLatch
SucPressValid=ReadCurrent(4,0,10000,SucPressCur,SucPress)
CurrentValid=ReadVoltage(6,0,5000,CurrentVolt,Current)
VoltageValid=ReadVoltage(7,0,500,VoltageVolt,Voltage)
(DCurrent=Current)
(DVoltage=Voltage)
(DOnePhasePower=DCurrent*DVoltage)
(DPower=3*DOnePhasePower)
PowerBad5min=Upcount(SM_1Hz,(DPower<250000)+MasReset,300)
PowerOKLatch=StartT(((DPower<180000)+(DPower<250000)*/PowerBad5min)*CurrentValid*VoltageValid,MasReset,1,PowerOKLatchStatus)
PowerOKLatchNeedsReset=((DPower<180000)+(DPower<250000)*/PowerBad5min)*currentValid*VoltageValid*/PowerOKLatch
ExtPermLatch=StartT(ExtPermI,MasReset,1,ExtPermLatchStatus)
ExtPermLatchNeedsReset=ExtPermI*/ExtPermLatch
SmokeOKLatch=StartT(SmokeI,MasReset,1,SmokeOKLatchStatus)
SmokeOKLatchNeedsReset=SmokeI*/SmokeOKLatch
CompOnInterlocks=ExtPermLatch*DisTempOKLatch*SmokeOKLatch*DisPressOKLatch*DisTempOKLatch*SucTempOKLatch*LiqTempOKLatch*PowerOKLatch
CompEnable=KeyOnI*IntPerm
CompPermit=compOnInterlocks*compEnable
CompOn2minDelay=Downcount(SM_1Hz,/CompPermit,120)
CompOn=CompOn2minDelay
CompOnWaiting=/CompOn2minDelay*compPermit
(WaitingSecs-=1)=SM_1Hz*compOnWaiting
(WaitingSecs=120)=/CompOnWaiting

S1.1_0=Communication
ResetGate=Ext_Sig(0,0)
;
;INPUTS
;
IntPerm=Ext_Sig(1,0)
lightsOn=Ext_Sig(2,0)
Led2=LightsOn
;
;OUTPUTS
;
;LEDs
;
Led1=LightsOn
ToGateOne=ToGateway_User_A(SM_10Hz,1,DisTempCur,DisTemp)
;
;MODBUS
;
ToGateOne=ToGateway_User_A(SM_10Hz,1,SucTmpCur,SucTemp)
ToGateTwo=ToGateway_User_A(P(/ToGateOne),2,LiqTempCur,LiqTemp)
ToGateThree=ToGateway_User_A(ToGateTwo,3,DisPressCur,DisPress)
ToGateFour=ToGateway_User_A(ToGateThree,4,SucPressCur,SucPress)
ToGateFive=ToGateway_User_A(ToGateFour,5,CurrentVolt,Current)
ToGateSix=ToGateway_User_A(ToGateFive,6,VoltageVolt,Voltage)
ToGateSeven=ToGateway_User_A(ToGateSix,7,WaitingSecs,0)
ToGateEight=ToGateway_User_A(ToGateSeven,8,DOnePhasePower.Lo,DOnePhasePower.Hi)
ToGateNine=ToGateway_User_A(ToGateEight,9,DPower.Lo,DPower.Hi)
ToGateTen=ToGateway_User_C(ToGateNine,10,DisTempValid,SucTempValid,LiqTempValid,DisPressValid,SucPressValid,CurrentValid,VoltageValid,IntPerm,CompEnable,CompOnInterlocks,CompPermit,CompOn2minDelay,CompOnWaiting,CompOn,0,0,0)
ToGateEleven=ToGateway_User_C(ToGateTen,11,DisTempBad30min,DisTempOKLatch,DisTempOKLatchStatus,DisTempOKLatchNeedsReset,0,M1.20,SucTempOKLatch,SucTempOKLatchStatus,SucTempOKLatchNeedsReset,0,M1.30,LiqTempOKLatch,LiqTempOKLatchStatus,LiqTempOKLatchNeedsReset,0,0,0)
ToGateTwelve=ToGateway_User_C(ToGateEleven,12,DisPressBad10min,DisPressOKLatch,DisPressOKLatchStatus,DisPressOKLatchNeedsReset,0,M1.50,SucPressOKLatch,SucPressOKLatchStatus,SucPressOKLatchNeedsReset,0,PowerBad5min,PowerOKLatch,PowerOKLatchStatus,PowerOKLatchNeedsReset,0,0,0)
ToGateThirteen=ToGateway_User_C(ToGateTwelve,13,M1.70,ExtPermLatch,ExtPermLatchStatus,ExtPermLatchNeedsReset,0,M1.80,SmokeOKLatch,SmokeOKLatchStatus,SmokeOKLatchNeedsReset,0,0,0,0,0,0,0,0)
ToGateFourteen=ToGateway_User_C(ToGateThirteen,14,ResetGate,MasReset,LightsOn,0,0,Led1,Led2,0,0,0,0,0,0,0,0,0,0)
