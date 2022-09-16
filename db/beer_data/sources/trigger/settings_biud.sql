create or replace trigger settings_biud 
    before insert or update or delete 
    on settings
    for each row
begin
    if not deleting then
        if inserting then
            :new.created_at := sysdate;
            if :new.created_by is null then
                :new.created_by := nvl(sys_context('APEX$SESSION','APP_USER'), user);
            end if;
        end if;

        if updating then
            :new.updated_at := sysdate;
            if :new.updated_by is null then
                :new.updated_by := nvl(sys_context('APEX$SESSION','APP_USER'), user);
            end if;
        end if;
    end if;
end;
/