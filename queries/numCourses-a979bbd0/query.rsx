<PlaygroundQuery
  id="numCourses"
  adhocResourceType={null}
  data={null}
  resourceType="retoolDb"
>
  <SqlQuery
    _additionalScope={[]}
    actionType=""
    allowedGroupIds={[]}
    allowedGroups={[]}
    bulkUpdatePrimaryKey=""
    dataArray={[]}
    doNotThrowOnNoOp={false}
    editorMode="sql"
    enableBulkUpdates={false}
    errorTransformer="// The variable 'data' allows you to reference the request's data in the transformer. 
// example: return data.find(element => element.isError)
return data.error"
    events={null}
    filterBy=""
    importedQueryDefaults={{}}
    importedQueryInputs={{}}
    privateParams={[]}
    query={include("./lib/numCourses.sql", "string")}
    recordId=""
    records=""
    retoolVersion="3.73.0"
    tableName=""
    transformer="// Query results are available as the `data` variable
return data"
    warningCodes={[]}
    watchedParams={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
</PlaygroundQuery>
