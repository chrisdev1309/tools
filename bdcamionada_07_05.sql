SELECT 
    datid, datname, pid, usesysid, usename,
    application_name, client_addr, client_hostname, client_port, 
    backend_start, xact_start, query_start, state_change, 
    state, backend_xid,
    backend_xmin, query
FROM pg_stat_activity 
WHERE state != 'idle' 
	AND datname = 'bdcamionada_07_05';

SELECT
    'SELECT pg_terminate_backend(' || pid ||');' AS matar_consulta, query_start, query, state, usename, application_name, client_addr
FROM pg_stat_activity 
WHERE state != 'idle' 
	AND datname = 'bdcamionada_07_05';	


SELECT pg_terminate_backend()