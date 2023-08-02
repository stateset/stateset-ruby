# OpenapiClient::WarrantyItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the warranty | [optional] |
| **status** | **String** | The status of the warranty | [optional] |
| **order_id** | **String** | The unique identifier of the order associated with the warranty | [optional] |
| **rma** | **String** | The warranty merchandise authorization number | [optional] |
| **tracking_number** | **String** | The tracking number of the warrantyed item | [optional] |
| **description** | **String** | A description of the warranty | [optional] |
| **customer_email** | **String** | The email address of the customer who initiated the warranty | [optional] |
| **zendesk_number** | **String** | The unique identifier of the Zendesk ticket associated with the warranty | [optional] |
| **action_needed** | **String** | Any action required to process the warranty | [optional] |
| **issue** | **String** | The reason for the warranty | [optional] |
| **order_date** | **Date** | The date the order was placed | [optional] |
| **shipped_date** | **Date** | The date the order was shipped | [optional] |
| **requested_date** | **Date** | The date the warranty was requested | [optional] |
| **entered_by** | **String** | The name of the employee who entered the warranty into the system | [optional] |
| **serial_number** | **String** | The serial number of the warranty item | [optional] |
| **condition** | **String** | The condition of the warranty item | [optional] |
| **customer_id** | **String** | The unique identifier of the customer who initiated the warranty | [optional] |
| **amount** | **String** | The total amount refunded for the warranty | [optional] |
| **reported_condition** | **String** | The condition of the item reported by the customer | [optional] |
| **tax_refunded** | **String** | The amount of tax refunded for the warranty | [optional] |
| **total_refunded** | **String** | The total amount refunded for the warranty, including tax | [optional] |
| **created_date** | **Date** | The date | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::WarrantyItem.new(
  id: null,
  status: null,
  order_id: null,
  rma: null,
  tracking_number: null,
  description: null,
  customer_email: null,
  zendesk_number: null,
  action_needed: null,
  issue: null,
  order_date: null,
  shipped_date: null,
  requested_date: null,
  entered_by: null,
  serial_number: null,
  condition: null,
  customer_id: null,
  amount: null,
  reported_condition: null,
  tax_refunded: null,
  total_refunded: null,
  created_date: null
)
```

