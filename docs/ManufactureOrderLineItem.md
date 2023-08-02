# OpenapiClient::ManufactureOrderLineItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | Unique identifier for the Manufacture Order Line Item. | [optional] |
| **line_type** | **String** | The type of the manufacture order line item. | [optional] |
| **output_type** | **String** | The type of output of the manufacture order line item. | [optional] |
| **line_status** | **String** | The status of the manufacture order line item. | [optional] |
| **part_number** | **String** | The part number of the manufacture order line item. | [optional] |
| **part_name** | **String** | The name of the part of the manufacture order line item. | [optional] |
| **expected_date** | **Date** | The expected completion date of the manufacture order line item. | [optional] |
| **quantity** | **Integer** | The quantity of the manufacture order line item. | [optional] |
| **work_order_number** | **Integer** | The work order number of the manufacture order line item. | [optional] |
| **site** | **String** | The site where the manufacture order line item is to be produced. | [optional] |
| **yield_location** | **String** | The location where the yield of the manufacture order line item is to be produced. | [optional] |
| **bom_number** | **Integer** | The Bill of Materials (BOM) number of the manufacture order line item. | [optional] |
| **bom_name** | **String** | The Bill of Materials (BOM) name of the manufacture order line item. | [optional] |
| **priority** | **String** | The priority of the manufacture order line item. | [optional] |
| **manufacture_order_number** | **Integer** | The number of the manufacture order for which the manufacture order line item belongs to. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ManufactureOrderLineItem.new(
  id: null,
  line_type: null,
  output_type: null,
  line_status: null,
  part_number: null,
  part_name: null,
  expected_date: null,
  quantity: null,
  work_order_number: null,
  site: null,
  yield_location: null,
  bom_number: null,
  bom_name: null,
  priority: null,
  manufacture_order_number: null
)
```

