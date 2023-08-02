# OpenapiClient::WorkOrdersApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_work_order_by_id**](WorkOrdersApi.md#get_work_order_by_id) | **GET** /workorders/{id} | Get work order by id |
| [**get_work_ordes**](WorkOrdersApi.md#get_work_ordes) | **GET** /workorders | Get account by work order id |
| [**update_work_order**](WorkOrdersApi.md#update_work_order) | **PUT** /workorders/{id} | Updated work order |


## get_work_order_by_id

> <WorkOrder> get_work_order_by_id(id)

Get work order by id

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

api_instance = OpenapiClient::WorkOrdersApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get work order by id
  result = api_instance.get_work_order_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_order_by_id: #{e}"
end
```

#### Using the get_work_order_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkOrder>, Integer, Hash)> get_work_order_by_id_with_http_info(id)

```ruby
begin
  # Get work order by id
  data, status_code, headers = api_instance.get_work_order_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkOrder>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_order_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**WorkOrder**](WorkOrder.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_work_ordes

> <WorkOrder> get_work_ordes(limit, offset, order_direction)

Get account by work order id

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

api_instance = OpenapiClient::WorkOrdersApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Offset to return work orders
order_direction = 'order_direction_example' # String | Direction to return work orders

begin
  # Get account by work order id
  result = api_instance.get_work_ordes(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_ordes: #{e}"
end
```

#### Using the get_work_ordes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WorkOrder>, Integer, Hash)> get_work_ordes_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get account by work order id
  data, status_code, headers = api_instance.get_work_ordes_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WorkOrder>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrdersApi->get_work_ordes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Offset to return work orders |  |
| **order_direction** | **String** | Direction to return work orders |  |

### Return type

[**WorkOrder**](WorkOrder.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_work_order

> update_work_order(id, work_order)

Updated work order

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

api_instance = OpenapiClient::WorkOrdersApi.new
id = 'id_example' # String | The id that needs to be updated
work_order = OpenapiClient::WorkOrder.new # WorkOrder | Updated work order object

begin
  # Updated work order
  api_instance.update_work_order(id, work_order)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrdersApi->update_work_order: #{e}"
end
```

#### Using the update_work_order_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_work_order_with_http_info(id, work_order)

```ruby
begin
  # Updated work order
  data, status_code, headers = api_instance.update_work_order_with_http_info(id, work_order)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WorkOrdersApi->update_work_order_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **work_order** | [**WorkOrder**](WorkOrder.md) | Updated work order object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

