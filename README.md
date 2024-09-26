# Dynamic_data_ingestion
he task aims to fetch data from a specified link, store it in HDFS, and create a Hive table to visualize the data. Initially, ensuring access to the provided link and successful data retrieval is essential. Subsequently, determining the data format and schema, if structured, is pivotal. Utilizing tools like wget or curl for data retrieval and HDFS CLI for storage follows. Finally, creating a Hive table, loading data, and verifying correctness conclude the task, with an optional script for automation.

# Tools used:
* HDFS
* Hive
* Shell scripting
* wget

# Project files:
* 'url.txt' : Contains the URLs of the files to be downloaded.
* 'sqlqueries.hql' : Contains HiveQL queries for creating a database and table, and loading the data into Hive.
* 'eltfile.sh' : A shell script that orchestrates the download and data loading processes.

# Workflow:
1. The Shell script file 'eltfile.sh' is dependent on the 'url.txt' and 'sqlqueries.hql' files.
2. When the shell script file is executed, the required files provided in the 'url.txt' file will be downloaded.
3. After downloading, the files it will be loaded into HDFS for storage.
4. The 'sqlqueries.hql' file will then be executed to create a database and the required table to load the data from HDFS.

> [!NOTE]
> Alternatively, you can run the commands separately:
> 1. Execute the commands in eltfile.sh to download and load files into HDFS(remove the last command).
> 2. Run the HiveQL commands in 'sqlqueries.hql' manually to create the database and tables.

> [!CAUTION]
> * Make sure you've provided executable permission for the required files before executing.
```bash
chmod +x filename.extension
```
> * Run only the Shell Script file - 'eltfile.sh'.