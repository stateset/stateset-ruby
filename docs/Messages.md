# OpenapiClient::Messages

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The unique identifier for the message | [optional] |
| **body** | **String** | The body of the message | [optional] |
| **to** | **String** | The recipient of the message | [optional] |
| **from** | **String** | The sender of the message | [optional] |
| **sent_receipt** | **Boolean** | Indicates whether the message has been sent | [optional] |
| **delivered_receipt** | **Boolean** | Indicates whether the message has been delivered | [optional] |
| **from_me** | **Boolean** | Indicates whether the message is from the user | [optional] |
| **user_id** | **String** | The ID of the user associated with the message | [optional] |
| **username** | **String** | The username of the user associated with the message | [optional] |
| **is_public** | **Boolean** | Indicates whether the message is public | [optional] |
| **created_at** | **Time** | The creation time of the message | [optional] |
| **date** | **Date** | The date of the message | [optional] |
| **time** | **String** | The time of the message | [optional] |
| **timestamp** | **String** | The timestamp of the message | [optional] |
| **message_number** | **Integer** | The message number | [optional] |
| **is_code** | **Boolean** | Indicates whether the message is a code | [optional] |
| **likes** | **Integer** | The number of likes for the message | [optional] |

## Example

```ruby
require 'openapi_client'

instance = OpenapiClient::Messages.new(
  id: null,
  body: null,
  to: null,
  from: null,
  sent_receipt: null,
  delivered_receipt: null,
  from_me: null,
  user_id: null,
  username: null,
  is_public: null,
  created_at: null,
  date: null,
  time: null,
  timestamp: null,
  message_number: null,
  is_code: null,
  likes: null
)
```

