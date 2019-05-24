#!/bin/bash
LANG=C
clear #clean screen
function color_reset() {
	echo -e "\e[00;00m"
			}
function separate() {
    printf  "%0.s-----------" $( eval echo {1..$})
    printf  "%2.s<\e[01;32m[ $i ]\e[00;32m>" $( eval echo {1..$})
    echo -n " "
    printf  "\n%0.s-----------\e[0m" $( eval echo {1..$})
    echo ""
        }

echo -e "\e[00;31m[ Wipe All Tags From Images ]\e[00;33m"
printf '\n'
printf "=> \e[00;35m Folder path required: \e[00;32m"
read path

function cleanlist() {
    cd $path && rm -rf list.txt
        }
echo -e "\e[00;32mReading files:"
cd $path && ls > list.txt
while IFS= read -r i; do
separate
##Ruby extractor tool
exiftool -all= $i
echo -e "\e[01;32mSUCCESS \e[00;33mNo metadata in file .jpg file\e[00;32m"
done < <(grep ".jpg$" list.txt)
cleanlist
color_reset
