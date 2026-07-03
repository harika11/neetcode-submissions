SELECT e.student_id, e.exam_id, e.score
FROM exam_results e
WHERE e.exam_id = (
    SELECT MIN(exam_id)
    FROM exam_results
    WHERE student_id = e.student_id
      AND score = (
          SELECT MAX(score)
          FROM exam_results
          WHERE student_id = e.student_id
      )
) order by e.student_id;