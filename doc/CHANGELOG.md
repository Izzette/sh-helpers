<!---
sh-helpers/doc/CHANGELOG.md
Isabell Cowan (c) 2015
https://github.com/Izzette/sh-helpers
-->
<!---
Don't list patches here.
Instead, append minor version tags.
-->
#sh-helpers CHANGELOG
##v0.2 Installable:
###Completed
* Makefile
  * Can make locally with make
  * Includes make install to /usr/bin/ and /usr/local/etc/sh-helpers/
  * Also includes make clean
* replace
  * gawk script to add installation variables to scripts
* connect
  * Corrected a plethora errors, everything seems to be functional
  * Renamed GET\_IFACE to IFACE

###To-do
* Start on other modules
  * "check" for monitoring the progress of directory/file moving, copying, creating by size and rate
  * "recurse" for changing file permissions in shared directories

##v0.1 Connect functional:
###Completed
* connect
  * configures properly from main configuration script
  * runs properly with manually added installation variables
 
###To-do:
* connect
  * Test under more scrutiny
* Makefile
  * Start the makefile

##v0.0 Initial commit:
###Goals
* connect
  * Connect to the internet with command-line parameters
  * All configuration files in bash
  * Configuration in $CONFIG_DIR/connect/connect.conf
  * Includes default connection profile, in $CONFIG_DIR/connect/defaults.conf
* configure
  * Check for dependencies in scripts/*/deps
  * Attempts to install dependencies with package manages
  * Create subshell for each targets individual configuration script
* Makfile
  * Places installation variables (configuration file paths) in each target
  * Includes install

###Completed
* configure script complete
  * Checks for dependencies
  * Excecutes sub-configuration scripts
  * Allows for verbosity to be set with options
  * Full command line parsing architecture
* connect
  * configure script almost complete
* Reworked directory tree

###To-do
* connect
  * Complete and test configure script
  * Write connect scripts

