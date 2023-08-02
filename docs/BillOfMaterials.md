# OpenapiClient::BillOfMaterials

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the bill of materials. | [optional] |
| **number** | **Integer** | The number of the bill of materials. | [optional] |
| **name** | **String** | The name of the bill of materials. | [optional] |
| **valid** | **String** | Whether or not the bill of materials is valid. | [optional] |
| **groups** | **String** | The groups associated with the bill of materials. | [optional] |
| **created_at** | **Time** | The date and time the bill of materials was created. | [optional] |
| **updated_at** | **Time** | The date and time the bill of materials was last updated. | [optional] |
| **description** | **String** | A description of the bill of materials. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BillOfMaterials.new(
  id: null,
  number: null,
  name: null,
  valid: null,
  groups: null,
  created_at: null,
  updated_at: null,
  description: null
)
```

