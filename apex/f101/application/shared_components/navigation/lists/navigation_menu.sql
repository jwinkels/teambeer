prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1701155072460732
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'BEER_APP'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(2006599109107675)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2208964117107828)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2916684861424799)
,p_list_item_display_sequence=>15
,p_list_item_link_text=>unistr('Meine Getr\00E4nke')
,p_list_item_link_target=>'f?p=&APP_ID.:5:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-beer'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'5'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2401207287141423)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>'MANNSCHAFT'
,p_list_item_link_target=>'f?p=&APP_ID.:10:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-soccer-ball-o'
,p_security_scheme=>wwv_flow_imp.id(2204089956107800)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'10'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2666881005398598)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Einstellungen'
,p_list_item_link_target=>'f?p=&APP_ID.:20:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-gears'
,p_security_scheme=>wwv_flow_imp.id(2204089956107800)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'20'
);
wwv_flow_imp.component_end;
end;
/
