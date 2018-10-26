library(sparklyr)

Sys.setenv(HADOOP_CONF_DIR = '/usr/local/hadoop/etc/hadoop')
Sys.setenv(YARN_CONF_DIR = '/usr/local/hadoop/etc/hadoop')
Sys.setenv(SPARK_HOME = '/usr/local/spark')

config <- spark_config()
config$spark.executor.instances <- 5
config$spark.driver.cores <- 1
config$spark.executor.cores <- 1
config$spark.executor.memory <- "1G"

sc <- spark_connect(
  master = 'yarn-client',
  version = '2.3.2',
  method = c("shell", "livy", "databricks", "test"),
  app_name = "EDA",
  config = config)

table2EDA <- spark_read_csv(sc, name = "table2eda", path = "hdfs:///user/spark/share/output/table2_eda/part-00000-502a411f-99e4-43ce-83fe-c341fd2beb1c-c000.csv") 
