--группировка по датам
SELECT
  DATE(transaction_date) AS day,
  COUNT(*) AS transaction_count,
  SUM(amount) AS total_amount,
  ROUND(AVG(amount),2) AS avg_amount
FROM transactions_v2
GROUP BY DATE(transaction_date)
ORDER BY day;

