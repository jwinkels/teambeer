prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1701155072460732
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'BEER_APP'
);
wwv_flow_imp_page.create_page(
 p_id=>1
,p_user_interface_id=>wwv_flow_imp.id(2200930326107785)
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'TEAMBEER'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function drink(){',
'    apex.server.process("DRINK",{},{',
'    success: function( data )  {',
'        //alert(data.status);',
'        if(data.status){',
'            apex.region(''DATA'').refresh();',
'            apex.confirm("Prost! Don''t drink and drive!");',
'        }else{',
unistr('            apex.message.showErrors({type:"error", location: "page", message: "Kein Bier mehr f\00FCr dich!", unsafe: false});'),
'        }',
'    }',
'    });',
'}'))
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
,p_last_updated_by=>'JAN'
,p_last_upd_yyyymmddhh24miss=>'20220919115856'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2209889129107832)
,p_plug_name=>'TEAMBEER'
,p_region_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>wwv_flow_imp.id(2075362955107719)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_num_rows=>15
,p_region_image=>'#APP_FILES#icons/app-icon-512.png'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
,p_attribute_03=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2625843382651508)
,p_plug_name=>'&nbsp;'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-Cards--basic:t-Cards--displayIcons:t-Cards--3cols:t-Cards--animColorFill'
,p_plug_template=>wwv_flow_imp.id(2103169932107726)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_list_id=>wwv_flow_imp.id(2632030630730430)
,p_plug_source_type=>'NATIVE_LIST'
,p_list_template_id=>wwv_flow_imp.id(2151898246107742)
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2625938910651509)
,p_name=>'Meine Daten'
,p_region_name=>'DATA'
,p_template=>wwv_flow_imp.id(2103169932107726)
,p_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       NAME,',
'       DEPOSIT,',
'       FEE,',
'       BALANCE,',
'       LOGIN,',
'       ADMIN,',
'       quantity || '' am (''||last_event|| '')'' drinks,',
'       case ',
'        when balance > 0 then ''green''',
'        when balance = 0 then ''black''',
'        when balance < 0 then ''red''',
'       end as color',
'  from P1_PLAYER_DATA',
' where id = :APP_PLAYER_ID',
' fetch first row only;'))
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2144019741107739)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2626053438651510)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2626100214651511)
,p_query_column_id=>2
,p_column_alias=>'NAME'
,p_column_display_sequence=>20
,p_column_heading=>'Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2626242072651512)
,p_query_column_id=>3
,p_column_alias=>'DEPOSIT'
,p_column_display_sequence=>30
,p_column_heading=>'Guthaben'
,p_use_as_row_header=>'N'
,p_column_format=>'S999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2626399571651513)
,p_query_column_id=>4
,p_column_alias=>'FEE'
,p_column_display_sequence=>40
,p_column_heading=>'Strafen'
,p_use_as_row_header=>'N'
,p_column_format=>'S999G999G999G999G990D00'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2626400449651514)
,p_query_column_id=>5
,p_column_alias=>'BALANCE'
,p_column_display_sequence=>50
,p_column_heading=>'Gesamt'
,p_use_as_row_header=>'N'
,p_column_format=>'S999G999G999G999G990D00'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color: #COLOR#">',
'#BALANCE#',
'</span>'))
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2626537189651515)
,p_query_column_id=>6
,p_column_alias=>'LOGIN'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2626635648651516)
,p_query_column_id=>7
,p_column_alias=>'ADMIN'
,p_column_display_sequence=>70
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2909310109358145)
,p_query_column_id=>8
,p_column_alias=>'DRINKS'
,p_column_display_sequence=>90
,p_column_heading=>'letztes Mal'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2626738758651517)
,p_query_column_id=>9
,p_column_alias=>'COLOR'
,p_column_display_sequence=>80
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2628698958651536)
,p_name=>'onDialogClose'
,p_event_sequence=>10
,p_triggering_element_type=>'JAVASCRIPT_EXPRESSION'
,p_triggering_element=>'window'
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2628703414651537)
,p_event_id=>wwv_flow_imp.id(2628698958651536)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_JAVASCRIPT_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'if(this.data.dialogPageId=2){',
'    apex.region(''DATA'').refresh();',
'}'))
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2629929504651549)
,p_process_sequence=>10
,p_process_point=>'ON_DEMAND'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'DRINK'
,p_process_sql_clob=>'player_edit.drink;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
