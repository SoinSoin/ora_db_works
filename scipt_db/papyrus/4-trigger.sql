-- create sequence for each table then create trigger with sequence for id
PURGE RecycleBin;
-- ALTER SESSION SET recyclebin = off;

BEGIN
  FOR r IN (SELECT table_name FROM all_tables WHERE owner='PAPYRUS') LOOP
        EXECUTE immediate 'CREATE SEQUENCE S_I_ID_'||r.table_name||' MINVALUE 1 START WITH 1 INCREMENT BY 1 CACHE 20';
  END LOOP;
  FOR r IN (SELECT cols.column_name, cols.table_name FROM all_constraints cons, all_cons_columns cols WHERE cols.owner = 'PAPYRUS' AND cons.constraint_type = 'P' AND cons.constraint_name = cols.constraint_name) LOOP
        EXECUTE immediate 'CREATE OR REPLACE TRIGGER T_I_'||r.column_name||' BEFORE INSERT ON '||r.table_name||' FOR EACH ROW BEGIN SELECT S_I_'||r.column_name||'.NEXTVAL INTO :new.'||r.column_name||' FROM dual; END;';
  END LOOP;
END;


