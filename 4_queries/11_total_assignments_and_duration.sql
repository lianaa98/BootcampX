SELECT day,
      count(*) AS number_of_assignments,
      sum(duration) AS duration
FROM assignments
GROUP BY assignments.day
ORDER BY assignments.day;