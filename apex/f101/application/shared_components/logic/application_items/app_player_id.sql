prompt --application/shared_components/logic/application_items/app_player_id
begin
--   Manifest
--     APPLICATION ITEM: APP_PLAYER_ID
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1701155072460732
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'BEER_APP'
);
wwv_flow_imp_shared.create_flow_item(
 p_id=>wwv_flow_imp.id(2641282700951979)
,p_name=>'APP_PLAYER_ID'
,p_protection_level=>'I'
);
wwv_flow_imp.component_end;
end;
/
