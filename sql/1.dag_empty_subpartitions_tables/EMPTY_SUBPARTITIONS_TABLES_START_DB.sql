BEGIN
	DELETE FROM DBADMINDATA.EMPTY_SUBPARTITIONS_TABLES WHERE DBID = :dbid;
	DELETE FROM DBADMINDATA.EMPTY_SUBPARTITIONS_TABLES_DB_LIST WHERE DBID = :dbid;
	INSERT INTO DBADMINDATA.EMPTY_SUBPARTITIONS_TABLES_DB_LIST(DBID, 
																														STATUS)
																									VALUES (:dbid, 
																													'running');
END;