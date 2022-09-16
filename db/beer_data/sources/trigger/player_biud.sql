create or replace trigger player_biud 
    before insert or update or delete 
    on player
    for each row
begin
    if not deleting then
        if :new.id is null then
            :new.id := to_number(sys_guid(),'XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX');
        end if;

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