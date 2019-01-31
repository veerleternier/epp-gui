-------
General
-------

The EPP GUI can be used to connect to any EPP server and test XML commands.
This document explains all features of the EPP GUI. Some features are for internal
use only and will result in an error when used on our EPP server from an external
host.

Communicating with an EPP server consists of the following steps:

* establish an SSL connection to the server
* read the initial greeting (which the server will sent after ssl handshake)
* repeat:

  * compose an EPP command
  * write the command on the socket
  * read the reply from the socket
  * process the reply (e.g. parse with XML parser)

The EPP GUI has two main screens:

* Communication: All features used to communicate with the EPP server.
* Logging: Logging of your actions.
