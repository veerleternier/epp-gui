------------------------
Example: Getting Started
------------------------

Using the following flow, you should be able to send your first command to the
EPP server.

Prerequisites
^^^^^^^^^^^^^

* Make sure your (external) IP address is configured on the Registrar
  website.
* Download the EPP GUI and the example XML commands from the DNS
  Belgium website
* You should have at least Java 8 installed on your PC.
* You should install the Java Cryptography Extension (JCE) for your version of
  Java.

Example
^^^^^^^

Extract the downloaded zip file for the EPP GUI.
Start the EPP GUI from command line:

.. code::

  $ java -jar epp-gui.jar


Enter Host and Port in the interface:

.. code::

  Host: epp.registry.tryout.dns.be
  Port: 33128

Click on "Connect + Receive".

You have now established a connection with the EPP server. The output section
should contain a greeting.

Enter the login command in the Input section:

.. literalinclude:: xml/login-request.xml
  :language: XML


Click on "Send + Receive".

You should receive a "login succeeded" response in the Output section:

.. literalinclude:: xml/login-response.xml
  :language: XML


Now you can start sending other commands, e.g. create-contact:

.. literalinclude:: xml/create-contact.xml
  :language: XML
