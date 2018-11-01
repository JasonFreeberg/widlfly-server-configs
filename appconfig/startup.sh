# This file should be referenced by an enviornment vatriable, INIT_SCRIPT, so that it is executed every time a new App Service 
# instance is started. This file does the following: 
#   - Creates directories for the modules and dependencies within the JBoss program files 
#   - Copies the modules and dependencies to that directory
#   - Passes the commands within jboss_commands.cli to the JBoss CLI
mkdir /opt/jboss/wildfly/modules/system/layers/base/org/jboss/genericjms/provider
mkdir /opt/jboss/wildfly/modules/system/layers/base/org/jboss/genericjms/provider/main
cp  /home/site/deployments/tools/*.jar /opt/jboss/wildfly/modules/system/layers/base/org/jboss/genericjms/provider/main/
cp /home/site/deployments/tools/module.xml /opt/jboss/wildfly/modules/system/layers/base/org/jboss/genericjms/provider/main/
/opt/jboss/wildfly/bin/jboss-cli.sh -c --file=/home/site/deployments/tools/commands.cli
