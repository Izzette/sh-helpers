<!---
sh-helpers/README.md
Isabell Cowan (c) 2015
https://github.com/Izzette/sh-helpers
-->
#sh-helpers README
##A simple set of shell tools for Linux to simplify use and administration
###Overview:
sh-helpers intends to provide an expansive collection of command-line tools to simplify Linux use and administration.  Currently, the project is only tested to support Arch Linux, but I hope to provide support for other systems in the future. All the tools are written in interpreted languages, making them easily debugged and modified (even after installation). Currently, all current and planned modules are written in bash.  Most likely, bash will remain the predominate language.  The project is young, and I hope to see contribution from members of the open source community.

###Documentation:
Documentation can be found in the sh-helpers/doc/ directory.  Currently, documentation is somewhat lacking, and needs to be filled in. The wiki will eventually be filled in with user-end documentation.
The directory contains:
* CHANGELOG
  * A log of all minor versions and a description of the changes made
* CONTRIBUTERS
  * A list of all contributers, and any contact information supplied.
* CONTRIBUTING -- Empty
  * This document is currently empty, but will contain guidelines for contributing. Feel free to fork and/or contribute.
* CONVENTIONS -- Absent
  * This document is currently absent, but will contain guidelines for the coding and user interface conventions.

###Currently supported modules:
* connect
  * Provides a single versatile command for connecting to the Internet.
  * Supports interface names and aliases.
  * Allows for a default connection profile to be set in the configuration directory.

###Planned modules:
* recurse
  * A tool for recursively changing permissions of directories.
  * The primary objective is to correct permissions for shared directories.

###Licensing:
Currently, there is not specific license for this project.  However, I will update it to GPL relatively soon.  It would be kind for you to respect the intent that licensing for the time being.

