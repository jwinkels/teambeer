prompt --application/pages/page_00012
begin
--   Manifest
--     PAGE: 00012
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
 p_id=>12
,p_user_interface_id=>wwv_flow_imp.id(2200930326107785)
,p_name=>unistr('Guthaben \00E4ndern')
,p_alias=>unistr('GUTHABEN-\00C4NDERN')
,p_page_mode=>'MODAL'
,p_step_title=>unistr('Guthaben \00E4ndern')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'16'
,p_last_updated_by=>'JAN'
,p_last_upd_yyyymmddhh24miss=>'20220915145355'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(2404689288152622)
,p_plug_name=>'DEPOSIT'
,p_region_template_options=>'#DEFAULT#:t-Region--removeHeader js-removeLandmark:t-Region--noBorder:t-Region--scrollBody'
,p_plug_template=>wwv_flow_imp.id(2103169932107726)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2404973787152625)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2404689288152622)
,p_button_name=>'BT_ABORT'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2176147346107757)
,p_button_image_alt=>'Abbrechen'
,p_button_position=>'CLOSE'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(2404811397152624)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(2404689288152622)
,p_button_name=>'BT_SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#:t-Button--iconLeft'
,p_button_template_id=>wwv_flow_imp.id(2176147346107757)
,p_button_image_alt=>'Speichern'
,p_button_position=>'CREATE'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2404773449152623)
,p_name=>'P12_BETRAG'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(2404689288152622)
,p_prompt=>'Betrag'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_imp.id(2173514022107751)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'0'
,p_attribute_03=>'right'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(2405061908152626)
,p_name=>'P12_PLAYER_ID'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(2404689288152622)
,p_display_as=>'NATIVE_HIDDEN'
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(2405381137152629)
,p_name=>'onClickCancel'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(2404973787152625)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(2405472706152630)
,p_event_id=>wwv_flow_imp.id(2405381137152629)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2405169649152627)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'SAVE'
,p_process_sql_clob=>'player_edit.save_deposit;'
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2404811397152624)
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(2405243879152628)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'CLOSE'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(2404811397152624)
);
wwv_flow_imp.component_end;
end;
/
