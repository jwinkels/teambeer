begin
    tapi.om_tapigen.compile_api(p_table_name=>'PLAYER', p_enable_insertion_of_rows=>true, p_enable_update_of_rows=>true, p_enable_deletion_of_rows=>true);
    tapi.om_tapigen.compile_api(p_table_name=>'DATES', p_enable_insertion_of_rows=>true, p_enable_update_of_rows=>true, p_enable_deletion_of_rows=>true);
    tapi.om_tapigen.compile_api(p_table_name=>'BEER', p_enable_insertion_of_rows=>true, p_enable_update_of_rows=>true, p_enable_deletion_of_rows=>true);
end;
/