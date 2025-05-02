echo "Enter file format: "
read format
echo "Enter directory: "
read directory
find "$directory" -name "*.${format}" -type f | wc -l
