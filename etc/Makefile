TOP=..

include $(TOP)/configure/CONFIG

install:
	$(ECASYN)/bin/linux-x86_64/slaveinfo -s slave_types.txt > fls_chain.xml
	$(ECASYN)/etc/scripts/expandChain.py fls_chain.xml  > fls_scanner.xml

clean:
	-rm  fls_chain.xml fls_scanner.xml

uninstall:

