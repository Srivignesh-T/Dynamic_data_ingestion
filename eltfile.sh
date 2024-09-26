# wget command to get the file
wget -O 'nc-est2023.csv' -r -nd -N -A "*.csv" -i "url.txt"

# -O : Store the downloaded data with the given file name
# -r : Recursively download
# -nd : No directories to be created while downloading, files will be saved in the current directory
# -N : Timestamping (to avoid redundant downloads)
# -A : Accept the given file formats
# -i : Input file with the required URLs 

# transferring the output to hdfs
hdfs dfs -mkdir -p /user/hadoop/files
hdfs dfs -put 'nc-est2023.csv' /user/hadoop/files
hdfs dfs -ls /user/hadoop/files/

# runing the hql file to create database
hive -f sqlqueries.hql