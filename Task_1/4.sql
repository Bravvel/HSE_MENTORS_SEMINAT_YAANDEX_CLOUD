-- Количество логов на одну транзакцию
SELECT
  t.transaction_id,
  COUNT(l.log_id) AS log_count
FROM transactions_v2 t
LEFT JOIN logs_v2 l
  ON t.transaction_id = l.transaction_id
GROUP BY t.transaction_id
ORDER BY log_count DESC;
