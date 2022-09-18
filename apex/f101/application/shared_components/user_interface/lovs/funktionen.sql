prompt --application/shared_components/user_interface/lovs/funktionen
begin
--   Manifest
--     FUNKTIONEN
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1701155072460732
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'BEER_APP'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(2630348216672824)
,p_lov_name=>'FUNKTIONEN'
,p_lov_query=>'.'||wwv_flow_imp.id(2630348216672824)||'.'
,p_location=>'STATIC'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2630699219672826)
,p_lov_disp_sequence=>1
,p_lov_disp_value=>'Bar aufmachen'
,p_lov_return_value=>'OPEN'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2631068500672826)
,p_lov_disp_sequence=>2
,p_lov_disp_value=>unistr('Getr\00E4nke')
,p_lov_return_value=>'PAY'
);
wwv_flow_imp_shared.create_static_lov_data(
 p_id=>wwv_flow_imp.id(2631495940672826)
,p_lov_disp_sequence=>3
,p_lov_disp_value=>'Strafen'
,p_lov_return_value=>'FEES'
);
wwv_flow_imp.component_end;
end;
/
