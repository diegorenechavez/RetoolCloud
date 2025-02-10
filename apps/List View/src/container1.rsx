<Container
  id="container1"
  footerPadding="4px 12px"
  footerPaddingType="normal"
  headerPadding="4px 12px"
  headerPaddingType="normal"
  marginType="normal"
  padding="12px"
  paddingType="normal"
  showBody={true}
  style={{
    ordered: [{ background: "{{container1.hovered ? 'canvas' : 'white'}}" }],
  }}
>
  <View id="42f64" viewKey="View 1">
    <Image
      id="circularImage1"
      aspectRatio={1}
      horizontalAlign="center"
      marginType="normal"
      src="https://api.dicebear.com/5.x/thumbs/svg?seed={{item.first_name}}"
      style={{ ordered: [{ borderRadius: "50%" }] }}
    />
    <Text
      id="containerTitle1"
      marginType="normal"
      value={'#### {{ item.first_name + " " + item.last_name }}'}
      verticalAlign="center"
    />
    <Tags
      id="tags1"
      allowWrap={true}
      colors="{{ theme.automatic }}"
      hashColors={true}
      marginType="normal"
      style={{ ordered: [{ defaultBackground: "automatic" }] }}
      value={
        '{{item.first_name.includes(\'r\') ? ["Admin"] : item.first_name.includes(\'e\') ? ["Editor"] : ["Viewer"] }}'
      }
    />
    <Checkbox
      id="checkbox4"
      label="Enabled"
      labelAlign="right"
      labelPosition="left"
      labelWidth="88"
      marginType="normal"
      value="{{item.enabled}}"
    />
    <TextInput
      id="email1"
      iconBefore="bold/mail-send-envelope"
      label="Email"
      marginType="normal"
      patternType="email"
      placeholder="you@example.com"
      value="{{item.email}}"
    />
    <Date
      id="date1"
      dateFormat="MMM d, yyyy"
      datePlaceholder="{{ self.dateFormat.toUpperCase() }}"
      iconBefore="bold/interface-calendar"
      label="Signup Date"
      marginType="normal"
      value="{{item.signup_date}}"
    />
  </View>
  <Event
    event="click"
    method="show"
    params={{ ordered: [] }}
    pluginId="drawerFrame1"
    type="widget"
    waitMs="0"
    waitType="debounce"
  />
  <Event
    event="click"
    method="setValue"
    params={{ ordered: [{ value: "{{listView1.item}}" }] }}
    pluginId="selectedItem"
    type="state"
    waitMs="0"
    waitType="debounce"
  />
</Container>
