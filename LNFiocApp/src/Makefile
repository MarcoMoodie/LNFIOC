TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#=============================
# Build the IOC application

PROD_IOC = LNFioc
# LNFioc.dbd will be created and installed
DBD += LNFioc.dbd 

# LNFioc.dbd will be made up from these files:
LNFioc_DBD += base.dbd ecAsyn.dbd asSupport.dbd

# Include dbd files from all support applications:
#LNFioc_DBD += xxx.dbd

# Add all the support libraries needed by this IOC
#LNFioc_LIBS += xxx

# LNFioc_registerRecordDeviceDriver.cpp derives from LNFioc.dbd
LNFioc_SRCS += LNFioc_registerRecordDeviceDriver.cpp

# Build the main IOC entry point on workstation OSs.
LNFioc_SRCS_DEFAULT += LNFiocMain.cpp
LNFioc_SRCS_vxWorks += -nil-

# Add support from base/src/vxWorks if needed
#LNFioc_OBJS_vxWorks += $(EPICS_BASE_BIN)/vxComLibrary

# Finally link to the EPICS Base libraries
LNFioc_LIBS += $(EPICS_BASE_IOC_LIBS)

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
LNFioc_LIBS += asyn ecAsyn scannerlib rtutils std
LNFioc_LIBS += autosave