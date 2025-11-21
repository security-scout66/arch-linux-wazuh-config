#!/bin/bash
/var/ossec/bin/wazuh-agentd -c /var/ossec/etc/ossec.conf -d >> /var/ossec/logs/wazuh-agentd.log 2>&1
/var/ossec/bin/wazuh-modulesd -c /var/ossec/etc/ossec.conf -d >> /var/ossec/logs/wazuh-modulesd.log 2>&1
/var/ossec/bin/wazuh-logcollector -c /var/ossec/etc/ossec.conf -d >> /var/ossec/logs/wazuh-logcollector.log 2>&1
/var/ossec/bin/wazuh-syscheckd -c /var/ossec/etc/ossec.conf -d >> /var/ossec/logs/wazuh-syscheckd.log 2>&1
/var/ossec/bin/wazuh-execd -c /var/ossec/etc/ossec.conf -d >> /var/ossec/logs/wazuh-execd.log 2>&1
