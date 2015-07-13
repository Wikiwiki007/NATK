@echo off 
color F0
title NetworkAnalysisToolkit

echo WELCOME TO NATK!

pause
:start
echo Press 1 for ipconfig
echo Press 2 for whois
echo Press 3 for netstats
echo Press 4 for hostname
set /p car=
if %car% == 1 goto ipconfig
if %car% == 2 goto whois
if %car% == 3 goto netstats


		:ipconfig
		echo Loading.
        ping localhost -n 2 >nul
		cls
		echo Loading..
		ping localhost -n 2 >nul
		cls
		echo Loading...
		ping localhost -n 2 >nul
		cls

		echo WELOCME TO THE IPCONFIG MODULE!
		pause
		:ip
		echo Type all for full configuration information.
		echo Type Flush to Purge the DNS Resolver cache.
		echo Type register to  Refresh all DHCP leases and re-register DNS names.
		echo Type Display to Display the contents of the DNS Resolver Cache.
		set /p type=
		if %type% == all goto all
		if %type% == flush goto Flush
		if %type% == register goto register
		if %type% == display goto display
		if %type% NEQ flush goto ip
		if %type% NEQ register goto ip
		if %type% NEQ display goto ip

		if %type% NEQ all goto ip
		
		:all 
		
	    ipconfig /all
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF

		
		:Flush 
		
	    ipconfig /flushdns
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		:register
		
	    ipconfig /registerdns
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		:display 
		
	    ipconfig /displaydns
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
			
