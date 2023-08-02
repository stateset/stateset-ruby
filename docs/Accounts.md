# OpenapiClient::Accounts

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the account. | [optional] |
| **account_name** | **String** | The name of the account. | [optional] |
| **account_type** | **String** | The type of account. | [optional] |
| **industry** | **String** | The industry the account belongs to. | [optional] |
| **rating** | **String** | The rating of the account. | [optional] |
| **phone** | **String** | The phone number of the account. | [optional] |
| **created_at** | **Time** | The date and time when the account was created. | [optional] |
| **is_public** | **Boolean** | Whether the account is public or private. | [optional] |
| **controller** | **String** | The controller of the account. | [optional] |
| **processor** | **String** | The processor of the account. | [optional] |
| **is_active** | **Boolean** | Whether the account is active or not. | [optional] |
| **user_id** | **String** | The ID of the user who created the account. | [optional] |
| **order_id** | **String** | The ID of the order associated with the account. | [optional] |
| **account_notes** | **String** | Any notes or comments associated with the account. | [optional] |
| **annual_revenue** | **Integer** | The annual revenue of the account. | [optional] |
| **billing_city** | **String** | The city for the account&#39;s billing address. | [optional] |
| **billing_country** | **String** | The country for the account&#39;s billing address. | [optional] |
| **billing_latitude** | **String** | The latitude for the account&#39;s billing address. | [optional] |
| **billing_longitude** | **String** | The longitude for the account&#39;s billing address. | [optional] |
| **billing_state** | **String** | The state or province for the account&#39;s billing address. | [optional] |
| **billing_street** | **String** | The street address for the account&#39;s billing address. | [optional] |
| **number_of_employees** | **Float** | The number of employees for the account. | [optional] |
| **ownership** | **String** | The ownership status of the account. | [optional] |
| **shipping_city** | **String** | The city for the account&#39;s shipping address. | [optional] |
| **shipping_country** | **String** | The country for the account&#39;s shipping address. | [optional] |
| **shipping_latitude** | **String** | The latitude for the account&#39;s shipping address. | [optional] |
| **shipping_longitude** | **String** | The longitude for the account&#39;s shipping address. | [optional] |
| **shipping_state** | **String** | The state or province for the account&#39;s shipping address. | [optional] |
| **shipping_street** | **String** |  | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Accounts.new(
  id: null,
  account_name: Acme Corp,
  account_type: Customer,
  industry: Manufacturing,
  rating: Hot,
  phone: 555-555-5555,
  created_at: null,
  is_public: null,
  controller: null,
  processor: null,
  is_active: null,
  user_id: null,
  order_id: null,
  account_notes: null,
  annual_revenue: null,
  billing_city: null,
  billing_country: null,
  billing_latitude: null,
  billing_longitude: null,
  billing_state: null,
  billing_street: null,
  number_of_employees: null,
  ownership: null,
  shipping_city: null,
  shipping_country: null,
  shipping_latitude: null,
  shipping_longitude: null,
  shipping_state: null,
  shipping_street: null
)
```

