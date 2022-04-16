#!/data/data/com.termux/files/usr/bin/bash
 
echo "Termux Byte \n"
 
echo "Tu video se guardara en tu memoria interna-Carpeta Youtobe \n"
 
echo "SELECIONE EL FORMATO DEL VIDEO \n"
echo "Para Audio mp3 presione 1"
echo "video 360px presione 2"
echo "video 480px presione 3"
echo "video 720px presione 4"
echo "video 1080px presione 5"
 
command='-no-mtime -o /data/data/com.termux/files/home/storage/shared/Youtube/%(title)s.%(ext)s -f'
read option
 
if [ "$option" -eq "1" ]
then
    echo "$command 140" > ~/.config/youtube-dl/config
    youtube-dl $1
 
elif [ "$option" -eq "2" ]
then
    echo "$command \"best[height<=360]\"" > ~/.config/youtube-dl/config
    youtube-dl $1
 
elif [ "$option" -eq "3" ]
then
    echo "$command \"best[height<=480]\"" > ~/.config/youtube-dl/config
    youtube-dl $1
 
elif [ "$option" -eq "4" ]
then
    echo "$command \"best[height<=720]\"" > ~/.config/youtube-dl/config
    youtube-dl $1
 
elif [ "$option" -eq "5" ]
then
    echo "$command \"best[height<=1080]\"" > ~/.config/youtube-dl/config
    youtube-dl $1
fi
