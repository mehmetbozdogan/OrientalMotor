TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = oriental
# oriental.dbd will be created and installed
DBD += oriental.dbd

# oriental.dbd will be made up from these files:
oriental_DBD += base.dbd
oriental_DBD += modules.dbd

# Include dbd files from all support applications:
#oriental_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#oriental_LIBS += xxx

# oriental_registerRecordDeviceDriver.cpp derives from oriental.dbd
oriental_SRCS += oriental_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
oriental_SRCS_DEFAULT += orientalMain.cpp
oriental_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#oriental_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
oriental_LIBS += $(EPICS_BASE_IOC_LIBS)
oriental_LIBS += pvaSrv pvAccess pvData pvMB

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
PROD_LIBS += stream
PROD_LIBS += asyn

