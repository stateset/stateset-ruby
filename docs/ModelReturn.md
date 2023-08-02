# OpenapiClient::ModelReturn

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** |  | [optional] |
| **status** | **String** | The status of the return. | [optional] |
| **order_id** | **String** | The order ID associated with the return. | [optional] |
| **rma** | **String** | The return merchandise authorization number. | [optional] |
| **tracking_number** | **String** | The tracking number of the returned item. | [optional] |
| **description** | **String** | A description of the return. | [optional] |
| **customer_email** | **String** | The email address of the customer who initiated the return. | [optional] |
| **zendesk_number** | **String** | The unique identifier of the Zendesk ticket associated with the return. | [optional] |
| **action_needed** | **String** | Any action required to process the return. | [optional] |
| **issue** | **String** | The reason for the return. | [optional] |
| **order_string** | **String** | The string the order was placed. | [optional] |
| **shipped_string** | **String** | The string the order was shipped. | [optional] |
| **requested_string** | **String** | The string the return was requested. | [optional] |
| **entered_by** | **String** | The name of the employee who entered the return into the system. | [optional] |
| **customer_id** | **String** | The unique identifier of the customer who initiated the return. | [optional] |
| **amount** | **String** | The amount of the return. | [optional] |
| **reported_condition** | **String** | The condition of the returned item. | [optional] |
| **tax_refunded** | **String** | The amount of tax refunded. | [optional] |
| **total_refunded** | **String** | The total amount refunded. | [optional] |
| **created_string** | **String** | The string the return was created. | [optional][default to &#39;now()&#39;] |
| **reason_category** | **String** | The category of the reason for the return. | [optional] |
| **flat_rate_shipping** | **Integer** | The flat rate shipping amount. | [optional] |
| **refunded_string** | **String** | The string the return was refunded. | [optional] |
| **warehouse_received_string** | **String** | The string the return was received at the warehouse. | [optional] |
| **warehouse_condition_string** | **String** | The string the condition of the return was verified at the warehouse. | [optional] |
| **fedex_status** | **String** | The status of the return in FedEx. | [optional] |
| **scanned_serial_number** | **String** | The serial number of the returned item. | [optional] |
| **match** | **String** | Whether or not the serial number matches the order. | [optional] |
| **country** | **String** | The country of the customer who initiated the return. | [optional] |
| **serial_number** | **String** | The serial number of the returned item. | [optional] |
| **condition** | **String** | The condition of the returned item. | [optional] |
| **order_refunded** | **Boolean** | Whether or not the order was refunded. | [optional][default to false] |
| **workflow_id** | **String** | The workflow ID associated with the return. | [optional] |
| **sso_id** | **String** | The unique identifier of the SSO user who initiated the return. | [optional] |
| **customer_email_normalized** | **String** | The normalized email address of the customer who initiated the return. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::ModelReturn.new(
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
  order_string: null,
  shipped_string: null,
  requested_string: null,
  entered_by: null,
  customer_id: null,
  amount: null,
  reported_condition: null,
  tax_refunded: null,
  total_refunded: null,
  created_string: null,
  reason_category: null,
  flat_rate_shipping: null,
  refunded_string: null,
  warehouse_received_string: null,
  warehouse_condition_string: null,
  fedex_status: null,
  scanned_serial_number: null,
  match: null,
  country: null,
  serial_number: null,
  condition: null,
  order_refunded: null,
  workflow_id: null,
  sso_id: null,
  customer_email_normalized: null
)
```

