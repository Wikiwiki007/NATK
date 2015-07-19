

@echo off 
color 0B



title NetworkAnalysisToolkit v1.0
mode con: cols=170  lines=50
echo set speech = Wscript.CreateObject("SAPI.spVoice") >> "temp.vbs"
set text=WELCOME TO MY NETWORK ANALYSIS TOOL.
echo speech.speak "%text%" >> "temp.vbs"
start temp.vbs
ping localhost -n 2 >nul
del temp.vbs

:start
cls
echo WELCOME TO NATK! by Wikiwiki007 [donate: paetron.com/Wikiwiki007]
echo before starting i need to ask if you want all the commands to be logged to a .txt file
echo do you want? [Y/N]
set /p yes=
if %yes% == N goto png
if %yes% == Y echo please enter the name of the txt file & set name=>>
set /p file= 









:png
ping localhost -n 2 >nul
 
echo __________________________
echo ^|Press 1 for ipconfig	 ^|
echo ^|Press 2 for whois	 ^|
echo ^|Press 3 for netstats	 ^|
echo ^|Press 4 for hostname	 ^|
echo ^|Press 5 for traceroute  ^|
echo ^|Press 6 for dos         ^|
echo ^|Press 7 for mac adress  ^|
echo __________________________
set /p car=
if %car% == 1 goto ip
if %car% == 2 goto whois
if %car% == 3 goto netstats
if %car% == 4 goto host
if %car% == 5 goto route
if %car% == 6 goto dos
if %car% == 7 goto mac 
 
if %car% NEQ 1 goto start
if %car% NEQ 2 goto start
if %car% NEQ 3 goto start
if %car% NEQ 4 goto start
if %car% NEQ 5 goto start
if %car% NEQ 6 goto start
if %car% NEQ 7 goto start		
		
		:ip
		cls
		echo WELCOME TO THE IPCONFIG MODULE!
		ping localhost -n 2 >nul
		echo ___________________________________________________________________
		echo Type all for full configuration information.
		echo Type Flush to Purge the DNS Resolver cache.
		echo Type register to  Refresh all DHCP leases and re-register DNS names.
		echo Type Display to Display the contents of the DNS Resolver Cache.
		echo ___________________________________________________________________
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
		
	    ipconfig /all%name%%file%.txt
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF

		
		:Flush 
		
	    ipconfig /flushdns%name%%file%.txt
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		:register
		
	    ipconfig /registerdns%name%%file%.txt
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		:display 
		
	    ipconfig /displaydns%name%%file%.txt
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
			
			
			
			
			
			
			
			:whois
			cls
		
	    echo WELCOME TO THE WHOIS MODULE!
		echo _____________________________
		echo Press 9 to start whois
		echo Press 8 to go to the main menu
		echo ______________________________
		set /p whois=
		if %whois% == 9 start www.whois.net & goto who
		if %whois% == 8 cls & goto start 
		if %whois% NEQ 9 cls & goto whois
		if %whois% NEQ 8 cls & goto whois
		
		:who
		
	
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		:netstats
		cls
		
		echo WELCOME TO THE NETSTATS MODULE!
		
		ping localhost -n 2 >nul
		echo __________________________________________________________________________________
		echo Press a to Display All connections and listening ports
		echo Press e to Display Ethernet statistics.
		echo Press n to Display addresses and port numbers in Numerical form.
		echo Press r to Display the Routing table.
		echo Press o to Display the Owning process ID associated with each connection.
		echo Press b to Display the exe involved in creating each connection or listening port.
		echo Press es to Display Ethernet statistics and Display per-protocol statistics
		echo __________________________________________________________________________________
        set /p stat=
		if %stat% == a goto allstat
		if %stat% == e goto ethstat
		if %stat% == n goto nstats
		if %stat% == r goto routstats
		if %stat% == o goto owistats
		if %stat% == b goto exestats
		if %stat% == es goto protostats
		
		
		:allstat
		
		netstat -a %int%%name%%file%.txt 
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		:ethstat
		
		netstat -e %int%%name%%file%.txt
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		
		:nstats
		
		netstat -n %int%%name%%file%.txt
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		:routstats
		
		netstat -r %int%%name%%file%.txt
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		:owistats
		
		netstat -o %int%%name%%file%.txt
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		:exestats
		
		netstat -b %int%%name%%file%.txt
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		
		:protostats
		
		netstat -e -s %int%%name%%file%.txt
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		

		
		
		:host
		cls
		hostname
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		
		:route
		cls
		echo WELCOME TO THE TRACEROUTE MODULE!
        ping localhost -n 2 >nul
		
		
		set /p ip=Enter the target ip adress:
		
		
		
		
		
		tracert %ip%%name%%file%.txt
		
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
	
		:dos
		
	      cls
		echo WELCOME TO THE DOS MODULE!
		ping localhost -n 2 >nul
		echo Enter the target's ip adress
		set /p ip=
		
		ping -n 600 -l 100 %ip%
		
		echo done!
	    echo Press s to go to the menu
		echo Press e to close the program
		set /p var=
		if %var% == s goto start
		if %var% == e goto EOF
		
		:mac
                 cls
		echo WELCOME TO THE MAC MODULE
		ping localhost -n 2>nul
		getmac 	

                  echo done!
            echo Press s to go to the menu
                echo Press e to close the program
                set /p var=
                if %var% == s goto start
                if %var% == e goto EOF

