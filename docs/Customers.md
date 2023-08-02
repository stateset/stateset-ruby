# OpenapiClient::Customers

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier of the customer. | [optional] |
| **sso_id** | **String** | The unique identifier of the customer in the SSO system. | [optional] |
| **activation_date** | **Time** | The date and time the customer was activated. | [optional] |
| **email** | **String** | The email address of the customer. | [optional] |
| **first_name** | **String** | The first name of the customer. | [optional] |
| **last_name** | **String** | The last name of the customer. | [optional] |
| **phone** | **String** | The phone number of the customer. | [optional] |
| **stripe_customer_id** | **String** | The unique identifier of the customer in the Stripe system. | [optional] |
| **timestamp** | **Time** | The date and time the customer was created. | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Customers.new(
  id: null,
  sso_id: null,
  activation_date: null,
  email: null,
  first_name: null,
  last_name: null,
  phone: null,
  stripe_customer_id: null,
  timestamp: null
)
```

