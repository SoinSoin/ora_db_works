If you want to insert date at format mm/dd/yyyy create this trigger on connect to db USER SYS

```
CREATE OR REPLACE TRIGGER NLS_CONFIG_TRG 
AFTER LOGON ON DATABASE
BEGIN
	execute immediate 'ALTER SESSION SET NLS_DATE_FORMAT="DD/MM/RRRR"';
END;
```