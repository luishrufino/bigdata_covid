SELECT
  Question,
  Value,

  CASE 
    WHEN Question = 'mes_pesquisa' THEN
      CASE Ref
        WHEN 'Julho' THEN '07/2020'
        WHEN 'Agosto' THEN '08/2020'
        WHEN 'Setembro' THEN '09/2020'
        ELSE Ref
      END
    ELSE Ref
  END AS Ref

FROM `pnad-covid-460322.ibgepnad.DICT-QUESTIONS`
ORDER BY Question, Value

