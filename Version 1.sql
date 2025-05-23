SELECT 
  UF,
  mes_pesquisa,
  idade,
  sexo,
  escolaridade,
  recebeu_auxilio,
  teve_febre_semana_passada,
  teve_tosse_semana_passada,
  teve_dor_garganta_semana_passada,
  teve_dificuldade_respirar,
  teve_dor_cabeca,
  teve_dor_peito,
  teve_nausea,
  teve_nariz_entupido,
  trabalhou_semana_passada,
  fez_exame,
  resultado_swab,
  resultado_furo_no_dedo,
  resultado_veia_no_braco,
  providencia_exame,
  CASE
    WHEN fez_exame = 1 AND (
      resultado_swab = 1 OR 
      resultado_furo_no_dedo = 1 OR 
      resultado_veia_no_braco = 1
    ) THEN 'Positivo'
    
    WHEN fez_exame = 1 AND (
      resultado_swab = 2 OR 
      resultado_furo_no_dedo = 2 OR 
      resultado_veia_no_braco = 2
    ) THEN 'Negativo'
    
    ELSE NULL
  END AS resultado_final,
  COUNT(*) AS total
FROM `pnad-covid-460322.ibgepnad.PNAD-2020`
GROUP BY 
  UF,
  mes_pesquisa,
  idade,
  sexo,
  escolaridade,
  recebeu_auxilio,
  teve_febre_semana_passada,
  teve_tosse_semana_passada,
  teve_dor_garganta_semana_passada,
  teve_dificuldade_respirar,
  teve_dor_cabeca,
  teve_dor_peito,
  teve_nausea,
  teve_nariz_entupido,
  trabalhou_semana_passada,
  fez_exame,
  resultado_swab,
  resultado_furo_no_dedo,
  resultado_veia_no_braco,
  providencia_exame,
  CASE
    WHEN fez_exame = 1 AND (
      resultado_swab = 1 OR 
      resultado_furo_no_dedo = 1 OR 
      resultado_veia_no_braco = 1
    ) THEN 'Positivo'
    
    WHEN fez_exame = 1 AND (
      resultado_swab = 2 OR 
      resultado_furo_no_dedo = 2 OR 
      resultado_veia_no_braco = 2
    ) THEN 'Negativo'
    
    ELSE NULL
  END
