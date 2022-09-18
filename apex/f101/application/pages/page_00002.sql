prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
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
 p_id=>2
,p_user_interface_id=>wwv_flow_imp.id(2200930326107785)
,p_name=>'Strafen bezahlen'
,p_alias=>'STRAFEN-BEZAHLEN'
,p_page_mode=>'MODAL'
,p_step_title=>'Strafen bezahlen'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JAN'
,p_last_upd_yyyymmddhh24miss=>'20220916143106'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2626950540651519)
,p_name=>'Strafen bezahlen'
,p_template=>wwv_flow_imp.id(2103169932107726)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'SQL'
,p_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       DEPOSIT,',
'       FEE,',
'       DEPOSIT-FEE NEW_DEPOSIT,',
'       case ',
'        when DEPOSIT-FEE > 0 then ''green''',
'        when DEPOSIT-FEE = 0 then ''black''',
'        when DEPOSIT-FEE < 0 then ''red''',
'       end color',
'  from P10_PLAYERS',
' where id = :APP_PLAYER_ID'))
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
 p_id=>wwv_flow_imp.id(2627071530651520)
,p_query_column_id=>1
,p_column_alias=>'ID'
,p_column_display_sequence=>10
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2627254000651522)
,p_query_column_id=>2
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
 p_id=>wwv_flow_imp.id(2627355329651523)
,p_query_column_id=>3
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
 p_id=>wwv_flow_imp.id(2627731221651527)
,p_query_column_id=>4
,p_column_alias=>'NEW_DEPOSIT'
,p_column_display_sequence=>50
,p_column_heading=>'Guthaben nach Strafen'
,p_use_as_row_header=>'N'
,p_column_format=>'S999G999G999G999G990D00'
,p_column_html_expression=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<span style="color: #COLOR#">',
'#NEW_DEPOSIT#',
'</span>'))
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2627882298651528)
,p_query_column_id=>5
,p_column_alias=>'COLOR'
,p_column_display_sequence=>60
,p_hidden_column=>'Y'
,p_derived_column=>'N'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2627951017651529)
,p_plug_name=>'BUTTONS'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2045530884107708)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_03'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2628161198651531)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2627951017651529)
,p_button_name=>'BT_CANCEL'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--danger'
,p_button_template_id=>wwv_flow_imp.id(2176034773107757)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Abbrechen'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2628076402651530)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2627951017651529)
,p_button_name=>'BT_SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2176147346107757)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'bezahlen'
,p_button_position=>'NEXT'
,p_icon_css_classes=>'fa-check'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2628254021651532)
,p_name=>'onClickCancel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2628161198651531)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2628390119651533)
,p_event_id=>wwv_flow_imp.id(2628254021651532)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2628498120651534)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE'
,p_process_sql_clob=>'player_edit.pay_fees'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2628076402651530)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2628519626651535)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'not apex_error.have_errors_occurred'
,p_process_when_type=>'EXPRESSION'
,p_process_when2=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
