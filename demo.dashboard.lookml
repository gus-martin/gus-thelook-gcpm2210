- dashboard: control_tower
  title: Control Tower
  layout: newspaper
  preferred_viewer: dashboards-next
  description: |-
    How is the forecast and delivery?

    Contact: bi@teads.com or #teads-bi
  preferred_slug: S4QmP6gMUrr0RtIWTyb2PR
  elements:
  - title: Delivered and scheduled
    name: Delivered and scheduled
    model: production_Teads
    explore: control_tower
    type: looker_column
    fields: [schedule_and_delivery.date_granularity_adapted, schedule_and_delivery.view_market,
      schedule_and_delivery.delivery_selected_period, schedule_and_delivery.schedule_from_today_selected_period]
    pivots: [schedule_and_delivery.view_market]
    filters:
      schedule_and_delivery.is_selected_period: 'Yes'
    sorts: [schedule_and_delivery.date_granularity_adapted, schedule_and_delivery.view_market]
    limit: 5000
    column_limit: 200
    dynamic_fields: [{category: table_calculation, expression: "${schedule_and_delivery.delivery_selected_period}",
        label: Delivery (to date), value_format: "### ### ##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: delivery_to_date, _type_hint: number},
      {category: table_calculation, expression: "${schedule_and_delivery.schedule_from_today_selected_period}",
        label: Schedule (from today), value_format: "### ### ##0", value_format_name: !!null '',
        _kind_hint: measure, table_calculation: schedule_from_today, _type_hint: number}]
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: ordinal
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: schedule_and_delivery.underdelivery,
            id: schedule_and_delivery.underdelivery, name: Underdelivery}, {axisId: schedule_and_delivery.scheduled_and_delivered,
            id: schedule_and_delivery.scheduled_and_delivered, name: Scheduled and
              Delivered}, {axisId: schedule_and_delivery.overdelivery, id: schedule_and_delivery.overdelivery,
            name: Overdelivery}, {axisId: schedule_and_delivery.schedule_from_today_selected_period,
            id: schedule_and_delivery.schedule_from_today_selected_period, name: Schedule}],
        showLabels: false, showValues: false, unpinAxis: false, tickDensity: default,
        tickDensityCustom: 5, type: linear}]
    hide_legend: false
    series_types: {}
    series_colors:
      schedule_and_delivery.underdelivery: "#991B1B"
      schedule_and_delivery.forecast_selected_period: "#0D9488"
      schedule_and_delivery.overdelivery: "#115E59"
      schedule_and_delivery.scheduled_and_delivered: "#0D9488"
      schedule_and_delivery.underdelivered: "#991B1B"
      schedule_and_delivery.overdelivered: "#115E59"
      schedule_and_delivery.schedule_from_today_selected_period: "#60A5FA"
    series_labels: {}
    reference_lines: []
    trend_lines: []
    defaults_version: 1
    hidden_fields: [schedule_and_delivery.delivery_selected_period, schedule_and_delivery.schedule_from_today_selected_period]
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      View: schedule_and_delivery.view_market_parameter
      Date granularity: schedule_and_delivery.frequency_all_parameter
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 17
    col: 7
    width: 17
    height: 10
  - title: Button overview
    name: Button overview
    model: production_Teads
    explore: control_tower
    type: single_value
    fields: [visualization_control_tower.button_overview_selected]
    filters:
      schedule_and_delivery.date_filter: 1 days
      schedule_and_delivery.currency_all_parameter: USD
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 3
    col: 0
    width: 24
    height: 2
  - title: Button scope
    name: Button scope
    model: production_Teads
    explore: control_tower
    type: single_value
    fields: [visualization_control_tower.button_scope]
    filters: {}
    sorts: [visualization_control_tower.button_scope]
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      View: schedule_and_delivery.view_market_parameter
      Date granularity: schedule_and_delivery.frequency_all_parameter
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 15
    col: 4
    width: 6
    height: 2
  - title: Button market
    name: Button market
    model: production_Teads
    explore: control_tower
    type: single_value
    fields: [visualization_control_tower.button_market_selected]
    filters: {}
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      View: schedule_and_delivery.view_market_parameter
      Date granularity: schedule_and_delivery.frequency_all_parameter
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 15
    col: 0
    width: 4
    height: 2
  - title: Button channel
    name: Button channel
    model: production_Teads
    explore: control_tower
    type: single_value
    fields: [visualization_control_tower.button_channel]
    filters: {}
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      View: schedule_and_delivery.view_market_parameter
      Date granularity: schedule_and_delivery.frequency_all_parameter
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 15
    col: 10
    width: 6
    height: 2
  - title: Button client
    name: Button client
    model: production_Teads
    explore: control_tower
    type: single_value
    fields: [visualization_control_tower.button_client]
    filters: {}
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      View: schedule_and_delivery.view_market_parameter
      Date granularity: schedule_and_delivery.frequency_all_parameter
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 15
    col: 16
    width: 4
    height: 2
  - title: Button details
    name: Button details
    model: production_Teads
    explore: control_tower
    type: single_value
    fields: [visualization_control_tower.button_details]
    filters: {}
    sorts: [visualization_control_tower.button_details]
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      View: schedule_and_delivery.view_market_parameter
      Date granularity: schedule_and_delivery.frequency_all_parameter
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 15
    col: 20
    width: 4
    height: 2
  - title: Details
    name: Details
    model: production_Teads
    explore: control_tower
    type: looker_grid
    fields: [schedule_and_delivery.view_market, schedule_and_delivery.forecast_selected_period,
      schedule_and_delivery.percent_of_total_forecast, schedule_and_delivery.delivery_selected_period,
      schedule_and_delivery.schedule_from_today_selected_period, schedule_and_delivery.percent_of_total_delivery,
      schedule_and_delivery.schedule_to_yesterday_selected_period, schedule_and_delivery.percent_delivery_gap,
      schedule_and_delivery.delivery_gap]
    filters: {}
    sorts: [schedule_and_delivery.forecast_selected_period desc]
    limit: 5000
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", schedule_and_delivery.view_market, schedule_and_delivery.forecast_selected_period,
      schedule_and_delivery.percent_of_total_forecast, schedule_and_delivery.schedule_from_today_selected_period,
      schedule_and_delivery.delivery_selected_period, schedule_and_delivery.percent_of_total_delivery,
      schedule_and_delivery.schedule_to_yesterday_selected_period, schedule_and_delivery.percent_delivery_gap]
    show_totals: true
    show_row_totals: true
    series_cell_visualizations:
      schedule_and_delivery.forecast_selected_period:
        is_active: true
    series_text_format:
      schedule_and_delivery.percent_of_total_forecast:
        align: center
      schedule_and_delivery.percent_of_total_delivery:
        align: center
      schedule_and_delivery.percent_delivery_gap:
        align: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: false
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: schedule_and_delivery.scheduled_selected_period,
            id: schedule_and_delivery.scheduled_selected_period, name: Scheduled},
          {axisId: schedule_and_delivery.delivery_selected_period, id: schedule_and_delivery.delivery_selected_period,
            name: Delivery}], showLabels: true, showValues: true, unpinAxis: false,
        tickDensity: custom, tickDensityCustom: 23, type: linear}]
    series_types: {}
    series_colors:
      schedule_and_delivery.scheduled_selected_period: "#2563EB"
      schedule_and_delivery.delivery_selected_period: "#0D9488"
    defaults_version: 1
    hidden_fields: []
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      View: schedule_and_delivery.view_market_parameter
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 27
    col: 7
    width: 17
    height: 11
  - title: Forecast YoY details
    name: Forecast YoY details
    model: production_Teads
    explore: control_tower
    type: looker_grid
    fields: [schedule_and_delivery.view_market, schedule_and_delivery.forecast_selected_period,
      schedule_and_delivery.forecast_previous_year, schedule_and_delivery.evolution_previous_year]
    filters: {}
    sorts: [schedule_and_delivery.forecast_selected_period desc]
    limit: 5000
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      schedule_and_delivery.forecast_selected_period: Y
      schedule_and_delivery.forecast_previous_year: Y-1
    series_cell_visualizations:
      schedule_and_delivery.forecast_selected_period:
        is_active: false
    header_font_color: "#2563EB"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    title_hidden: true
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      View: schedule_and_delivery.view_market_parameter
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 19
    col: 0
    width: 7
    height: 19
  - title: Forecast
    name: Forecast
    model: production_Teads
    explore: control_tower
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [schedule_and_delivery.forecast_selected_period, visualization_control_tower.sign_equal,
      schedule_and_delivery.delivery_selected_period, visualization_control_tower.sign_plus,
      schedule_and_delivery.schedule_from_today_selected_period]
    filters: {}
    limit: 500
    dynamic_fields: [{category: dimension, expression: '"+"', label: test, value_format: !!null '',
        value_format_name: !!null '', dimension: test, _kind_hint: dimension, _type_hint: string}]
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_schedule_and_delivery.forecast_selected_period: "#3A4245"
    show_title_schedule_and_delivery.forecast_selected_period: false
    title_placement_schedule_and_delivery.forecast_selected_period: above
    value_format_schedule_and_delivery.forecast_selected_period: ''
    style_visualization_control_tower.sign_equal: "#3A4245"
    show_title_visualization_control_tower.sign_equal: false
    title_placement_visualization_control_tower.sign_equal: above
    value_format_visualization_control_tower.sign_equal: ''
    show_comparison_visualization_control_tower.sign_equal: false
    style_schedule_and_delivery.delivery_selected_period: "#115E59"
    show_title_schedule_and_delivery.delivery_selected_period: true
    title_placement_schedule_and_delivery.delivery_selected_period: above
    value_format_schedule_and_delivery.delivery_selected_period: ''
    show_comparison_schedule_and_delivery.delivery_selected_period: false
    style_visualization_control_tower.sign_plus: "#3A4245"
    show_title_visualization_control_tower.sign_plus: false
    title_placement_visualization_control_tower.sign_plus: above
    value_format_visualization_control_tower.sign_plus: ''
    show_comparison_visualization_control_tower.sign_plus: false
    style_schedule_and_delivery.schedule_from_today_selected_period: "#60A5FA"
    show_title_schedule_and_delivery.schedule_from_today_selected_period: true
    title_override_schedule_and_delivery.schedule_from_today_selected_period: Schedule
      (future)
    title_placement_schedule_and_delivery.schedule_from_today_selected_period: above
    value_format_schedule_and_delivery.schedule_from_today_selected_period: ''
    show_comparison_schedule_and_delivery.schedule_from_today_selected_period: false
    style_schedule_and_delivery.visualization_plus: "#3A4245"
    show_title_schedule_and_delivery.visualization_plus: false
    title_placement_schedule_and_delivery.visualization_plus: above
    value_format_schedule_and_delivery.visualization_plus: ''
    show_comparison_schedule_and_delivery.visualization_plus: false
    show_sql_query_menu_options: false
    column_order: ["$$$_row_numbers_$$$", schedule_and_delivery.forecast_selected_period,
      schedule_and_delivery.delivery_selected_period, test2, schedule_and_delivery.schedule_from_today_selected_period]
    show_totals: true
    show_row_totals: true
    show_row_numbers: true
    transpose: false
    truncate_text: true
    size_to_fit: true
    series_cell_visualizations:
      schedule_and_delivery.forecast_selected_period:
        is_active: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: left
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    style_schedule_and_delivery.schedule_to_yesterday_selected_period: "#3A4245"
    show_title_schedule_and_delivery.schedule_to_yesterday_selected_period: true
    title_placement_schedule_and_delivery.schedule_to_yesterday_selected_period: above
    value_format_schedule_and_delivery.schedule_to_yesterday_selected_period: ''
    show_comparison_schedule_and_delivery.schedule_to_yesterday_selected_period: false
    style_schedule_and_delivery.delivery_gap: "#000000"
    show_title_schedule_and_delivery.delivery_gap: true
    title_placement_schedule_and_delivery.delivery_gap: above
    value_format_schedule_and_delivery.delivery_gap: ''
    show_comparison_schedule_and_delivery.delivery_gap: false
    series_types: {}
    defaults_version: 0
    y_axes: []
    hide_totals: false
    hide_row_totals: false
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 5
    col: 0
    width: 4
    height: 10
  - title: Information
    name: Information
    model: production_Teads
    explore: control_tower
    type: single_value
    fields: [visualization_control_tower.text_information]
    filters:
      schedule_and_delivery.date_filter: 1 days
      schedule_and_delivery.currency_all_parameter: USD
    sorts: [visualization_control_tower.text_information]
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen:
      Rate type: schedule_and_delivery.rate_type_all_parameter
    row: 0
    col: 0
    width: 14
    height: 3
  - title: " Scheduled and delivered"
    name: " Scheduled and delivered"
    model: production_Teads
    explore: control_tower
    type: looker_column
    fields: [schedule_and_delivery.date_granularity_adapted, schedule_and_delivery.underdelivered,
      schedule_and_delivery.scheduled_and_delivered, schedule_and_delivery.overdelivered,
      schedule_and_delivery.schedule_from_today_selected_period]
    filters:
      schedule_and_delivery.is_selected_period: 'Yes'
    sorts: [schedule_and_delivery.date_granularity_adapted]
    limit: 500
    x_axis_gridlines: false
    y_axis_gridlines: false
    show_view_names: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: normal
    limit_displayed_rows: false
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    y_axes: [{label: '', orientation: left, series: [{axisId: schedule_and_delivery.underdelivered,
            id: schedule_and_delivery.underdelivered, name: Underdelivered}, {axisId: schedule_and_delivery.scheduled_and_delivered,
            id: schedule_and_delivery.scheduled_and_delivered, name: Scheduled and
              Delivered}, {axisId: schedule_and_delivery.overdelivered, id: schedule_and_delivery.overdelivered,
            name: Overdelivered}, {axisId: schedule_and_delivery.schedule_from_today_selected_period,
            id: schedule_and_delivery.schedule_from_today_selected_period, name: Schedule
              (from today)}], showLabels: true, showValues: true, valueFormat: '###
          ### ##0, "K"', unpinAxis: false, tickDensity: custom, tickDensityCustom: 5,
        type: linear}]
    series_types: {}
    series_colors:
      schedule_and_delivery.schedule_to_yesterday_selected_period: "#60A5FA"
      schedule_and_delivery.underdelivered: "#991B1B"
      schedule_and_delivery.scheduled_and_delivered: "#115E59"
      schedule_and_delivery.overdelivered: "#2DD4BF"
      schedule_and_delivery.schedule_from_today_selected_period: "#60A5FA"
    series_labels: {}
    reference_lines: [{reference_type: line, range_start: max, range_end: min, margin_top: deviation,
        margin_value: mean, margin_bottom: deviation, label_position: right, color: "#000000",
        line_value: '2500000'}]
    hidden_fields: []
    hidden_points_if_no: []
    orientation: auto
    title_placement_schedule_and_delivery.forecast_selected_period: above
    style_schedule_and_delivery.schedule_from_today_selected_period: "#60A5FA"
    title_placement_schedule_and_delivery.schedule_from_today_selected_period: above
    style_schedule_and_delivery.delivery_selected_period: "#115E59"
    show_title_schedule_and_delivery.delivery_selected_period: true
    title_placement_schedule_and_delivery.delivery_selected_period: above
    title_placement_schedule_and_delivery.schedule_to_yesterday_selected_period: above
    style_schedule_and_delivery.delivery_gap: "#991B1B"
    title_placement_schedule_and_delivery.delivery_gap: above
    defaults_version: 1
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      Date granularity: schedule_and_delivery.frequency_all_parameter
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 5
    col: 4
    width: 16
    height: 10
  - title: Contact
    name: Contact
    model: production_Teads
    explore: control_tower
    type: single_value
    fields: [visualization_control_tower.text_contact]
    filters:
      schedule_and_delivery.date_filter: 1 days
      schedule_and_delivery.currency_all_parameter: USD
    sorts: [visualization_control_tower.text_contact]
    limit: 1
    custom_color_enabled: true
    show_single_value_title: false
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    enable_conditional_formatting: false
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    series_types: {}
    defaults_version: 1
    hidden_fields: []
    y_axes: []
    listen: {}
    row: 0
    col: 14
    width: 10
    height: 3
  - title: Delivery gap
    name: Delivery gap
    model: production_Teads
    explore: control_tower
    type: marketplace_viz_multiple_value::multiple_value-marketplace
    fields: [schedule_and_delivery.delivery_gap, visualization_control_tower.sign_equal,
      schedule_and_delivery.delivery_selected_period, visualization_control_tower.sign_less,
      schedule_and_delivery.schedule_to_yesterday_selected_period]
    filters: {}
    limit: 500
    hidden_fields: []
    hidden_points_if_no: []
    series_labels: {}
    show_view_names: true
    font_size_main: ''
    orientation: auto
    style_schedule_and_delivery.delivery_gap: "#000000"
    show_title_schedule_and_delivery.delivery_gap: false
    title_placement_schedule_and_delivery.delivery_gap: above
    value_format_schedule_and_delivery.delivery_gap: ''
    style_visualization_control_tower.sign_equal: "#3A4245"
    show_title_visualization_control_tower.sign_equal: false
    title_placement_visualization_control_tower.sign_equal: above
    value_format_visualization_control_tower.sign_equal: ''
    show_comparison_visualization_control_tower.sign_equal: false
    style_schedule_and_delivery.delivery_selected_period: "#115E59"
    show_title_schedule_and_delivery.delivery_selected_period: true
    title_placement_schedule_and_delivery.delivery_selected_period: above
    value_format_schedule_and_delivery.delivery_selected_period: ''
    show_comparison_schedule_and_delivery.delivery_selected_period: false
    style_schedule_and_delivery.schedule_to_yesterday_selected_period: "#3A4245"
    show_title_schedule_and_delivery.schedule_to_yesterday_selected_period: true
    title_placement_schedule_and_delivery.schedule_to_yesterday_selected_period: above
    value_format_schedule_and_delivery.schedule_to_yesterday_selected_period: ''
    show_comparison_schedule_and_delivery.schedule_to_yesterday_selected_period: false
    style_visualization_control_tower.sign_less: "#3A4245"
    show_title_visualization_control_tower.sign_less: false
    title_placement_visualization_control_tower.sign_less: above
    value_format_visualization_control_tower.sign_less: ''
    show_comparison_visualization_control_tower.sign_less: false
    style_schedule_and_delivery.schedule_from_today_selected_period: "#60A5FA"
    show_title_schedule_and_delivery.schedule_from_today_selected_period: true
    title_override_schedule_and_delivery.schedule_from_today_selected_period: Schedule
      (future)
    title_placement_schedule_and_delivery.schedule_from_today_selected_period: above
    value_format_schedule_and_delivery.schedule_from_today_selected_period: ''
    show_comparison_schedule_and_delivery.schedule_from_today_selected_period: false
    show_comparison_schedule_and_delivery.delivery_gap: false
    style_schedule_and_delivery.forecast_selected_period: "#3A4245"
    show_title_schedule_and_delivery.forecast_selected_period: false
    title_placement_schedule_and_delivery.forecast_selected_period: above
    value_format_schedule_and_delivery.forecast_selected_period: ''
    series_types: {}
    defaults_version: 0
    y_axes: []
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 5
    col: 20
    width: 4
    height: 10
  - title: Forecast YoY
    name: Forecast YoY
    model: production_Teads
    explore: control_tower
    type: looker_grid
    fields: [schedule_and_delivery.forecast_selected_period, schedule_and_delivery.forecast_previous_year,
      schedule_and_delivery.evolution_previous_year, total]
    filters: {}
    sorts: [schedule_and_delivery.forecast_selected_period desc]
    limit: 5000
    dynamic_fields: [{category: dimension, expression: '""', label: Total, value_format: !!null '',
        value_format_name: !!null '', dimension: total, _kind_hint: dimension, _type_hint: string}]
    show_view_names: false
    show_row_numbers: false
    transpose: false
    truncate_text: true
    hide_totals: false
    hide_row_totals: false
    size_to_fit: true
    table_theme: white
    limit_displayed_rows: false
    enable_conditional_formatting: false
    header_text_alignment: center
    header_font_size: '12'
    rows_font_size: '12'
    conditional_formatting_include_totals: false
    conditional_formatting_include_nulls: false
    show_sql_query_menu_options: false
    show_totals: true
    show_row_totals: true
    series_labels:
      schedule_and_delivery.forecast_selected_period: Y
      schedule_and_delivery.forecast_previous_year: Y-1
    series_cell_visualizations:
      schedule_and_delivery.forecast_selected_period:
        is_active: false
    header_font_color: "#2563EB"
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    y_axis_scale_mode: linear
    x_axis_reversed: false
    y_axis_reversed: false
    plot_size_by_field: false
    trellis: ''
    stacking: ''
    legend_position: center
    point_style: none
    show_value_labels: false
    label_density: 25
    x_axis_scale: auto
    y_axis_combined: true
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    defaults_version: 1
    series_types: {}
    hidden_fields: []
    y_axes: []
    listen:
      Date: schedule_and_delivery.date_filter
      Currency: schedule_and_delivery.currency_all_parameter
      Sales team: sf_sales_team.team
      Sales rep: sf_user.name
      Holding agency: sf_opportunity.agency_group_name__c
      Agency: sf_opportunity.agency_name__c
      Advertiser group: sf_opportunity.advertiser_group_name__c
      Advertiser: sf_opportunity.advertiser_name__c
      Industry: sf_opportunity.advertiser_industry__c
      Rate type: schedule_and_delivery.rate_type_all_parameter
      Stage: schedule_and_delivery.stage
      Opportunity Id: sf_opportunitylineitem.opportunity_id
      Pipeline mode: schedule_and_delivery.pipeline_mode_parameter
      Weighted pipeline: schedule_and_delivery.factor_mode_parameter
      TV extend: schedule_and_delivery.tv_extend_mode_parameter
      Delivery channel: schedule_and_delivery_hybrid_dimensions.delivery_channel
      Buying channel: schedule_and_delivery_hybrid_dimensions.buying_channel
      Business scope: schedule_and_delivery_hybrid_dimensions.business_scope
      View: schedule_and_delivery.view_market_parameter
      Director team: sf_sales_team.dir_team
      Product: sf_opportunitylineitem.product_name__c
      Commercial office: sf_market.selling_office_name__c_r
      Commercial market: sf_market.name__c
      Commercial region: sf_market.world_region__c
      Seller office: schedule_and_delivery.seller_office_name
    row: 17
    col: 0
    width: 7
    height: 2
  filters:
  - name: View
    title: View
    type: field_filter
    default_value: market
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: []
    field: schedule_and_delivery.view_market_parameter
  - name: Date
    title: Date
    type: field_filter
    default_value: this month
    allow_multiple_values: true
    required: true
    ui_config:
      type: relative_timeframes
      display: inline
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: []
    field: schedule_and_delivery.date_filter
  - name: Date granularity
    title: Date granularity
    type: field_filter
    default_value: daily
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: []
    field: schedule_and_delivery.frequency_all_parameter
  - name: Currency
    title: Currency
    type: field_filter
    default_value: USD
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: []
    field: schedule_and_delivery.currency_all_parameter
  - name: Rate type
    title: Rate type
    type: field_filter
    default_value: monthly
    allow_multiple_values: true
    required: true
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: []
    field: schedule_and_delivery.rate_type_all_parameter
  - name: Commercial region
    title: Commercial region
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Date]
    field: sf_market.world_region__c
  - name: Commercial office
    title: Commercial office
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Commercial region, Date]
    field: sf_market.selling_office_name__c_r
  - name: Commercial market
    title: Commercial market
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Commercial region, Commercial office, Date]
    field: sf_market.name__c
  - name: Director team
    title: Director team
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Commercial market, Commercial region, Commercial office,
      Date]
    field: sf_sales_team.dir_team
  - name: Sales team
    title: Sales team
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Commercial market, Director team, Commercial region, Commercial
        office, Date]
    field: sf_sales_team.team
  - name: Sales rep
    title: Sales rep
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Sales team, Commercial market, Director team, Commercial
        region, Commercial office, Date]
    field: sf_user.name
  - name: Holding agency
    title: Holding agency
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Date]
    field: sf_opportunity.agency_group_name__c
  - name: Agency
    title: Agency
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Holding agency, Date]
    field: sf_opportunity.agency_name__c
  - name: Advertiser group
    title: Advertiser group
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Date]
    field: sf_opportunity.advertiser_group_name__c
  - name: Advertiser
    title: Advertiser
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Industry, Advertiser group, Date]
    field: sf_opportunity.advertiser_name__c
  - name: Industry
    title: Industry
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Date]
    field: sf_opportunity.advertiser_industry__c
  - name: Delivery channel
    title: Delivery channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Date]
    field: schedule_and_delivery_hybrid_dimensions.delivery_channel
  - name: Buying channel
    title: Buying channel
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Date]
    field: schedule_and_delivery_hybrid_dimensions.buying_channel
  - name: Business scope
    title: Business scope
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Date]
    field: schedule_and_delivery_hybrid_dimensions.business_scope
  - name: Product
    title: Product
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Date]
    field: sf_opportunitylineitem.product_name__c
  - name: Stage
    title: Stage
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Date]
    field: schedule_and_delivery.stage
  - name: Opportunity Id
    title: Opportunity Id
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Business scope, Buying channel, Stage, Delivery channel,
      Sales team, Sales rep, Holding agency, Agency, Advertiser, Industry, Advertiser
        group, Commercial market, Director team, Commercial region, Commercial office,
      Product, Date]
    field: sf_opportunitylineitem.opportunity_id
  - name: Pipeline mode
    title: Pipeline mode
    type: field_filter
    default_value: '1'
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: []
    field: schedule_and_delivery.pipeline_mode_parameter
  - name: Weighted pipeline
    title: Weighted pipeline
    type: field_filter
    default_value: factor
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: []
    field: schedule_and_delivery.factor_mode_parameter
  - name: TV extend
    title: TV extend
    type: field_filter
    default_value: 1 = 1
    allow_multiple_values: true
    required: false
    ui_config:
      type: dropdown_menu
      display: inline
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: []
    field: schedule_and_delivery.tv_extend_mode_parameter
  - name: Seller office
    title: Seller office
    type: field_filter
    default_value: ''
    allow_multiple_values: true
    required: false
    ui_config:
      type: advanced
      display: popover
      options: []
    model: production_Teads
    explore: control_tower
    listens_to_filters: [Date]
    field: schedule_and_delivery.seller_office_name
