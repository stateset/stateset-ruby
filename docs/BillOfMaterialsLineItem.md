# OpenapiClient::BillOfMaterialsLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the line item. | [optional] |
| **part_number** | **String** | The part number of the item. | [optional] |
| **part_name** | **String** | The name of the item. | [optional] |
| **quantity** | **Integer** | The quantity of the item required in the bill of materials. | [optional] |
| **purchase_supply_type** | **String** | The type of purchase/supply for the item. | [optional] |
| **line_type** | **String** | The type of line item in the bill of materials. | [optional] |
| **bill_of_materials_number** | **Integer** | The bill of materials number that this line item belongs to. | [optional] |
| **status** | **String** | The status of the line item. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::BillOfMaterialsLineItem.new(
  id: 3fa85f64-5717-4562-b3fc-2c963f66afa6,
  part_number: 12345,
  part_name: Screw,
  quantity: 50,
  purchase_supply_type: Vendor,
  line_type: Raw Material,
  bill_of_materials_number: 1,
  status: Pending
)
```

