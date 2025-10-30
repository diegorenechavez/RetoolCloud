<Container
  id="container3"
  footerPadding="4px 12px"
  headerPadding="4px 12px"
  padding="12px"
  showBody={true}
  showHeader={true}
>
  <Header>
    <Text
      id="containerTitle3"
      value="#### Container title"
      verticalAlign="center"
    />
  </Header>
  <View id="f626b" viewKey="View 1">
    <Table
      id="reviewsTable"
      cellSelection="none"
      clearChangesetOnSave={true}
      data="{{ reviews.data }}"
      defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
      emptyMessage="No rows found"
      enableSaveActions={true}
      primaryKeyColumnId="e962f"
      rowHeight="small"
      showBorder={true}
      showFooter={true}
      showHeader={true}
      toolbarPosition="bottom"
    >
      <Column
        id="e962f"
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
        size={39.3125}
        summaryAggregationMode="none"
      />
      <Column
        id="9c4ce"
        alignment="left"
        format="tag"
        formatOptions={{ automaticColors: true }}
        groupAggregationMode="none"
        key="title"
        label="Title"
        placeholder="Select option"
        position="center"
        size={139.171875}
        summaryAggregationMode="none"
        valueOverride="{{ _.startCase(item) }}"
      />
      <Column
        id="04a60"
        alignment="left"
        format="string"
        groupAggregationMode="none"
        key="review_body"
        label="Review body"
        placeholder="Enter value"
        position="center"
        size={511.078125}
        summaryAggregationMode="none"
      />
      <Column
        id="a6b5d"
        alignment="right"
        editableOptions={{ showStepper: true }}
        format="decimal"
        formatOptions={{ showSeparators: true, notation: "standard" }}
        groupAggregationMode="sum"
        key="rating"
        label="Rating"
        placeholder="Enter value"
        position="center"
        size={53.203125}
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
          pluginId="reviewsTable"
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
          pluginId="reviewsTable"
          type="widget"
          waitMs="0"
          waitType="debounce"
        />
      </ToolbarButton>
    </Table>
    <Select
      id="select1"
      emptyMessage="No options"
      itemMode="static"
      label=""
      labelPosition="top"
      overlayMaxHeight={375}
      placeholder="Select an option"
      showSelectionIndicator={true}
    >
      <Option
        id="efa10"
        value="Summarize reviews and pull out any common themes"
      />
      <Option id="09bd1" value="Extract an average rating" />
    </Select>
    <TextInput
      id="textInput1"
      label="prompt"
      labelPosition="top"
      placeholder="Enter value"
      value="{{ select1.value }}"
    />
    <Button id="button1" text="Button">
      <Event
        event="click"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="analysis"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </View>
</Container>
