#!/bin/bash

ls $HOME/Downloads | while read -r ls
do
	d="$HOME/Downloads/$ls"
#	echo $d
	month_file=$(date +%b -r "$d")
	day_file=$(date +%d -r "$d")
	date_dir=${month_file}_${day_file}
	do="$HOME/Downloads"
	year=$(date +%Y)
	dy="$HOME/Downloads/$year"
	year_dir=$(date +%Y -r $d)
	
	if [ -f "$d" ] && [ -d "$do/$year_dir" ] && [ -d "$do/$year_dir/$date_dir" ]
	then
		mv "$d" "$do/$year_dir/$date_dir"
		
	elif [ -f "$d" ] && [ -d "$do/$year_dir" ] 
	then
		mkdir "$do/$year_dir/$date_dir"
		mv "$d" "$do/$year_dir/$date_dir"
		
	elif [ -f "$d" ]
	then
		mkdir "$do/$year_dir"
		mkdir "$do/$year_dir/$date_dir"
		mv "$d" "$do/$year_dir/$date_dir"	
	fi
done

