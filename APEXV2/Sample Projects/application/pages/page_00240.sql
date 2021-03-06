prompt --application/pages/page_00240
begin
wwv_flow_api.create_page(
 p_id=>240
,p_user_interface_id=>wwv_flow_api.id(44535706737386353012)
,p_name=>'Tasks'
,p_step_title=>'Tasks'
,p_autocomplete_on_off=>'OFF'
,p_group_id=>wwv_flow_api.id(455770727713806832)
,p_page_template_options=>'#DEFAULT#'
,p_overwrite_navigation_list=>'Y'
,p_navigation_list_position=>'TOP'
,p_navigation_list_template_id=>wwv_flow_api.id(39211003846943661)
,p_nav_list_template_options=>'#DEFAULT#:t-NavTabs--inlineLabels-lg:t-NavTabs--displayLabels-sm'
,p_last_upd_yyyymmddhh24miss=>'20180720110847'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(100177923325829290)
,p_plug_name=>'Tasks'
,p_region_template_options=>'#DEFAULT#:t-Region--noPadding:t-Region--hideHeader:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(44535680543877352962)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ID,',
'       (select p.name from EBA_DEMO_PROJECTS p where p.id = t.project_id) PROJECT,',
'       (select m.name from EBA_DEMO_PROJ_MILESTONES m where m.id = t.milestone_id) MILESTONE,',
'       (select tm.full_name from EBA_DEMO_PROJ_TEAM_MEMBERS tm where tm.id = t.assignee) ASSIGNEE,',
'       NAME,',
'       DESCRIPTION,',
'       START_DATE,',
'       END_DATE,',
'       decode(IS_COMPLETE_YN, ''Y'', ''Yes'', ''No'') IS_COMPLETE,',
'       CREATED,',
'       CREATED_BY,',
'       UPDATED,',
'       UPDATED_BY',
'  from EBA_DEMO_PROJ_TASKS t'))
,p_plug_source_type=>'NATIVE_JQM_REFLOW'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'STRIPE:STROKE'
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100178050712829291)
,p_name=>'ID'
,p_data_type=>'NUMBER'
,p_is_visible=>false
,p_display_sequence=>10
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100178317481829294)
,p_name=>'ASSIGNEE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Assignee'
,p_heading_alignment=>'RIGHT'
,p_display_sequence=>70
,p_value_alignment=>'RIGHT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100178480053829295)
,p_name=>'NAME'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Task'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attribute_01=>'LINK'
,p_attribute_02=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.:RP,241:P241_ID:&ID.'
,p_attribute_03=>'&NAME.'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100178575440829296)
,p_name=>'DESCRIPTION'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Description'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100178663241829297)
,p_name=>'START_DATE'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'Start Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>80
,p_value_alignment=>'CENTER'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100178755659829298)
,p_name=>'END_DATE'
,p_data_type=>'DATE'
,p_is_visible=>true
,p_heading=>'End Date'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>90
,p_value_alignment=>'CENTER'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100178987629829300)
,p_name=>'CREATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Created'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>110
,p_value_alignment=>'CENTER'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100179038651829301)
,p_name=>'CREATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Created By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>120
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100179110671829302)
,p_name=>'UPDATED'
,p_data_type=>'TIMESTAMP_LTZ'
,p_is_visible=>true
,p_heading=>'Updated'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>130
,p_value_alignment=>'CENTER'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100179237431829303)
,p_name=>'UPDATED_BY'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Updated By'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>140
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100179366057829304)
,p_name=>'PROJECT'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Project'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>20
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100179481160829305)
,p_name=>'MILESTONE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Milestone'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_region_column(
 p_id=>wwv_flow_api.id(100179546064829306)
,p_name=>'IS_COMPLETE'
,p_data_type=>'VARCHAR2'
,p_is_visible=>true
,p_heading=>'Is Complete'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>100
,p_value_alignment=>'LEFT'
,p_attribute_01=>'PLAIN'
,p_attribute_08=>'N'
,p_escape_on_http_output=>true
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(1309486488059246287)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noUI'
,p_plug_template=>wwv_flow_api.id(44535672487334352956)
,p_plug_display_sequence=>10
,p_include_in_reg_disp_sel_yn=>'Y'
,p_plug_display_point=>'REGION_POSITION_01'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'HTML'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(459086403320993374)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(1309486488059246287)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(44535701501085352993)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create Task'
,p_button_position=>'REGION_TEMPLATE_NEXT'
,p_button_redirect_url=>'f?p=&APP_ID.:241:&SESSION.::&DEBUG.:RP,241::'
,p_grid_new_grid=>false
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(459087124827993375)
,p_name=>'Refresh Projects'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(459086403320993374)
,p_bind_type=>'bind'
,p_bind_event_type=>'apexafterclosedialog'
);
end;
/
