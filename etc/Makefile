TOP=..

include $(TOP)/configure/CONFIG

install:
	#$(ECASYN)/bin/linux-x86_64/slaveinfo -s > lnf_chain.xml
	../../../etc/scripts/expandChain.py lnf_chain.xml  > lnf_scanner.xml

clean:
	-rm  lnf_chain.xml lnf_scanner.xml

uninstall:

