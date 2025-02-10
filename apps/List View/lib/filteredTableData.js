// Tip: assign your external references to variables instead of chaining off the curly brackets.

return formatDataAsArray({{getRows.data}}).filter((row)=> row.first_name.toLowerCase().includes({{nameFilter.value}}))