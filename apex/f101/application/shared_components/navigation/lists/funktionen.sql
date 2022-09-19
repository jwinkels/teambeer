prompt --application/shared_components/navigation/lists/funktionen
begin
--   Manifest
--     LIST: FUNKTIONEN
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
 p_id=>wwv_flow_imp.id(2632030630730430)
,p_name=>'FUNKTIONEN'
,p_list_status=>'PUBLIC'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2632638946730432)
,p_list_item_display_sequence=>20
,p_list_item_link_text=>unistr('Getr\00E4nke')
,p_list_item_link_target=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:3:::'
,p_list_item_icon=>'fa-beer'
,p_list_text_01=>'Nimm dir ein Bier'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(2633037031730432)
,p_list_item_display_sequence=>30
,p_list_item_link_text=>'Strafen'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-money'
,p_list_text_01=>'Bezahl deine Strafen'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp.component_end;
end;
/
