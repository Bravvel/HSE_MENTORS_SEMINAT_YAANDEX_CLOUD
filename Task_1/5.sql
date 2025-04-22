-- Частота категорий логов
SELECT
  l.category,
  COUNT(*) AS category_count
FROM transactions_v2 t
JOIN logs_v2 l
  ON t.transaction_id = l.transaction_id
GROUP BY l.category
ORDER BY category_count DESC;
