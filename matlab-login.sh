
echo ""
echo "------------------------[IIT BOMBAY MATLAB LOGIN]-------------------------------"
printf "Enter LDAP User Name:"
read uname
printf "Enter LDAP Password:"
read -s passwd
page=`curl -# --data "ldap-login=$uname&ldap-pass=$passwd"   http://matlab.iitb.ac.in/matlab/login.php`
status=`echo $page|grep -c '<html> <body> </body> </html>' `
if [ "$status" -eq "1" ] 
then
	echo "Status: Connection of SUCCESSFULL!!!"
else
	echo "Status: Check internet, you may be already connected or please try again."
fi
echo "Thank You, for using :)"
echo "-------------------------------------------------------------------------------"
