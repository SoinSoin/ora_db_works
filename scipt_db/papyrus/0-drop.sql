BEGIN
  -- DROP trigger
  FOR i IN (SELECT utr.trigger_name FROM USER_TIGGERS utr) LOOP
    EXECUTE IMMEDIATE 'drop trigger '|| i.trigger_name ||' CASCADE CONSTRAINTS ';
  END LOOP;

  -- DROP Sequences!
  FOR i IN (SELECT us.sequence_name FROM USER_SEQUENCES us) LOOP
    EXECUTE IMMEDIATE 'drop sequence '|| i.sequence_name ||'';
  END LOOP;

  --DROP Tables!
  FOR i IN (SELECT ut.table_name FROM USER_TABLES ut) LOOP
    EXECUTE IMMEDIATE 'drop table '|| i.table_name ||' CASCADE CONSTRAINTS ';
  END LOOP;

END;