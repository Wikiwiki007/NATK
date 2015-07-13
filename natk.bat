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
if %car% == 4 goto host


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
		
		
		:netstats
		
		echo Loading.
        ping localhost -n 2 >nul
		cls
		echo Loading..
		ping localhost -n 2 >nul
		cls
		echo Loading...
		ping localhost -n 2 >nul
		cls
		echo WELCOME TO THE NETSTATS MODULE!
		
		
		echo Press a to Display All connections and listening ports
		echo Press e to Display Ethernet statistics.
		echo Press n to Display addresses and port numbers in Numerical form.
		echo Press r to Display the Routing table.
		echo Press o to Display the Owning process ID associated with each connection.
		echo Press b to Display the exe involved in creating each connection or listening port.
		echo Press es to Display Ethernet statistics and Display per-protocol statistics
        set /p stat=
		if %stat% == a goto allstat
		if %stat% == e goto ethstat
		if %stat% == n goto nstats
		if %stat% == r goto routstats
		if %stat% == o goto owistats
		if %stat% == b goto exestats
		if %stat% == es goto protostats
		
		
		:allstats
		
		netstat -a %int%
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		:ethstat
		
		netstat -e %int%
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		
		:nstats
		
		netstat -n %int%
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		:routstats
		
		netstat -r %int%
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		:owistats
		
		netstat -o %int%
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		:exestats
		
		netstat -b %int%
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		:protostats
		
		netstat -e -s %int%
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		

		
		
		:host
		hostname
		
		cho done!
	    echo Press s to go to the menu
		echo Press e to close the window
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
	
		
			
		