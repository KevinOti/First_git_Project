delimiter $$
create event year_delete_stale_audit_rows
on schedule
	at '2022-06-07'
do begin
delete from amount
    where action_date < year(2003-06-01)-interval 1 year;
end$$
	
delimiter ;