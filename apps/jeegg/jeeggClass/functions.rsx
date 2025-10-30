<GlobalFunctions>
  <SqlQueryUnified
    id="fetchAllCourses"
    isMultiplayerEdited={false}
    query={include("./lib/fetchAllCourses.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    retoolVersion="3.73.0"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="numCourses"
    isImported={true}
    playgroundQueryName="numCourses"
    playgroundQueryUuid="a979bbd0-4f47-4815-ab07-0111be2be962"
    query={include("./lib/numCourses.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    retoolVersion="3.73.0"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="enrollmentData"
    isMultiplayerEdited={false}
    query={include("./lib/enrollmentData.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    retoolVersion="3.73.0"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="reviews"
    query={include("./lib/reviews.sql", "string")}
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    warningCodes={[]}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <RetoolAIQuery
    id="analysis"
    customSystemMessage="You are an AI designed to take prompts from a user based on the context provided.

The context is an array of objects. Each object in the array is a unique review about the given course.  

Here is the context:
{{ JSON.stringify(reviews) }}"
    instruction="Here is the prompt from the user:
{{ textInput1.value }}"
    metadata={null}
    model="gpt-4"
    notificationDuration={4.5}
    resourceDisplayName="retool_ai"
    resourceName="retool_ai"
    showSuccessToaster={false}
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  />
  <SqlQueryUnified
    id="editCourse"
    actionType="UPDATE_BY"
    changeset={
      '[{"key":"title","value":"{{ coursesTable.changesetArray[0].title }}"}]'
    }
    editorMode="gui"
    filterBy={
      '[{"key":"id","value":"{{ coursesTable.changesetArray[0].id }}","operation":"="}]'
    }
    resourceDisplayName="retool_db"
    resourceName="289f9cdc-7780-4037-928e-8a8d82fc80b3"
    runWhenModelUpdates={false}
    tableName="courses"
    workflowActionType={null}
    workflowBlockUuid={null}
    workflowRunId={null}
  >
    <Event
      event="success"
      method="confetti"
      params={{ ordered: [] }}
      pluginId=""
      type="util"
      waitMs="0"
      waitType="debounce"
    />
    <Event
      event="success"
      method="trigger"
      params={{ ordered: [] }}
      pluginId="fetchAllCourses"
      type="datasource"
      waitMs="0"
      waitType="debounce"
    />
  </SqlQueryUnified>
</GlobalFunctions>
