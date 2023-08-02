# OpenapiClient::WorkOrder

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the work order. | [optional] |
| **number** | **Integer** | The work order number. | [optional] |
| **site** | **String** | The site where the work order is located. | [optional] |
| **work_order_type** | **String** | The type of work order. | [optional] |
| **location** | **String** | The location where the work order is taking place. | [optional] |
| **part** | **String** | The part being worked on in the work order. | [optional] |
| **order_number** | **String** | The order number associated with the work order. | [optional] |
| **manufacture_order** | **String** | The manufacture order associated with the work order. | [optional] |
| **status** | **String** | The current status of the work order. | [optional] |
| **created_by** | **String** | The user who created the work order. | [optional] |
| **created_at** | **Time** | The date and time the work order was created. | [optional] |
| **updated_at** | **Time** | The date and time the work order was last updated. | [optional] |
| **issue_date** | **Date** | The date the work order was issued. | [optional] |
| **expected_completion_date** | **Date** | The expected completion date for the work order. | [optional] |
| **priority** | **String** | The priority level of the work order. | [optional] |
| **memo** | **String** | Any additional notes or comments about the work order. | [optional] |
| **bill_of_materials_number** | **Integer** | The bill of materials number associated with the work order. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WorkOrder.new(
  id: null,
  number: null,
  site: null,
  work_order_type: null,
  location: null,
  part: null,
  order_number: null,
  manufacture_order: null,
  status: null,
  created_by: null,
  created_at: null,
  updated_at: null,
  issue_date: null,
  expected_completion_date: null,
  priority: null,
  memo: null,
  bill_of_materials_number: null
)
```

