# OpenapiClient::ManufactureOrderLineItemsApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_manufacture_item_by_id**](ManufactureOrderLineItemsApi.md#get_manufacture_item_by_id) | **GET** /manufactureorderitems | Get manufactureItem by id |
| [**get_manufacture_line_item_by_id**](ManufactureOrderLineItemsApi.md#get_manufacture_line_item_by_id) | **GET** /manufactureorderitems/{id} | Get manufacture line item by id |
| [**update_manufacture_line_item**](ManufactureOrderLineItemsApi.md#update_manufacture_line_item) | **PUT** /manufactureorderitems/{id} | Updated manufacture line item |


## get_manufacture_item_by_id

> <ManufactureOrderLineItem> get_manufacture_item_by_id(limit, offset, order_direction)

Get manufactureItem by id

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

api_instance = OpenapiClient::ManufactureOrderLineItemsApi.new
limit = 8.14 # Float | The number of items to manufacture
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to manufacture accounts

begin
  # Get manufactureItem by id
  result = api_instance.get_manufacture_item_by_id(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrderLineItemsApi->get_manufacture_item_by_id: #{e}"
end
```

#### Using the get_manufacture_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManufactureOrderLineItem>, Integer, Hash)> get_manufacture_item_by_id_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get manufactureItem by id
  data, status_code, headers = api_instance.get_manufacture_item_by_id_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManufactureOrderLineItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrderLineItemsApi->get_manufacture_item_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to manufacture |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to manufacture accounts |  |

### Return type

[**ManufactureOrderLineItem**](ManufactureOrderLineItem.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_manufacture_line_item_by_id

> <ManufactureOrderLineItem> get_manufacture_line_item_by_id(id)

Get manufacture line item by id

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

api_instance = OpenapiClient::ManufactureOrderLineItemsApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get manufacture line item by id
  result = api_instance.get_manufacture_line_item_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrderLineItemsApi->get_manufacture_line_item_by_id: #{e}"
end
```

#### Using the get_manufacture_line_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManufactureOrderLineItem>, Integer, Hash)> get_manufacture_line_item_by_id_with_http_info(id)

```ruby
begin
  # Get manufacture line item by id
  data, status_code, headers = api_instance.get_manufacture_line_item_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManufactureOrderLineItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrderLineItemsApi->get_manufacture_line_item_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**ManufactureOrderLineItem**](ManufactureOrderLineItem.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_manufacture_line_item

> update_manufacture_line_item(id, manufacture_order_line_item)

Updated manufacture line item

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

api_instance = OpenapiClient::ManufactureOrderLineItemsApi.new
id = 'id_example' # String | The id that needs to be updated
manufacture_order_line_item = OpenapiClient::ManufactureOrderLineItem.new # ManufactureOrderLineItem | Updated reuturn object

begin
  # Updated manufacture line item
  api_instance.update_manufacture_line_item(id, manufacture_order_line_item)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrderLineItemsApi->update_manufacture_line_item: #{e}"
end
```

#### Using the update_manufacture_line_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_manufacture_line_item_with_http_info(id, manufacture_order_line_item)

```ruby
begin
  # Updated manufacture line item
  data, status_code, headers = api_instance.update_manufacture_line_item_with_http_info(id, manufacture_order_line_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrderLineItemsApi->update_manufacture_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **manufacture_order_line_item** | [**ManufactureOrderLineItem**](ManufactureOrderLineItem.md) | Updated reuturn object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

