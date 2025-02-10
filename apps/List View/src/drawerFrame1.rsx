<DrawerFrame
  id="drawerFrame1"
  footerPadding="8px 12px"
  footerPaddingType="normal"
  headerPadding="8px 12px"
  headerPaddingType="normal"
  hidden="true"
  isHiddenOnMobile={true}
  isInEditMode={false}
  overlayInteraction={true}
  padding="8px 12px"
  paddingType="normal"
  showFooter={true}
  showHeader={true}
  width="large"
>
  <Header>
    <Text
      id="formTitle2"
      _disclosedFields={{ array: ["color"] }}
      marginType="normal"
      style={{ ordered: [{ color: "rgb(23, 61, 36)" }] }}
      value="### {{selectedItem.value.first_name + ' ' + selectedItem.value.last_name}}"
      verticalAlign="center"
    />
    <Button
      id="button1"
      horizontalAlign="right"
      iconBefore="bold/interface-delete-1"
      marginType="normal"
      style={{ ordered: [{ border: "transparent" }] }}
      styleVariant="outline"
    >
      <Event
        event="click"
        method="setHidden"
        params={{ ordered: [] }}
        pluginId="drawerFrame1"
        type="widget"
        waitMs="0"
        waitType="debounce"
      />
    </Button>
  </Header>
  <Body>
    <TextInput
      id="middleFormInput1"
      _disclosedFields={{
        array: ["patternType", "iconBefore", "editIcon", "required"],
      }}
      iconBefore="bold/mail-send-envelope"
      label="Email"
      marginType="normal"
      patternType="email"
      placeholder="you@example.com"
      required={true}
      value="{{selectedItem.value.email}}"
    />
    <Date
      id="bottomFormInput1"
      _disclosedFields={{ array: ["iconBefore", "editIcon", "required"] }}
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Signup date"
      marginType="normal"
      required={true}
      value="{{ selectedItem.value.trial_expiry_date }}"
    />
    <TextInput
      id="bottomFormInput2"
      _disclosedFields={{ array: ["editIcon", "required"] }}
      label="Role"
      marginType="normal"
      placeholder="Enter value"
      required={true}
      value={
        '{{selectedItem.value.first_name.includes(\'r\') ? "Admin" : selectedItem.value.first_name.includes(\'e\') ? "Editor" : "Viewer" }}'
      }
    />
    <Checkbox
      id="checkbox2"
      _disclosedFields={{ array: ["required", "checkedBackground"] }}
      label="Enabled"
      labelPosition="left"
      marginType="normal"
      style={{ ordered: [{ checkedBackground: "rgb(70, 166, 124)" }] }}
      value="{{selectedItem.value.enabled}}"
    />
  </Body>
  <Footer>
    <Button
      id="SubmitForm1"
      _disclosedFields={["background", "borderRadius", "border"]}
      marginType="normal"
      style={{ ordered: [{ borderRadius: "8px" }] }}
      styleVariant="outline"
      submitTargetId=""
      text="Save changes"
    />
  </Footer>
</DrawerFrame>
