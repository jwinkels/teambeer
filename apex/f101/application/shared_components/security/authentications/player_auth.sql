prompt --application/shared_components/security/authentications/player_auth
begin
--   Manifest
--     AUTHENTICATION: PLAYER_AUTH
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1701155072460732
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'BEER_APP'
);
wwv_flow_imp_shared.create_authentication(
 p_id=>wwv_flow_imp.id(2641607828003655)
,p_name=>'PLAYER_AUTH'
,p_scheme_type=>'NATIVE_CUSTOM'
,p_attribute_03=>'authenticate'
,p_attribute_05=>'N'
,p_invalid_session_type=>'LOGIN'
,p_use_secure_cookie_yn=>'N'
,p_ras_mode=>0
);
wwv_flow_imp.component_end;
end;
/
