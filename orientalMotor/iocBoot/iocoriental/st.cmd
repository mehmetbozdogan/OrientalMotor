#!../../bin/linux-x86_64/oriental

## You may have to change oriental to something else
## everywhere it appears in this file

< envPaths
epicsEnvSet("STREAM_PROTOCOL_PATH","${TOP}/protocols")

cd "${TOP}"

## Register all support components
dbLoadDatabase("dbd/oriental.dbd",0,0)
oriental_registerRecordDeviceDriver(pdbbase) 

## Load record instances
dbLoadTemplate "db/template.substitutions"

   drvAsynSerialPortConfigure("SYS-SEC-ORIENTAL","/dev/ttyS0")
   asynSetOption("SYS-SEC-ORIENTAL",0,"baud","9600")
   asynSetOption("SYS-SEC-ORIENTAL",0,"bits","8")
   asynSetOption("SYS-SEC-ORIENTAL",0,"parity","even")
   asynSetOption("SYS-SEC-ORIENTAL",0,"stop","1")
   asynSetOption("SYS-SEC-ORIENTAL",0,"clocal","N")
   asynSetOption("SYS-SEC-ORIENTAL",0,"crtscts","N")
   asynSetTraceMask("SYS-SEC-ORIENTAL",-1,0x9)
   asynSetTraceIOMask("SYS-SEC-ORIENTAL",-1,0x4)

iocInit()
startPVAServer

