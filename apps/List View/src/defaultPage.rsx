<Screen
  id="defaultPage"
  _customShortcuts={[]}
  _hashParams={[]}
  _searchParams={[]}
  title="Default Page"
  urlSlug=""
>
  <SqlQueryUnified
    id="getRows"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    query={include("../lib/getRows.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    resourceTypeOverride=""
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="addNewRow"
    actionType="INSERT"
    changesetIsObject={true}
    changesetObject="{{ {...UpdateUserForm2.data, id: Math.max(...getRows.data.id.map(id => parseInt(id))) + 1 } }}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    isHidden={false}
    resourceName="ce90328c-f9de-4e98-af5f-8516ab43a461"
    runWhenModelUpdates={false}
    tableName="users12"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getRows"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <SqlQueryUnified
    id="updateRow"
    actionType="UPDATE_BY"
    changesetIsObject={true}
    changesetObject="{{ UpdateUserForm1.data }}"
    editorMode="gui"
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    filterBy={
      '[{"key":"id","value":"{{ dataTable.selectedRow.id }}","operation":"="}]'
    }
    isHidden={false}
    resourceName="ce90328c-f9de-4e98-af5f-8516ab43a461"
    runWhenModelUpdates={false}
    tableName="users12"
    transformer="// type your code here
// example: return formatDataAsArray(data).filter(row => row.quantity > 20)
return data"
    workflowActionType={null}
    workflowBlockPluginId={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="getRows"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
  <Function
    id="filteredTableData"
    funcBody={include("../lib/filteredTableData.js", "string")}
  />
  <State
    id="selectedItem"
    _persistedValueGetter={null}
    _persistedValueSetter={null}
    persistedValueKey=""
    persistValue={false}
  />
  <Include src="./header.rsx" />
  <Include src="./drawerFrame1.rsx" />
  <Include src="./modalFrame1.rsx" />
  <Frame
    id="$main"
    _disclosedFields={{ array: [] }}
    enableFullBleed={true}
    isHiddenOnDesktop={false}
    isHiddenOnMobile={false}
    padding="8px 12px"
    paddingType="normal"
    sticky={false}
    type="main"
  >
    <Container
      id="container2"
      enableFullBleed={true}
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      heightType="fixed"
      marginType="normal"
      padding="12px"
      paddingType="normal"
      showBody={true}
      showHeader={true}
      showHeaderBorder={false}
    >
      <Header>
        <Text
          id="title"
          _disclosedFields={{ array: ["color"] }}
          marginType="normal"
          style={{ ordered: [{ color: "rgb(23, 61, 36)" }] }}
          value="### Users List View"
        />
        <TextInput
          id="nameFilter"
          _disclosedFields={{ array: ["iconBefore"] }}
          hideLabel={true}
          iconBefore="bold/interface-search"
          marginType="normal"
          placeholder="Search by name"
        />
        <Button
          id="button2"
          disabled="true"
          hidden=""
          marginType="normal"
          style={{
            ordered: [
              { background: "rgba(74, 157, 121, 1)" },
              { borderRadius: "8px" },
            ],
          }}
          text="Add user"
        >
          <Event
            event="click"
            method="show"
            params={{ ordered: [] }}
            pluginId="modalFrame1"
            type="widget"
            waitMs="0"
            waitType="debounce"
          />
        </Button>
      </Header>
      <View id="20fdc" viewKey="View 1">
        <ListViewBeta
          id="listView1"
          _primaryKeys="{{ item.id }}"
          data="{{ filteredTableData.value }}"
          itemWidth="200px"
          layoutType="grid"
          marginType="normal"
          numColumns={3}
          padding="0"
        >
          <Include src="./container1.rsx" />
          <Spacer id="spacer1" marginType="normal" />
        </ListViewBeta>
      </View>
    </Container>
  </Frame>
</Screen>
