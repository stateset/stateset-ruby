# OpenapiClient::MessagesApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_message**](MessagesApi.md#create_message) | **POST** /messages | Create a new message |
| [**delete_message**](MessagesApi.md#delete_message) | **DELETE** /messages/{id} | Delete message |
| [**get_message_by_id**](MessagesApi.md#get_message_by_id) | **GET** /messages/{id} | Get message by id |
| [**get_messages**](MessagesApi.md#get_messages) | **GET** /messages | Get messages |
| [**update_message**](MessagesApi.md#update_message) | **PUT** /messages/{id} | Updated message |


## create_message

> create_message(messages)

Create a new message

Create a new message. This can only be done by the logged in. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MessagesApi.new
messages = OpenapiClient::Messages.new # Messages | Created message object

begin
  # Create a new message
  api_instance.create_message(messages)
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->create_message: #{e}"
end
```

#### Using the create_message_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_message_with_http_info(messages)

```ruby
begin
  # Create a new message
  data, status_code, headers = api_instance.create_message_with_http_info(messages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->create_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **messages** | [**Messages**](Messages.md) | Created message object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json


## delete_message

> delete_message(id)

Delete message

This can only be done by the logged in return.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MessagesApi.new
id = 'id_example' # String | The id of the message that needs to be deleted

begin
  # Delete message
  api_instance.delete_message(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->delete_message: #{e}"
end
```

#### Using the delete_message_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_message_with_http_info(id)

```ruby
begin
  # Delete message
  data, status_code, headers = api_instance.delete_message_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->delete_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the message that needs to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## get_message_by_id

> <Messages> get_message_by_id(id)

Get message by id

Some description of the operation. You can use `Markdown` here. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MessagesApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get message by id
  result = api_instance.get_message_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->get_message_by_id: #{e}"
end
```

#### Using the get_message_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Messages>, Integer, Hash)> get_message_by_id_with_http_info(id)

```ruby
begin
  # Get message by id
  data, status_code, headers = api_instance.get_message_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Messages>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->get_message_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**Messages**](Messages.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_messages

> <Messages> get_messages(limit, offset, order_direction)

Get messages

Some description of the operation. You can use `Markdown` here. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MessagesApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to return accounts

begin
  # Get messages
  result = api_instance.get_messages(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->get_messages: #{e}"
end
```

#### Using the get_messages_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Messages>, Integer, Hash)> get_messages_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get messages
  data, status_code, headers = api_instance.get_messages_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Messages>
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->get_messages_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to return accounts |  |

### Return type

[**Messages**](Messages.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_message

> update_message(id, messages)

Updated message

This can only be done by the logged in user.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::MessagesApi.new
id = 'id_example' # String | The id that needs to be updated
messages = OpenapiClient::Messages.new # Messages | Updated message object

begin
  # Updated message
  api_instance.update_message(id, messages)
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->update_message: #{e}"
end
```

#### Using the update_message_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_message_with_http_info(id, messages)

```ruby
begin
  # Updated message
  data, status_code, headers = api_instance.update_message_with_http_info(id, messages)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling MessagesApi->update_message_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **messages** | [**Messages**](Messages.md) | Updated message object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

