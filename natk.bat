@echo off 
color F0
title NetworkAnalysisToolkit
:start
echo WELCOME TO NATK!

pause

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
		:ip
		echo WELOCME TO THE IPCONFIG MODULE!
		pause
		
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
			
			
			
			
			
			
			
			:whois
			echo Loading.
        ping localhost -n 2 >nul
		cls
		echo Loading..
		ping localhost -n 2 >nul
		cls
		echo Loading...
		ping localhost -n 2 >nul
		cls
		:is
	    echo WELCOME TO THE WHOIS MODULE!
		
		echo Press 9 to start whois
		echo Press 8 to go to the main menu
		set /p whois=
		if %whois% == 9 start www.whois.net & goto who
		if %whois% == 8 cls & goto start 
		if %whois% NEQ 9 cls & goto is
		if %whois% NEQ 8 cls & goto is
		
		:who
		
	
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
			
		