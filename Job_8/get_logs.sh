filename=number_connection-$(date +'%d-%m-%Y-%H:%M')
last jb | grep jb | wc -l > "$filename" && tar -cvf Backup/"$filename".tar "$filename"
