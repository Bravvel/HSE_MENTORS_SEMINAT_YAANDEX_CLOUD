CREATE EXTERNAL TABLE transactions_v2 (
  transaction_id STRING,
  user_id STRING,
  amount DOUBLE,
  currency STRING,
  transaction_date TIMESTAMP,
  is_fraud INT
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION 's3a://myfirstbucket/transactions_v2/';

CREATE EXTERNAL TABLE logs_v2 (
  log_id INT,
  transaction_id STRING,
  category STRING,
  comment STRING,
  log_timestamp TIMESTAMP
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ';'
STORED AS TEXTFILE
LOCATION 's3a://myfirstbucket/logs_v2/';
