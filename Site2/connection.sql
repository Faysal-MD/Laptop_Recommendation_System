drop database link server;

create database link server
connect to system identified by "123456"
 using '(DESCRIPTION =
       (ADDRESS_LIST =
         (ADDRESS = (PROTOCOL = TCP)
		 (HOST = 192.168.1.4)
		 (PORT = 1621))
       )
       (CONNECT_DATA =
         (SID = XE)
       )
     )'
;  