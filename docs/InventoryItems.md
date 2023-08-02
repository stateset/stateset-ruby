# OpenapiClient::InventoryItems

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the inventory item. | [optional] |
| **sku** | **String** | The stock keeping unit of the inventory item. | [optional] |
| **description** | **String** | The description of the inventory item. | [optional] |
| **size** | **String** | The size of the inventory item. | [optional] |
| **incoming** | **Integer** | The quantity of incoming inventory item. | [optional] |
| **color** | **String** | The color of the inventory item. | [optional] |
| **warehouse** | **Integer** | The identifier of the warehouse where the inventory item is stored. | [optional] |
| **arriving** | **Date** | The date when the inventory item is expected to arrive. | [optional] |
| **purchase_order_id** | **String** | The identifier of the purchase order for the inventory item. | [optional] |
| **available** | **Integer** | The quantity of available inventory item. | [optional] |
| **delivery_date** | **Date** | The date when the inventory item is delivered. | [optional] |
| **arrival_date** | **Date** | The date when the inventory item arrived. | [optional] |
| **upc** | **String** | The universal product code of the inventory item. | [optional] |
| **restock_date** | **Date** | The date when the inventory item is scheduled to be restocked. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::InventoryItems.new(
  id: null,
  sku: null,
  description: null,
  size: null,
  incoming: null,
  color: null,
  warehouse: null,
  arriving: null,
  purchase_order_id: null,
  available: null,
  delivery_date: null,
  arrival_date: null,
  upc: null,
  restock_date: null
)
```

