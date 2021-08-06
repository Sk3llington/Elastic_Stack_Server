#!/bin/bash


echo "******************************************************"
echo "******************************************************"
echo "********** Welcome To Catch Me If You Can ************"
echo "******************************************************"
echo "******************************************************"
printf "\n"


#variables
file_path_var="/home/sysadmin/Week_3_Homework/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/"
file_extension_var="_Dealer_schedule"


#collect user input for date
echo -e "\e[4mEnter a date in the format\e[0m" ":" "XXXX"
printf "\n"
read date_var


#collect user input for time
printf "\n"
echo -e "\e[4mEnter a time in the format\e[0m" ":"  "XX:XX:XX"
printf "\n"
read time_var
printf "\n"
echo -e "\e[4mEnter 'AM' or 'PM'\e[0m"
printf "\n"
read am_pm_var
printf "\n"
echo "*** Thank you!"


#capture results in a variable
results_var=$(grep -i "$time_var $am_pm_var" $file_path_var$date_var$file_extension_var)


#display result
printf "\n"
echo "**** Here's what you are looking for:"
printf "\n"
echo -e "**** On \e[1m$date_var\e[0m", "at \e[1m$time_var $am_pm_var\e[0m", the following dealers were working:
printf "\n"
echo "*****" $results_var "*****"
printf "\n"






printf "\n"
echo "*******************************************"
echo "*******************************************"
echo "********** Thanks for playing! ************"
echo "*******************************************"
echo "*******************************************"
printf "\n"
exit