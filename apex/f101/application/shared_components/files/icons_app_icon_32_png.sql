prompt --application/shared_components/files/icons_app_icon_32_png
begin
--   Manifest
--     APP STATIC FILES: 101
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2022.04.12'
,p_release=>'22.1.0'
,p_default_workspace_id=>1701155072460732
,p_default_application_id=>101
,p_default_id_offset=>0
,p_default_owner=>'BEER_APP'
);
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7AF4000003F6494441545847C5574B28AE61109EDF6D4121D78458B1B2C08A356B59B073DD91CB82254AC9C20209A5DCC2126BF65694B291954859B827A25CCEF14CCD34DF';
wwv_flow_imp.g_varchar2_table(2) := '5DBFA3F396BE7CEFCC7CCF3B33CFF3CE1FFBFCFCFC43FF71C500E06B512C160B84919090A07BB083BDFC6123CADF6D23DF623FC900FEB9BBBBA3BCBC3C0D98989848EFEFEF94919141F7F7F70A02363737370C1A7E58F9F9F974727242595959EA8FBDAF';
wwv_flow_imp.g_varchar2_table(3) := 'F8A10015003E9E9B9B4B2D2D2DB4BABACA8EC9C9C91CFCE3E3C3931D805B5C5CA48E8E0E7A7A7A6290580D0D0DB4BDBDCD1F4D4A4A0AF497800A00C6F8F8CACA8A9E2AA82C726AF7FEE1E12155555539FC01F4F2F2923324CBFA3B0020DDB2A908BFD26C';
wwv_flow_imp.g_varchar2_table(4) := '53EDB70F5BDB1B365DC8626A6A2A3D3E3EF26B8FBFF40032F0F6F6E6493502FF0400E2B6B5B5D1F2F2723800A44AEA2D288F8E8EA8BABA9A767777A9AEAE4EC11D1F1F53454585A337E6E7E7A9B7B797DF89FFE9E929959595797AC8B704880E10422979';
wwv_flow_imp.g_varchar2_table(5) := '0E0D0DD1D8D8982333B2D7D8D8489B9B9BBC270770FB2F2D2D517B7BBB27B39E268423824C4E4ED2F0F03077F3C6C686A66D7D7D9D03CDCDCD5157571737567171319F2E3D3D9D9FCFCFCF747D7DCDA746CDBF4D43410D00A8156AE65E566CD013F820EA';
wwv_flow_imp.g_varchar2_table(6) := '0BBAE259585848E7E7E7EA06F1123B693E618DAF10C1084EA0A11F0037A0DBDB5B162D00C9CECEE6E7C3C3839AD9725ADF9D9D1DAAAFAFD7574A43A92332D0DADACA06613A505B5B4BFBFBFBFCE1D9D959EAEFEFD7669372C21F0D5B5E5ECEF1B6B6B6A8';
wwv_flow_imp.g_varchar2_table(7) := 'B9B9990E0E0EA8B2B292E33300A11950E7E4E4505A5A9A03801F0DCFCECEA8A7A78766666638107C4B4A4AB467B06F4B2031D043C2163EA405805ADA4B463440F225F491274E2F369605966622E356A860ABEFED752C4D185582EEEE6E5A585870F07B70';
wwv_flow_imp.g_varchar2_table(8) := '7090A6A6A6540710CB66C0F6017A4DC1FB01886AC2A6A626AE2718206B606080A6A7A7159434A1B5115B4F068462612C70D310B638715F5F1F970D41D10FE80B61941F0D3B3B3BF9B695523BE60104010D45B96CCDDD8CB8BABAA282820295DDD2D25282';
wwv_flow_imp.g_varchar2_table(9) := 'F40A7B00D04F88F01E4285D9419BD0A6264888DC3A10F5BF5B88EC3770EBAA28C5D38441F380658B5F13666666B2445B66680984CB98726C13C67B1D5B008801E5C4C4F5FAFAAA9392A3043042DAAC124A3DE399072C80F1F1711A1919E1894BE602C956';
wwv_flow_imp.g_varchar2_table(10) := 'DC521C25D5226A52EBBDBD3DAAA9A951A5D4C3C5A303510DE847C3209FB869E80EE8A713BF3A0F0040984EC43D0F8C8E8EF244F4D385264C4949A1979797D0508E26C4AF1A0C1596A77EDEDFD5015C501313139E109EA1D4D20CC87197171515A9AC4AC7';
wwv_flow_imp.g_varchar2_table(11) := 'DAAB5A69E433B6E3D7D2DADA9ADE78A1FE761E80E1C5C5850E1651F3807BC693BE00507716837EB8384A60A5348AE7FF6AFF2F94E47356CF83C6580000000049454E44AE426082';
wwv_flow_imp_shared.create_app_static_file(
 p_id=>wwv_flow_imp.id(2202172474107795)
,p_file_name=>'icons/app-icon-32.png'
,p_mime_type=>'image/png'
,p_file_charset=>'utf-8'
,p_file_content => wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
wwv_flow_imp.component_end;
end;
/
