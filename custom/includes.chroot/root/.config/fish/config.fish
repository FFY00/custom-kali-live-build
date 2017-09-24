#!/bin/bash
#Obey2 by FFY00 based on the work of Kussic(@chaos6.net)
colour="\e[01;31m" # Dark Red
os_string="anubisOS"
host_name=$(hostname)
kernel=$(uname -r)
arch_bit=$(uname -m)
up_time=$(uptime | awk '{print $3}' | sed 's|,||g')
wm=$DE
cpu_name=$(grep 'model name' /proc/cpuinfo  | uniq | awk -F':' '{print $2}' | cut -f1 -d"@")
ram_total=$(free -mt | grep Mem: | awk '{print $2}')
ram_used=$(free -mt | grep Mem: | awk '{print $3}')
my_shell=$(echo $SHELL | sed 's|/bin/||g')
#df -h --output=fstype,size,used /home | tail -n1 | awk '{ print $3" / "$2" ("$1")"}'
#root_space=$(df -h --output=fstype,size,used / | tail -n1 | awk '{ print $3" / "$2" ("$1")"}')
root_space=$(df -h 2> /dev/null | grep sda1 | awk '{ print $3" / "$2""}')
#home_space=$(df -h --output=fstype,size,used $HOME | tail -n1 | awk '{ print $3" / "$2" ("$1")"}')


echo -e '\e[00;01m                    ___-------- '
echo -e '\e[00;31m                 _ \e[00;01m/         /\e[01;31m________'
echo -e '\e[00;01m              \e[01;31m /XX\e[00;01m( /     \ )\e[01;31mXXXXXXXXXXX\'
echo -e '\e[01;31m             /XXX\e[00;01m(   O   O  )\e[01;31mXXXXXXXXXXXXXXX\'
echo -e '\e[01;31m            /XXX\e[00;01m(      U      )        \e[01;31mXXXXXXX\'
echo -e '\e[01;31m          /XXXXX\e[00;01m(              )     \e[01;31mXXXXXXXXXXX\'
echo -e '\e[01;31m         /XXXXX/ \e[00;01m(     O      )__ \e[01;31mXXXXXX   \XXXXX\'
echo -e '\e[01;31m        |XXXXX/   \e[00;01m/            \e[01;31mXXXXXX   \e[00;01m\__ \e[01;31m\XXXXX|'
echo -e '\e[01;31m        |XXXXXX\e[00;01m__/          \e[01;31mXXXXXX         \e[00;01m\______-----'
echo -e '\e[00;01m  --___ \e[01;31m|XXX\e[00;01m__/          \e[01;31mXXXXXX      \e[00;01m\__             /'
echo -e '\e[00;01m   \   \\___/   ___/\  \e[01;31mXXXXXX            \e[00;01m\\_________--/'
echo -e "\e[00;01m    \__    ___/    \e[01;31mXXXXXX                    \e[01;31mXXXXX|"
echo -e '\e[00;01m       \__/\e[01;31mXXX\ XXXXXX                      \e[00;01m/\e[01;31mXXXXX|'
echo -e '\e[01;31m         \XXXXXXXXX  \e[00;01m\                     /\e[01;31mXXXXX/'
echo -e '\e[01;31m          \XXXXXX     \e[00;01m\                  _/\e[01;31mXXXXX/'
echo -e '\e[01;31m            \XXXXX--__\e[00;01m/                _/ \e[01;31mXXXX/'
echo -e '\e[01;31m             \XXXXXXXX\e[00;01m________________/\e[01;31mXXXXXX/'
echo -e '\e[01;31m                \XXXXXXXXXXXXXXXXXXXXXXXXXX/'
echo -e '\e[01;31m                  \XXXXXXXXXXXXXXXXXXXXXX/'
echo -e "${colour} OS:\e[00m ${os_string} ${arch_bit} | ${colour} Hostname:\e[00m ${host_name} | ${colour}Kernel:\e[00m ${kernel}"
echo -e "${colour} RAM:\e[00m ${ram_used} / ${ram_total} MB | ${colour}CPU:\e[00m${cpu_name} | ${colour}Disk:\e[00m ${root_space}\e[00m"
echo
