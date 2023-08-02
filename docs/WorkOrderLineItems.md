# OpenapiClient::WorkOrderLineItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the work order line item. | [optional] |
| **part_number** | **String** | The part number for the line item. | [optional] |
| **part_name** | **String** | The name of the part for the line item. | [optional] |
| **line_type** | **String** | The type of line item. | [optional] |
| **line_status** | **String** | The status of the line item. | [optional] |
| **unit_quantity** | **Integer** | The quantity per unit of the line item. | [optional] |
| **total_quantity** | **Integer** | The total quantity of the line item. | [optional] |
| **work_order_number** | **Integer** | The work order number associated with the line item. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WorkOrderLineItems.new(
  id: null,
  part_number: null,
  part_name: null,
  line_type: null,
  line_status: null,
  unit_quantity: null,
  total_quantity: null,
  work_order_number: null
)
```

