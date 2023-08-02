# OpenapiClient::ReturnItem

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the return | [optional] |
| **status** | **String** | The status of the return | [optional] |
| **order_id** | **String** | The unique identifier of the order associated with the return | [optional] |
| **rma** | **String** | The return merchandise authorization number | [optional] |
| **tracking_number** | **String** | The tracking number of the returned item | [optional] |
| **description** | **String** | A description of the return | [optional] |
| **customer_email** | **String** | The email address of the customer who initiated the return | [optional] |
| **zendesk_number** | **String** | The unique identifier of the Zendesk ticket associated with the return | [optional] |
| **action_needed** | **String** | Any action required to process the return | [optional] |
| **issue** | **String** | The reason for the return | [optional] |
| **order_date** | **Date** | The date the order was placed | [optional] |
| **shipped_date** | **Date** | The date the order was shipped | [optional] |
| **requested_date** | **Date** | The date the return was requested | [optional] |
| **entered_by** | **String** | The name of the employee who entered the return into the system | [optional] |
| **serial_number** | **String** | The serial number of the returned item | [optional] |
| **condition** | **String** | The condition of the returned item | [optional] |
| **customer_id** | **String** | The unique identifier of the customer who initiated the return | [optional] |
| **amount** | **String** | The total amount refunded for the return | [optional] |
| **reported_condition** | **String** | The condition of the item reported by the customer | [optional] |
| **tax_refunded** | **String** | The amount of tax refunded for the return | [optional] |
| **total_refunded** | **String** | The total amount refunded for the return, including tax | [optional] |
| **created_date** | **Date** | The date | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ReturnItem.new(
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

