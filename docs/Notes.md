# OpenapiClient::Notes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the note. | [optional] |
| **title** | **String** | The title of the note. | [optional] |
| **body** | **String** | The body of the note. | [optional] |
| **created_date** | **Time** | The date and time the note was created. | [optional] |
| **last_modified_date** | **Time** | The date and time the note was last modified. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Notes.new(
  id: null,
  title: null,
  body: null,
  created_date: null,
  last_modified_date: null
)
```

