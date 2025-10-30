<Container
  id="container1"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text id="containerTitle1" value="#### Courses" verticalAlign="center" />
  </Header>
  <View id="f626b" viewKey="View 1">
    <TextInput
      id="coursesTableSearchFilter"
      hideLabel={true}
      iconBefore="bold/interface-search"
      label="Search"
      placeholder="Search in table"
    />
    <Button id="button2" text="Button">
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: "!true" }] }}
        pluginId="filter1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
    <Filter
      id="filter1"
      hidden=""
      linkedTableId="coursesTable"
      linkToTable={true}
    />
    <Table
      id="coursesTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ fetchAllCourses.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      groupByColumns={{}}
      limitOffsetRowCount="{{ numCourses.data.count }}"
      linkedFilterId="filter1"
      overflowType="pagination"
      rowHeight="medium"
      searchTerm="{{ coursesTableSearchFilter.value }}"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      templatePageSize="5"
      toolbarPosition="bottom"
    >
      <Column
        id="286d7"
        alignment="right"
        editable={false}
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="id"
        label="ID"
        placeholder="Enter value"
        position="center"
        size={28}
      />
      <Column
        id="dbd9a"
        alignment="left"
        editable={true}
        format="string"
        groupAggregationMode="none"
        key="title"
        label="Title"
        placeholder="Enter value"
        position="center"
        size={203.328125}
        summaryAggregationMode="none"
      />
      <Column
        id="013b4"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="subject"
        label="Subject"
        placeholder="Select option"
        position="center"
        size={138.03125}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="4a168"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="difficulty"
        label="Difficulty"
        placeholder="Select option"
        position="center"
        size={104.890625}
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="f0ca0"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="length_in_weeks"
        label="Length in weeks"
        placeholder="Enter value"
        position="center"
        size={110.6875}
      />
      <Column
        id="ee079"
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
        id="58389"
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
        id="85810"
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
      />
      <ToolbarButton
        id="4d"
        icon="bold/interface-arrows-round-left"
        label="Refresh"
        type="custom"
      />
      <Event
        event="save"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="editCourse"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Table>
  </View>
</Container>
