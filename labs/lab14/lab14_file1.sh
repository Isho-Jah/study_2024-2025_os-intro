lockfile="./lock.file"
exec {fn}>$lockfile

while test -f "$lockfile"
do
if flock -n ${fn}
then
	echo "File is locked"
	sleep 5
	echo "File is unlocked"
	flock -u ${fn}
else
	echo "File is locked"
	sleep 5

fi
done	
