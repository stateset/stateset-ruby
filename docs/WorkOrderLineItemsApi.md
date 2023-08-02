# OpenapiClient::WorkOrderLineItemsApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_work_item_by_id**](WorkOrderLineItemsApi.md#get_work_item_by_id) | **GET** /workorderitems | Get work order item by id |
| [**get_work_line_item_by_id**](WorkOrderLineItemsApi.md#get_work_line_item_by_id) | **GET** /workorderitems/{id} | Get work line item by id |
| [**update_work_line_item**](WorkOrderLineItemsApi.md#update_work_line_item) | **PUT** /workorderitems/{id} | Updated work line item |


## get_work_item_by_id

> <WorkOrderLineItems> get_work_item_by_id(limit, offset, order_direction)

Get work order item by id

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

api_instance = OpenapiClient::WorkOrderLineItemsApi.new
limit = 8.14 # Float | The number of items
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | diretions to return work order items

begin
  # Get work order item by id
  result = api_instance.get_work_item_by_id(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrderLineItemsApi->get_work_item_by_id: #{e}"
end
```

#### Using the get_work_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkOrderLineItems>, Integer, Hash)> get_work_item_by_id_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get work order item by id
  data, status_code, headers = api_instance.get_work_item_by_id_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkOrderLineItems>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrderLineItemsApi->get_work_item_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | diretions to return work order items |  |

### Return type

[**WorkOrderLineItems**](WorkOrderLineItems.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_work_line_item_by_id

> <WorkOrderLineItems> get_work_line_item_by_id(id)

Get work line item by id

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

api_instance = OpenapiClient::WorkOrderLineItemsApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get work line item by id
  result = api_instance.get_work_line_item_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrderLineItemsApi->get_work_line_item_by_id: #{e}"
end
```

#### Using the get_work_line_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkOrderLineItems>, Integer, Hash)> get_work_line_item_by_id_with_http_info(id)

```ruby
begin
  # Get work line item by id
  data, status_code, headers = api_instance.get_work_line_item_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkOrderLineItems>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrderLineItemsApi->get_work_line_item_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**WorkOrderLineItems**](WorkOrderLineItems.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_work_line_item

> update_work_line_item(id, work_order_line_items)

Updated work line item

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

api_instance = OpenapiClient::WorkOrderLineItemsApi.new
id = 'id_example' # String | The id that needs to be updated
work_order_line_items = OpenapiClient::WorkOrderLineItems.new # WorkOrderLineItems | Updated reuturn object

begin
  # Updated work line item
  api_instance.update_work_line_item(id, work_order_line_items)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrderLineItemsApi->update_work_line_item: #{e}"
end
```

#### Using the update_work_line_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_work_line_item_with_http_info(id, work_order_line_items)

```ruby
begin
  # Updated work line item
  data, status_code, headers = api_instance.update_work_line_item_with_http_info(id, work_order_line_items)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrderLineItemsApi->update_work_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **work_order_line_items** | [**WorkOrderLineItems**](WorkOrderLineItems.md) | Updated reuturn object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

