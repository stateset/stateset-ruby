# OpenapiClient::ManufactureOrdersApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_manufacture_order_by_id**](ManufactureOrdersApi.md#get_manufacture_order_by_id) | **GET** /manufactureorders/{id} | Get manufacture order by id |
| [**get_manufacture_orders**](ManufactureOrdersApi.md#get_manufacture_orders) | **GET** /manufactureorders | Get account by manufacture order id |
| [**update_manufacture_order**](ManufactureOrdersApi.md#update_manufacture_order) | **PUT** /manufactureorders/{id} | Updated manufacture order |


## get_manufacture_order_by_id

> <ManufactureOrder> get_manufacture_order_by_id(id)

Get manufacture order by id

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

api_instance = OpenapiClient::ManufactureOrdersApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get manufacture order by id
  result = api_instance.get_manufacture_order_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrdersApi->get_manufacture_order_by_id: #{e}"
end
```

#### Using the get_manufacture_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManufactureOrder>, Integer, Hash)> get_manufacture_order_by_id_with_http_info(id)

```ruby
begin
  # Get manufacture order by id
  data, status_code, headers = api_instance.get_manufacture_order_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManufactureOrder>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrdersApi->get_manufacture_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**ManufactureOrder**](ManufactureOrder.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_manufacture_orders

> <ManufactureOrder> get_manufacture_orders(limit, offset, order_direction)

Get account by manufacture order id

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

api_instance = OpenapiClient::ManufactureOrdersApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Offset to return manufacture orders
order_direction = 'order_direction_example' # String | Direction to return manufacture orders

begin
  # Get account by manufacture order id
  result = api_instance.get_manufacture_orders(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrdersApi->get_manufacture_orders: #{e}"
end
```

#### Using the get_manufacture_orders_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManufactureOrder>, Integer, Hash)> get_manufacture_orders_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get account by manufacture order id
  data, status_code, headers = api_instance.get_manufacture_orders_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManufactureOrder>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrdersApi->get_manufacture_orders_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Offset to return manufacture orders |  |
| **order_direction** | **String** | Direction to return manufacture orders |  |

### Return type

[**ManufactureOrder**](ManufactureOrder.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_manufacture_order

> update_manufacture_order(id, manufacture_order)

Updated manufacture order

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

api_instance = OpenapiClient::ManufactureOrdersApi.new
id = 'id_example' # String | The id that needs to be updated
manufacture_order = OpenapiClient::ManufactureOrder.new # ManufactureOrder | Updated manufacture order object

begin
  # Updated manufacture order
  api_instance.update_manufacture_order(id, manufacture_order)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrdersApi->update_manufacture_order: #{e}"
end
```

#### Using the update_manufacture_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_manufacture_order_with_http_info(id, manufacture_order)

```ruby
begin
  # Updated manufacture order
  data, status_code, headers = api_instance.update_manufacture_order_with_http_info(id, manufacture_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ManufactureOrdersApi->update_manufacture_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **manufacture_order** | [**ManufactureOrder**](ManufactureOrder.md) | Updated manufacture order object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

