#!../../bin/linux-x86_64/LNFioc

## You may have to change LNFioc to something else
## everywhere it appears in this file

< envPaths

cd "${TOP}"

## Register all support components
dbLoadDatabase "dbd/LNFioc.dbd"
LNFioc_registerRecordDeviceDriver pdbbase

## Load record instances
ecAsynInit("/tmp/scan1", 1000000)

dbLoadTemplate "db/LNFioc.substitutions"

#autosave:
set_savefile_path("../save")
set_pass0_restoreFile("LNFioc.sav")
set_pass1_restoreFile("LNFioc.sav")
save_restoreSet_RetrySeconds(120)
set_requestfile_path( "./") 
cd "${TOP}/iocBoot/${IOC}"
iocInit

create_monitor_set("LNFioc.req",300)

## Start any sequence programs

