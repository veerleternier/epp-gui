-------------
Configuration
-------------

The EPP GUI has a standard configuration file. The values in this file can be
overwritten by your own configuration file. There are 2 ways to declare your configuration file:

#. Name the file ".epp-gui.properties" and put it in your home folder.
#. Choose a name and location yourself and set the variable by executing
   "export EPP_GUI_CONFIG=/tmp/bla.properties" via command-line.
   A complete configuration file could look like this:
.. code::

  server.hostname=epp.nic.vlaanderen,epp.nic.brussels
  server.port=700
  timeout=3000

  trust.keystore.file=path/to/keyfile.jks
  trust.keystore.password=123456

  feature.haProxyEnabled=false
  feature.sslOptionsEnabled=false

Following parameters can be set in the configuration file:

* server.hostname: comma-separated list of hostnames, they
  will appear as a drop-down list in the host field of the EPP GUI.
* server.port: default port for the EPP server.
* timeout: If your session or socket is idle for the period indicated here (in
  milliseconds), a connection timeout message will be shown in the Output
  section.
* trust.keystore.file: path to a Java Keystore that contains trusted
  certificates. Use this if you need to override the default Java truststore.
  This should not be necessary, as the default truststore ensures secure
  communication with the DNS Belgium EPP servers.
* trust.keystore.password: the password to the keystore file.
* feature.haProxyEnabled: true or false, HAProxy configuration available
  in the interface.
* feature.sslOptionsEnabled: true or false, SSL options configuration available
  in the interface.
