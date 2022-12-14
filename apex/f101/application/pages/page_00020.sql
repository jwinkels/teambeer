prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_imp.id(2200930326107785)
,p_name=>'Einstellungen'
,p_alias=>'EINSTELLUNGEN'
,p_step_title=>'Einstellungen'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JAN'
,p_last_upd_yyyymmddhh24miss=>'20220916152317'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2628847202651538)
,p_plug_name=>'CONTAINER'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2103169932107726)
,p_plug_display_sequence=>20
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2629353651651543)
,p_name=>unistr('letzte \00C4nderung')
,p_template=>wwv_flow_imp.id(2103169932107726)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#:t-AVPList--leftAligned'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'P20_SETTINGS'
,p_include_rowid_column=>false
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
 p_id=>wwv_flow_imp.id(2629473611651544)
,p_query_column_id=>1
,p_column_alias=>'PRICE'
,p_column_display_sequence=>10
,p_column_heading=>unistr('Preis pro Getr\00E4nk')
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2629708443651547)
,p_query_column_id=>4
,p_column_alias=>'UPDATED_BY'
,p_column_display_sequence=>40
,p_column_heading=>'von'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2629891190651548)
,p_query_column_id=>5
,p_column_alias=>'UPDATED_AT'
,p_column_display_sequence=>50
,p_column_heading=>'am'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2667353227398601)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_imp.id(2115535539107729)
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(2006080599107671)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>wwv_flow_imp.id(2177665115107758)
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2629002854651540)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2628847202651538)
,p_button_name=>'BT_SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2176147346107757)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Speichern'
,p_button_position=>'CHANGE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2628991506651539)
,p_name=>'P20_PREIS'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2628847202651538)
,p_prompt=>'Preis'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2173514022107751)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2629102319651541)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE'
,p_process_sql_clob=>'settings_edit.save_settings;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2629250972651542)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'LOAD'
,p_process_sql_clob=>'settings_edit.load_settings;'
,p_process_clob_language=>'PLSQL'
);
wwv_flow_imp.component_end;
end;
/
