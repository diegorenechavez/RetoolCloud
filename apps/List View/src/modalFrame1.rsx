<ModalFrame
  id="modalFrame1"
  footerPadding="8px 12px"
  footerPaddingType="normal"
  headerPadding="8px 12px"
  headerPaddingType="normal"
  hidden={true}
  isHiddenOnMobile={true}
  overlayInteraction={true}
  padding="8px 12px"
  paddingType="normal"
  showFooter={true}
  showHeader={true}
  showOverlay={true}
  size="medium"
>
  <Header>
    <Text
      id="text2"
      marginType="normal"
      value="### New user"
      verticalAlign="center"
    />
    <Button
      id="button3"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [{ hidden: true }] }}
        pluginId="modalFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <Form
      id="UpdateUserForm3"
      disableSubmit="{{ self.invalid }}"
      footerPadding="4px 12px"
      footerPaddingType="normal"
      headerPadding="4px 12px"
      headerPaddingType="normal"
      hidden=""
      hoistFetching={true}
      initialData="{{ dataTable.selectedRow }}"
      margin="0"
      marginType="none"
      padding="0"
      paddingType="none"
      requireValidation={true}
      resetAfterSubmit={true}
      showBody={true}
      style={{
        ordered: [{ border: "surfacePrimary" }, { borderRadius: "8px" }],
      }}
      styleContext={{ ordered: [{ borderRadius: "8px" }] }}
    >
      <TextInput
        id="textInput2"
        _disclosedFields={{ array: ["required"] }}
        label="Name"
        labelPosition="top"
        marginType="normal"
        placeholder="Enter value"
        required={true}
      />
      <TextInput
        id="middleFormInput3"
        _disclosedFields={{
          array: ["patternType", "iconBefore", "editIcon", "required"],
        }}
        iconBefore="bold/mail-send-envelope"
        label="Email"
        labelPosition="top"
        marginType="normal"
        patternType="email"
        placeholder="you@example.com"
        required={true}
      />
      <Date
        id="bottomFormInput6"
        _disclosedFields={{ array: ["iconBefore", "editIcon", "required"] }}
        dateFormat="MMM d, yyyy"
        datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
        iconBefore="bold/interface-calendar"
        label="Signup date"
        labelPosition="top"
        marginType="normal"
        required={true}
        value="{{ new Date() }}"
      />
      <TextInput
        id="bottomFormInput7"
        _disclosedFields={{ array: ["editIcon", "required"] }}
        label="Role"
        labelPosition="top"
        marginType="normal"
        placeholder="Enter value"
        required={true}
      />
      <Checkbox
        id="checkbox3"
        _disclosedFields={{ array: ["required"] }}
        label="Enabled"
        marginType="normal"
      />
      <Event
        event="submit"
        method="trigger"
        params={{ ordered: [] }}
        pluginId="addNewRow"
        type="datasource"
        waitMs="0"
        waitType="debounce"
      />
    </Form>
  </Body>
  <Footer>
    <Button
      id="SubmitForm3"
      _disclosedFields={{ array: ["background", "borderRadius", "border"] }}
      marginType="normal"
      style={{
        ordered: [{ background: "rgb(70, 166, 124)" }, { borderRadius: "8px" }],
      }}
      submit={true}
      submitTargetId="UpdateUserForm3"
      text="Submit user"
    />
  </Footer>
</ModalFrame>
