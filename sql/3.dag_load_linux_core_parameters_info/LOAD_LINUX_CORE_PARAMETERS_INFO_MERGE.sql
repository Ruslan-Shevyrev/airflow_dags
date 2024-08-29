MERGE INTO DBADMINDATA.HOST_LINUX_CORE_PARAMS_DESCRIPTION p
	USING (SELECT :param AS PARAM, :description AS DESCRIPTION FROM dual) s
		ON (p.PARAM = s.PARAM)
	WHEN MATCHED THEN UPDATE SET p.DESCRIPTION = s.DESCRIPTION
	WHEN NOT MATCHED THEN INSERT (p.PARAM, p.DESCRIPTION)
	VALUES (s.PARAM, s.DESCRIPTION)