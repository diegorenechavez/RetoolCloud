<App>
  <Include src="./functions.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    sticky={null}
    type="main"
  >
    <Module
      id="navBar1"
      name="navBar"
      pageUuid="7c83f2f8-47b8-11ef-ad77-d3ab6a4c7e02"
    />
    <Include src="./src/container1.rsx" />
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle2"
          value="#### Container title"
          verticalAlign="center"
        />
      </Header>
      <View id="f626b" viewKey="View 1">
        <PlotlyChart
          id="chart1"
          chartType="line"
          dataseries={{
            ordered: [
              {
                0: {
                  ordered: [
                    { label: "id" },
                    { datasource: "{{ enrollmentData.data ['id']}}" },
                    { chartType: "line" },
                    { aggregationType: "sum" },
                    { color: "#1E3A8A" },
                    { colors: { ordered: [] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                1: {
                  ordered: [
                    { label: "course_id" },
                    { datasource: "{{ enrollmentData.data ['course_id']}}" },
                    { chartType: "line" },
                    { aggregationType: "sum" },
                    { color: "#3170F9" },
                    { colors: { ordered: [] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                2: {
                  ordered: [
                    { label: "enrollment_count" },
                    {
                      datasource:
                        "{{ enrollmentData.data ['enrollment_count']}}",
                    },
                    { chartType: "line" },
                    { aggregationType: "sum" },
                    { color: "#60A5FA" },
                    { colors: { ordered: [] } },
                    { visible: true },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                3: {
                  ordered: [
                    { label: "length_in_weeks" },
                    {
                      datasource:
                        "{{ enrollmentData.data ['length_in_weeks']}}",
                    },
                    { chartType: "line" },
                    { aggregationType: "sum" },
                    { color: "#DBEAFE" },
                    { colors: { ordered: [] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                4: {
                  ordered: [
                    { label: "instructor_id" },
                    {
                      datasource: "{{ enrollmentData.data ['instructor_id']}}",
                    },
                    { chartType: "line" },
                    { aggregationType: "sum" },
                    { color: "#FDE68A" },
                    { colors: { ordered: [] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
              {
                5: {
                  ordered: [
                    { label: "enrollment" },
                    { datasource: "{{ enrollmentData.data ['enrollment']}}" },
                    { chartType: "line" },
                    { aggregationType: "sum" },
                    { color: "#F59E0B" },
                    { colors: { ordered: [] } },
                    { visible: false },
                    {
                      hovertemplate:
                        "<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>",
                    },
                  ],
                },
              },
            ],
          }}
          datasourceDataType="object"
          datasourceInputMode="javascript"
          datasourceJS="{{ enrollmentData.data }}"
          isDataTemplateDirty={true}
          margin="4px 8px"
          skipDatasourceUpdate={true}
          xAxis="{{ enrollmentData.data .semester}}"
          xAxisDropdown="semester"
        />
      </View>
    </Container>
    <Include src="./src/container3.rsx" />
    <Container
      id="container4"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle4"
          value="#### Summary"
          verticalAlign="center"
        />
      </Header>
      <View id="f626b" viewKey="View 1">
        <Text
          id="text1"
          value="## {{ analysis.data }}"
          verticalAlign="center"
        />
      </View>
    </Container>
    <Container
      id="tabbedContainer1"
      currentViewKey="{{ self.viewKeys[0] }}"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Tabs
          id="tabs1"
          itemMode="static"
          navigateContainer={true}
          targetContainerId="tabbedContainer1"
          value="{{ self.values[0] }}"
        >
          <Option id="00030" value="Tab 1" />
          <Option id="00031" value="Tab 2" />
          <Option id="00032" value="Tab 3" />
        </Tabs>
      </Header>
      <View id="00030" viewKey="View 1">
        <Chart
          id="barChart1"
          barGap={0.4}
          barMode="group"
          legendPosition="none"
          selectedPoints="[]"
          stackedBarTotalsDataLabelPosition="none"
          title={null}
          xAxisRangeMax=""
          xAxisRangeMin=""
          xAxisShowTickLabels={true}
          xAxisTickFormatMode="gui"
          xAxisTitleStandoff={20}
          yAxis2LineWidth={1}
          yAxis2RangeMax=""
          yAxis2RangeMin=""
          yAxis2ShowTickLabels={true}
          yAxis2TickFormatMode="gui"
          yAxis2TitleStandoff={20}
          yAxisRangeMax=""
          yAxisRangeMin=""
          yAxisShowTickLabels={true}
          yAxisTickFormatMode="gui"
          yAxisTitleStandoff={20}
        >
          <Series
            id="0"
            aggregationType="sum"
            colorArray={{ array: ["{{ theme.primary }}"] }}
            colorArrayDropDown={{ array: ["{{ theme.primary }}"] }}
            colorInputMode="colorArrayDropDown"
            connectorLineColor="#000000"
            dataLabelPosition="none"
            datasource="{{ fetchAllCourses.data }}"
            datasourceMode="source"
            decreasingBorderColor="{{ theme.danger }}"
            decreasingColor="{{ theme.danger }}"
            filteredGroups={null}
            filteredGroupsMode="source"
            gradientColorArray={{
              array: [
                { array: ["0.0", "{{ theme.success }}"] },
                { array: ["1.0", "{{ theme.primary }}"] },
              ],
            }}
            groupBy={{ array: [] }}
            groupByDropdownType="source"
            groupByStyles={{}}
            hoverTemplate="<b>%{x}</b><br>%{fullData.name}: %{y}<extra></extra>"
            hoverTemplateMode="source"
            increasingBorderColor="{{ theme.success }}"
            increasingColor="{{ theme.success }}"
            lineColor="{{ theme.primary }}"
            lineDash="solid"
            lineShape="linear"
            lineUnderFillMode="none"
            lineWidth={2}
            markerBorderColor={null}
            markerBorderWidth={0}
            markerColor="{{ theme.primary }}"
            markerSize={6}
            markerSymbol="circle"
            name="Fetchallcourses - length_in_weeks"
            showMarkers={false}
            textTemplate={null}
            textTemplateMode="manual"
            type="bar"
            waterfallBase={0}
            waterfallMeasures={null}
            waterfallMeasuresMode="source"
            xData="{{ fetchAllCourses.data.title }}"
            xDataMode="source"
            yAxis="y"
            yData="{{ fetchAllCourses.data.length_in_weeks }}"
            yDataMode="source"
            zData={null}
            zDataMode="manual"
          />
        </Chart>
      </View>
      <View id="00031" viewKey="View 2">
        <Table
          id="table1"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ fetchAllCourses.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="9bc93"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="9bc93"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="85b85"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="title"
            label="Title"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="4a336"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="subject"
            label="Subject"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="48b10"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="difficulty"
            label="Difficulty"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="b8dff"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="length_in_weeks"
            label="Length in weeks"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="30a35"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="instructor_id"
            label="Instructor ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="39b19"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="enrollment"
            label="Enrollment"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="88251"
            alignment="left"
            format="date"
            groupAggregationMode="none"
            key="last_updated"
            label="Last updated"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <ToolbarButton
            id="1a"
            icon="bold/interface-text-formatting-filter-2"
            label="Filter"
            type="filter"
          />
          <ToolbarButton
            id="3c"
            icon="bold/interface-download-button-2"
            label="Download"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="exportData"
              pluginId="table1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
          <ToolbarButton
            id="4d"
            icon="bold/interface-arrows-round-left"
            label="Refresh"
            type="custom"
          >
            <Event
              event="clickToolbar"
              method="refresh"
              pluginId="table1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
      <View id="00032" viewKey="View 3" />
    </Container>
  </Frame>
</App>
