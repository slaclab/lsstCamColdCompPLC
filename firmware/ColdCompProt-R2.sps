$Name Refrigeration Cold Compressor Protection

! Obj_Source
;LSST Refrigeration Cold Comnpressor Protection

#Include <func06.fps>

! Id_Pluto_Double[D45]:0=000000000010


! I0.0=DisTempI                         ;4-20 mA compressor temperature
! I0.1=SucTempI                         ;4-20 mA suction temperature
! I0.2=LiqTempI                         ;4-20 mA phase separator temperature
! I0.3=DisPressI                        ;4-20 mA discharge pressure
! I0.4=SucPressI                        ;4-20 mA suction pressure
! I0.6=VoltageI                         ;0-10 V input power rms voltage
! I0.7=CurrentI                         ;0-10 V compressor rms current
! Q0.0=CompOn                           ;Compressor power

! Pgm_Pluto:0
! Instruction_Set_3
! Ext_comm:0=Device 0,Packet 0, 1000
;Pluto for the Compressor Control Box
;Inputs: 
;Outputs: 
;

! I0.0,Analog,10V
! I0.1,Analog,10V
! I0.2,Analog,10V
! I0.3,Analog,20mA
! I0.4,Analog,20mA
! I0.6,Analog,10V
! I0.7,Analog,10V
! I0.31,A_Pulse,Non_Inv
! I0.32,B_Pulse,Non_Inv
! I0.33,A_Pulse,Non_Inv
! I0.34,C_Pulse,Non_Inv
! Q0.10,A_Pulse
! Q0.11,B_Pulse
! Q0.12,C_Pulse
! Q0.13,Static
! Q0.14,Static

! I0.31=ExtPermI                        ;External permit, pattern A
! I0.32=KeyOnI                          ;key switch, on, pattern B
! I0.33=ResetI                          ;Reset button, pattern A
! I0.34=SmokeI                          ;Smoke detector, pattern C
! Q0.10=A_Power                         ;Pattern A
! Q0.11=B_Power                         ;Pattern B
! Q0.12=C_Power                         ;Pattern C
! Q0.13=Led1                            ;Power Status LED
! Q0.14=Led2                            ;Compressor Status LED
! M0.0=DisTempValid                     ;Discharge Temperature Valid
! M0.1=SucTempValid                     ;Suction temperature Valid
! M0.2=LiqTempValid                     ;Liquid temperature Valid
! M0.3=DisPressValid                    ;Discharge Pressure Valid
! M0.4=SucPressValid                    ;Suction Pressure Valid
! M0.5=CurrentValid                     ;Compressor current Valid
! M0.6=VoltageValid                     ;Compressor voltage Valid
! M0.10=DisTempBad30min                 ;Discharge temperature over 125C for more than 30 minutes
! M0.11=DisTempOKLatch                  ;Discharge temperature not high
! M0.12=DisTempOKLatchStatus            ;
! M0.13=DisTempOKLatchNeedsReset        ;
! M0.21=SucTempOKLatch                  ;Suction Temperature not low
! M0.22=SucTempOKLatchStatus            ;
! M0.23=SucTempOKLatchNeedsReset        ;
! M0.31=LiqTempOKLatch                  ;Liquid temperature not high
! M0.32=LiqTempOKLatchStatus            ;
! M0.33=LiqTempOKLatchNeedsReset        ;
! M0.40=DisPressBad10min                ;Discharge pressure over 440 psia for more than 10 minutes
! M0.41=DisPressOKLatch                 ;Discharge Pressure not high
! M0.42=DisPressOKLatchStatus           ;
! M0.43=DisPressOKLatchNeedsReset       ;
! M0.51=SucPressOKLatch                 ;Suction Pressure not high
! M0.52=SucPressOKLatchStatus           ;
! M0.53=SucPressOKLatchNeedsReset       ;
! M0.60=PowerBad5min                    ;
! M0.61=PowerOKLatch                    ;Compressor power not High
! M0.62=PowerOKLatchStatus              ;
! M0.63=PowerOKLatchNeedsReset          ;
! M0.71=ExtPermLatch                    ;External Permit Latch
! M0.72=ExtPermLatchStatus              ;
! M0.73=ExtPermLatchNeedsReset          ;
! M0.81=SmokeOKLatch                    ;
! M0.82=SmokeOKLatchStatus              ;
! M0.83=SmokeOKLatchNeedsReset          ;
! M0.90=CompIntPerm                     ;CCS Compressor Permit
! M0.91=CompEnable                      ; Compressor power enabled
! M0.92=CompOnInterlocks                ;
! M0.93=CompPermit                      ;
! M0.94=CompOn2minDelay                 ;
! M0.95=CompOnWaiting                   ;
! M0.100=ResetGate                      ;
! M0.101=MasReset                       ;
! M0.105=LightsOn                       ;Enable indicating lights on the control box
! M0.150=ToGateOne                      ;
! M0.151=ToGateTwo                      ;
! M0.152=ToGateThree                    ;
! M0.153=ToGateFour                     ;
! M0.154=ToGateFive                     ;
! M0.155=ToGateSix                      ;
! M0.156=ToGateSeven                    ;
! M0.157=ToGateEight                    ;
! M0.158=ToGateNine                     ;
! M0.159=ToGateTen                      ;
! M0.160=ToGateEleven                   ;
! M0.161=ToGateTwelve                   ;
! M0.162=ToGateThirteen                 ;
! M0.163=ToGateFourteen                 ;
! M0.164=ToGateFifteen                  ;
! R0.0=DisTempVolt                      ;Discharge temperature voltage
! R0.1=DisTemp                          ;Discharge temperature
! R0.2=SucTempVolt                      ;Suction temperature voltage
! R0.3=SucTemp                          ;Suction temperature
! R0.4=LiqTempVolt                      ;Liquid temperature voltage
! R0.5=LiqTemp                          ;Liquid temperature
! R0.6=DisPressCur                      ;Discharge pressure current
! R0.7=DisPress                         ;Discharge pressure
! R0.8=SucPressCur                      ;Suction pressure current
! R0.9=SucPress                         ;Suction pressure
! R0.10=CurrentVolt                     ;Compressor current voltage
! R0.11=Current                         ;Compressor current
! R0.12=VoltageVolt                     ;Compressor voltage voltage
! R0.13=Voltage                         ;Compressor voltage
! R0.20=WaitingSecs                     ;Seconds to activate the compressor relay after a reset
! DR0.50=DCurrent                       ;Double precision compressor current
! DR0.52=DVoltage                       ;Double precision compressor voltage
! DR0.54=DOnePhasePower                 ;Power of one phase of the compressor
! DR0.56=DPower                         ;Compressor power


S0.0_0=Logic
MasReset=P(ResetGate)+P(ResetI)
DisTempValid=ReadVoltage(0,-5000,15000,DisTempVolt,DisTemp)
DisTempBad30min=Upcount(SM_1Hz,(DisTemp<=12500)+MasReset,1800)
;
;Discharge temperature over 125C for more than 30 minutes
;
DisTempOKLatch=StartT(((DisTemp<=13000)*/DisTempBad30min+(DisTemp<=12500))*DisTempValid,MasReset,1,DisTempOKLatchStatus)
DisTempOKLatchNeedsReset=((DisTemp<=13000)*/DisTempBad30min+(DisTemp<=12500))*DisTempValid*/DisTempOKLatch
SucTempValid=ReadVoltage(1,-5000,15000,SucTempVolt,SucTemp)
SucTempOKLatch=StartT((SucTemp>-3000)*SucTempValid,MasReset,1,SucTempOKLatchStatus)
SucTempOKLatchNeedsReset=(SucTemp>-3000)*SucTempValid*/SucTempOKLatch
LiqTempValid=ReadVoltage(2,-5000,15000,LiqTempVolt,LiqTemp)
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
CompEnable=KeyOnI*CompIntPerm
CompPermit=compOnInterlocks*compEnable
CompOn2minDelay=Downcount(SM_1Hz,/CompPermit,120)
CompOn=CompOn2minDelay
CompOnWaiting=/CompOn2minDelay*compPermit
(WaitingSecs-=1)=SM_1Hz*compOnWaiting
(WaitingSecs=120)=/CompOnWaiting

S0.1_0=Communication
ResetGate=Ext_Sig(0,0)
;
;INPUTS
;
CompIntPerm=Ext_Sig(1,0)
LightsOn=Ext_Sig(2,0)
S(LightsOn)
;
;
;REMOVE!!!!
;
;
Led2=(CompEnable*/ExtPermLatchStatus*/DisTempOKLatchStatus*/PowerOKLatchStatus*/DisPressOKLatchStatus*/DisTempOKLatchStatus*/SucTempOKLatchStatus*/LiqTempOKLatchStatus*/SmokeOKLatchStatus+CompOn+CompOnWaiting*SM_FastFlash)*LightsOn
;
;OUTPUTS
;
;LEDs
;
;Compressor status LED
;
Led1=(Voltage>21000)*(Voltage<23000)*LightsOn
;Power Status LED
ToGateOne=ToGateway_User_A(SM_10Hz,1,DisTempVolt,DisTemp)
;
;MODBUS
;
ToGateTwo=ToGateway_User_A(SM_10Hz,2,SucTempVolt,SucTemp)
ToGateThree=ToGateway_User_A(P(/ToGateOne),3,LiqTempVolt,LiqTemp)
ToGateFour=ToGateway_User_A(ToGateTwo,4,DisPressCur,DisPress)
ToGateFive=ToGateway_User_A(ToGateThree,5,SucPressCur,SucPress)
ToGateSix=ToGateway_User_A(ToGateFour,6,CurrentVolt,Current)
ToGateSeven=ToGateway_User_A(ToGateFive,7,VoltageVolt,Voltage)
ToGateEight=ToGateway_User_A(ToGateSix,8,WaitingSecs,0)
ToGateNine=ToGateway_User_A(ToGateSeven,9,DOnePhasePower.Lo,DOnePhasePower.Hi)
ToGateTen=ToGateway_User_A(ToGateEight,10,DPower.Lo,DPower.Hi)
ToGateEleven=ToGateway_User_C(ToGateNine,11,DisTempValid,SucTempValid,LiqTempValid,DisPressValid,SucPressValid,CurrentValid,VoltageValid,CompIntPerm,CompEnable,CompOnInterlocks,CompPermit,CompOn2minDelay,CompOnWaiting,CompOn,0,0,0)
ToGateTwelve=ToGateway_User_C(ToGateTen,12,DisTempBad30min,DisTempOKLatch,DisTempOKLatchStatus,DisTempOKLatchNeedsReset,0,M0.20,SucTempOKLatch,SucTempOKLatchStatus,SucTempOKLatchNeedsReset,0,M0.30,LiqTempOKLatch,LiqTempOKLatchStatus,LiqTempOKLatchNeedsReset,0,0,0)
ToGateThirteen=ToGateway_User_C(ToGateEleven,13,DisPressBad10min,DisPressOKLatch,DisPressOKLatchStatus,DisPressOKLatchNeedsReset,0,M0.50,SucPressOKLatch,SucPressOKLatchStatus,SucPressOKLatchNeedsReset,0,PowerBad5min,PowerOKLatch,PowerOKLatchStatus,PowerOKLatchNeedsReset,0,0,0)
ToGateFourteen=ToGateway_User_C(ToGateTwelve,14,M0.70,ExtPermLatch,ExtPermLatchStatus,ExtPermLatchNeedsReset,0,M0.80,SmokeOKLatch,SmokeOKLatchStatus,SmokeOKLatchNeedsReset,0,0,0,0,0,0,0,0)
ToGateFifteen=ToGateway_User_C(ToGateThirteen,15,ResetGate,MasReset,LightsOn,KeyOnI,extPermI,ResetI,smokeI,Led1,Led2,0,0,0,0,0,0,0,0)
