prompt --application/pages/page_00005
begin
--   Manifest
--     PAGE: 00005
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
 p_id=>5
,p_user_interface_id=>wwv_flow_imp.id(2200930326107785)
,p_name=>unistr('Meine Getr\00E4nke')
,p_alias=>unistr('MEINE-GETR\00C4NKE')
,p_step_title=>unistr('Meine Getr\00E4nke')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'03'
,p_last_updated_by=>'JAN'
,p_last_upd_yyyymmddhh24miss=>'20220918143120'
);
wwv_flow_imp_page.create_report_region(
 p_id=>wwv_flow_imp.id(2908565297358137)
,p_name=>unistr('Getr\00E4nkeliste')
,p_template=>wwv_flow_imp.id(2103169932107726)
,p_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--stacked:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_source_type=>'NATIVE_SQL_REPORT'
,p_query_type=>'TABLE'
,p_query_table=>'P5_DRINKS'
,p_query_where=>'player_id = :APP_PLAYER_ID '
,p_include_rowid_column=>false
,p_ajax_enabled=>'Y'
,p_lazy_loading=>false
,p_query_row_template=>wwv_flow_imp.id(2143692489107739)
,p_query_num_rows=>15
,p_query_options=>'DERIVED_REPORT_COLUMNS'
,p_query_num_rows_type=>'NEXT_PREVIOUS_LINKS'
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_csv_output=>'N'
,p_prn_output=>'N'
,p_sort_null=>'L'
,p_plug_query_strip_html=>'N'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2908662188358138)
,p_query_column_id=>1
,p_column_alias=>'USER_AVATAR'
,p_column_display_sequence=>10
,p_column_heading=>'User Avatar'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2908787981358139)
,p_query_column_id=>2
,p_column_alias=>'USER_NAME'
,p_column_display_sequence=>20
,p_column_heading=>'User Name'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2908853045358140)
,p_query_column_id=>3
,p_column_alias=>'EVENT_DATE'
,p_column_display_sequence=>30
,p_column_heading=>'Event Date'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2908962406358141)
,p_query_column_id=>4
,p_column_alias=>'EVENT_TYPE'
,p_column_display_sequence=>40
,p_column_heading=>'Event Type'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2909025481358142)
,p_query_column_id=>5
,p_column_alias=>'EVENT_TITLE'
,p_column_display_sequence=>50
,p_column_heading=>'Event Title'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_report_columns(
 p_id=>wwv_flow_imp.id(2909142155358143)
,p_query_column_id=>6
,p_column_alias=>'EVENT_DESC'
,p_column_display_sequence=>60
,p_column_heading=>'Event Desc'
,p_use_as_row_header=>'N'
,p_disable_sort_column=>'N'
,p_derived_column=>'N'
,p_include_in_export=>'Y'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2917163722424804)
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
wwv_flow_imp.component_end;
end;
/
