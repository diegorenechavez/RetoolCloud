<Screen
  id="assetManagement"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  browserTitle=""
  title="Page 1"
  urlSlug=""
>
  <SqlQueryUnified
    id="accounts"
    isMultiplayerEdited={false}
    query={include("../lib/accounts.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="accountFrames"
    query={include("../lib/accountFrames.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="drawerFrames"
    query={include("../lib/drawerFrames.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    warningCodes={[]}
  />
  <SqlQueryUnified
    id="table1SaveHandler"
    actionType="BULK_UPDATE_BY_KEY"
    bulkUpdatePrimaryKey="id"
    changeset={
      '[{"key":"account_name","value":"{{ table1.changesetArray[0].account_name }}"}]'
    }
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ table1.selectedRow.id }}","operation":"="}]'
    }
    isMultiplayerEdited={false}
    notificationDuration={4.5}
    records="{{ table1.changesetArray }}"
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    resourceTypeOverride=""
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="accounts"
  >
    <Event
      event="success"
      method="confetti"
      params={{}}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{}}
      pluginId="accounts"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Function
    id="transformer1"
    funcBody={include("../lib/transformer1.js", "string")}
  />
  <SqlQueryUnified
    id="form1SubmitHandler"
    actionType="INSERT"
    changeset={
      '[{"key":"account_name","value":"{{ form1.data.textInput1 }}"},{"key":"","value":""},{"key":"csn","value":"{{ form1.data.calendarInput1 }}"}]'
    }
    editorMode="gui"
    notificationDuration={4.5}
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    runWhenModelUpdates={false}
    showSuccessToaster={false}
    tableName="accounts"
  />
  <Include src="./modalFrame1.rsx" />
  <Frame
    id="$main"
    enableFullBleed={false}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    type="main"
  >
    <Container
      id="container1"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text
          id="containerTitle1"
          value="### Accounts"
          verticalAlign="center"
        />
      </Header>
      <View id="4a538" viewKey="View 1">
        <TextInput
          id="table1SearchFilter"
          label="Search"
          placeholder="Search in table"
        />
        <Table
          id="table1"
          actionsOverflowPosition={1}
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ accounts.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          groupByColumns={{}}
          limitOffsetRowCount="15"
          primaryKeyColumnId="ef8e2"
          rowHeight="medium"
          searchTerm="{{ table1SearchFilter.value }}"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          templatePageSize="5"
          toolbarPosition="bottom"
        >
          <Column
            id="ef8e2"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="68b72"
            alignment="left"
            editable={true}
            format="string"
            groupAggregationMode="none"
            key="account_name"
            label="Account name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="84784"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="csn"
            label="Csn"
            placeholder="Enter value"
            position="center"
            size={408}
          />
          <Column
            id="4e370"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="cpc_key"
            label="Cpc key"
            placeholder="Enter value"
            position="center"
            size={100}
          />
          <Action
            id="15179"
            icon="bold/interface-alert-information-circle-alternate"
            label="openModal"
          >
            <Event
              event="clickAction"
              method="show"
              params={{}}
              pluginId="modalFrame1"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </Action>
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
            params={{}}
            pluginId="table1SaveHandler"
            type="datasource"
            waitMs="0"
            waitType="debounce"
          />
        </Table>
      </View>
    </Container>
    <Container
      id="container2"
      footerPadding="4px 12px"
      headerPadding="4px 12px"
      padding="12px"
      showBody={true}
      showHeader={true}
    >
      <Header>
        <Text id="containerTitle2" value="#### Frames" verticalAlign="center" />
      </Header>
      <View id="4a538" viewKey="View 1">
        <Table
          id="table2"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ accountFrames.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="a2cc7"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="f0964"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="false"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={30.890625}
            summaryAggregationMode="none"
          />
          <Column
            id="a2cc7"
            alignment="left"
            editable="false"
            format="string"
            groupAggregationMode="none"
            key="omni_stid"
            label="Omni stid"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ item }}"
          />
          <Column
            id="32e98"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="frame_sn"
            label="Frame sn"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="8a36c"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="sw_verno"
            label="Sw verno"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="369da"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="omni_type"
            label="Omni type"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="a9061"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="omni_name"
            label="Omni name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="5d368"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="cab_gen"
            label="Cab gen"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="49d82"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="cab_type"
            label="Cab type"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="3755f"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="cab_frame"
            label="Cab frame"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="8c3b8"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="cpckey"
            label="Cpckey"
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
              pluginId="table2"
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
              pluginId="table2"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
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
      <View id="4a538" viewKey="View 1">
        <Table
          id="table3"
          cellSelection="none"
          clearChangesetOnSave={true}
          data="{{ drawerFrames.data }}"
          defaultSelectedRow={{ mode: "index", indexType: "display", index: 0 }}
          emptyMessage="No rows found"
          enableSaveActions={true}
          primaryKeyColumnId="ae4e9"
          showBorder={true}
          showFooter={true}
          showHeader={true}
          toolbarPosition="bottom"
        >
          <Column
            id="63997"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            hidden="true"
            key="id"
            label="ID"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="ae4e9"
            alignment="left"
            editable={false}
            format="string"
            groupAggregationMode="none"
            key="omni_stid"
            label="Omni stid"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="b614d"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="frame_sn"
            label="Frame sn"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="3456d"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="sw_verno"
            label="Sw verno"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="5cbb8"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="omni_type"
            label="Omni type"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="ec2b4"
            alignment="left"
            format="string"
            groupAggregationMode="none"
            key="omni_name"
            label="Omni name"
            placeholder="Enter value"
            position="center"
            size={100}
            summaryAggregationMode="none"
          />
          <Column
            id="4d047"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="cab_gen"
            label="Cab gen"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="a0b74"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="cab_type"
            label="Cab type"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="110f6"
            alignment="left"
            format="tag"
            formatOptions={{ automaticColors: true }}
            groupAggregationMode="none"
            key="cab_frame"
            label="Cab frame"
            placeholder="Select option"
            position="center"
            size={100}
            summaryAggregationMode="none"
            valueOverride="{{ _.startCase(item) }}"
          />
          <Column
            id="62cbd"
            alignment="right"
            editableOptions={{ showStepper: true }}
            format="decimal"
            formatOptions={{ showSeparators: true, notation: "standard" }}
            groupAggregationMode="sum"
            key="cpckey"
            label="Cpckey"
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
              pluginId="table3"
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
              pluginId="table3"
              type="widget"
              waitMs="0"
              waitType="debounce"
            />
          </ToolbarButton>
        </Table>
      </View>
    </Container>
  </Frame>
</Screen>
