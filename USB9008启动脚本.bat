@echo off
set /p a001=JDC-ax1800pro~9008COM£º
echo ÊäÈë¶Ë¿ÚºÅÎªCOM%a001%£¬Loading SBL to DDR Please wait...
QSaharaServer.exe -p \\.\COM%a001% -s 13:0-SBL -v 3
echo ------------------------------------------------
echo JDC-ax1800pro~9008 start bat
echo Èç¹ûÇ°Ãæ»Ø³µºó ³öÏÖSuccessfully uploaded all images¼È´ú±í³É¹¦
echo Íê³ÉÇ°ÃæÄÇ´Î»Ø³µºó 9008¶Ë¿Ú»áµôÒ»ÏÂ È»ºóÖØĞÂÊ¶±ğ
echo Èç¹û½ÓÏÂÀ´Ïë½øÈëuboot webuiË¢»úÍøÒ³»Ö¸´ 
echo ÄÇÃ´ĞèÒªÒ»Ö±°´×¡µçÔ´½Ó¿ÚÅÔ±ßµÄ¸´Î»¼ü
echo È»ºó°´ÏÂ»Ø³µºó ºìµÆÁÁÆğÉÁ¼¸ÏÂ±ä³ÉÀ¶µÆ¼´¿ÉËÉÊÖ
echo Èç¹ûÏë½øÏµÍ³Ö±½Ó»Ø³µ¼´¿É (Ç°ÌáÏµÍ³Ã»ÎÊÌâ£©
echo ÆäËû¼û½Ì³Ì£ºhttps://www.right.com.cn/forum/thread-8424961-1-1.html
echo                     [96m@V-2333[0m
echo ------------------------------------------------
rem wait 4s
timeout /t 4 /nobreak
pause
echo  Loading uboot layer and uboot to ddr...
QsaharaServer.exe -p \\.\COM%a001% -s 25:0-QSEE -s 23:0-RPM -s 1:0-CDT -s 34:0-DEVCFG -s 5:0-APPSBL -v 3
echo JDC-ax1800pro~9008 start bat
echo Èç¹ûÎÄ¼şÃ»ÎÊÌâ ´ËÊ±Â·ÓÉÆ÷ÒÑÓ¦½øÈëuboot
echo ÆäËû¼û½Ì³Ì£ºhttps://www.right.com.cn/forum/thread-8426300-1-1.html
echo                     [96m@V-2333[0m
call "%~f0"