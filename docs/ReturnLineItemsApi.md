# OpenapiClient::ReturnLineItemsApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_return_item_by_id**](ReturnLineItemsApi.md#get_return_item_by_id) | **GET** /returnitems | Get returnItem by id |
| [**get_return_line_item_by_id**](ReturnLineItemsApi.md#get_return_line_item_by_id) | **GET** /returnitems/{id} | Get return line item by id |
| [**update_return_line_item**](ReturnLineItemsApi.md#update_return_line_item) | **PUT** /returnitems/{id} | Updated return line item |


## get_return_item_by_id

> <ReturnItem> get_return_item_by_id(limit, offset, order_direction)

Get returnItem by id

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

api_instance = OpenapiClient::ReturnLineItemsApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to return accounts

begin
  # Get returnItem by id
  result = api_instance.get_return_item_by_id(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnLineItemsApi->get_return_item_by_id: #{e}"
end
```

#### Using the get_return_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReturnItem>, Integer, Hash)> get_return_item_by_id_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get returnItem by id
  data, status_code, headers = api_instance.get_return_item_by_id_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReturnItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnLineItemsApi->get_return_item_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to return accounts |  |

### Return type

[**ReturnItem**](ReturnItem.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_return_line_item_by_id

> <ReturnItem> get_return_line_item_by_id(id)

Get return line item by id

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

api_instance = OpenapiClient::ReturnLineItemsApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get return line item by id
  result = api_instance.get_return_line_item_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnLineItemsApi->get_return_line_item_by_id: #{e}"
end
```

#### Using the get_return_line_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ReturnItem>, Integer, Hash)> get_return_line_item_by_id_with_http_info(id)

```ruby
begin
  # Get return line item by id
  data, status_code, headers = api_instance.get_return_line_item_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ReturnItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnLineItemsApi->get_return_line_item_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**ReturnItem**](ReturnItem.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_return_line_item

> update_return_line_item(id, return_item)

Updated return line item

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

api_instance = OpenapiClient::ReturnLineItemsApi.new
id = 'id_example' # String | The id that needs to be updated
return_item = OpenapiClient::ReturnItem.new # ReturnItem | Updated reuturn object

begin
  # Updated return line item
  api_instance.update_return_line_item(id, return_item)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnLineItemsApi->update_return_line_item: #{e}"
end
```

#### Using the update_return_line_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_return_line_item_with_http_info(id, return_item)

```ruby
begin
  # Updated return line item
  data, status_code, headers = api_instance.update_return_line_item_with_http_info(id, return_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnLineItemsApi->update_return_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **return_item** | [**ReturnItem**](ReturnItem.md) | Updated reuturn object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

