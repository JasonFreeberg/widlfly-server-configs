# Widlfly Server Configuration Files

This repository is a reference for developers using the managed Wildfly service on Azure App Service for Linux. The `appconfig/` directory contains the modules, module dependencies, jar files, and shell scripts necessary to configure the Wildfly application server to use Service Bus for JMS. Please read through the contents of [jboss_commands.cli](/appconfig/jboss_commands.cli), [startup.sh](/appconfig/startup.sh), [module.xml](/appconfig/module.xml), and [jndi.properties](/appconfig/jndi.properties). Those files jave comments to help explain their uses.

If you are using this as a reference for development, please note that the jar files may be outdated at the time you are reading this, and you should check the [download site](https://qpid.apache.org/download.html) for the newest versions for Qpid JMS (AMQP 1.0). This repository contains the jars from the 0.37.0 release.

Please read the [Quickstart for Wildfly](). It follows the same configuration pattern. The tutorial uses different modules and dependencies, but the process is the same.

Happy hacking!
