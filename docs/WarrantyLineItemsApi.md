# OpenapiClient::WarrantyLineItemsApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_warranty_item_by_id**](WarrantyLineItemsApi.md#get_warranty_item_by_id) | **GET** /warrantyitems | Get warrantyItem by id |
| [**get_warranty_line_item_by_id**](WarrantyLineItemsApi.md#get_warranty_line_item_by_id) | **GET** /warrantyitems/{id} | Get warranty line item by id |
| [**update_warranty_line_item**](WarrantyLineItemsApi.md#update_warranty_line_item) | **PUT** /warrantyitems/{id} | Updated warranty line item |


## get_warranty_item_by_id

> <WarrantyItem> get_warranty_item_by_id(limit, offset, order_direction)

Get warrantyItem by id

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

api_instance = OpenapiClient::WarrantyLineItemsApi.new
limit = 8.14 # Float | The number of items to warranty
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to warranty accounts

begin
  # Get warrantyItem by id
  result = api_instance.get_warranty_item_by_id(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyLineItemsApi->get_warranty_item_by_id: #{e}"
end
```

#### Using the get_warranty_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WarrantyItem>, Integer, Hash)> get_warranty_item_by_id_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get warrantyItem by id
  data, status_code, headers = api_instance.get_warranty_item_by_id_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WarrantyItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyLineItemsApi->get_warranty_item_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to warranty |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to warranty accounts |  |

### Return type

[**WarrantyItem**](WarrantyItem.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_warranty_line_item_by_id

> <WarrantyItem> get_warranty_line_item_by_id(id)

Get warranty line item by id

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

api_instance = OpenapiClient::WarrantyLineItemsApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get warranty line item by id
  result = api_instance.get_warranty_line_item_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyLineItemsApi->get_warranty_line_item_by_id: #{e}"
end
```

#### Using the get_warranty_line_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<WarrantyItem>, Integer, Hash)> get_warranty_line_item_by_id_with_http_info(id)

```ruby
begin
  # Get warranty line item by id
  data, status_code, headers = api_instance.get_warranty_line_item_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <WarrantyItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyLineItemsApi->get_warranty_line_item_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**WarrantyItem**](WarrantyItem.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_warranty_line_item

> update_warranty_line_item(id, warranty_item)

Updated warranty line item

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

api_instance = OpenapiClient::WarrantyLineItemsApi.new
id = 'id_example' # String | The id that needs to be updated
warranty_item = OpenapiClient::WarrantyItem.new # WarrantyItem | Updated reuturn object

begin
  # Updated warranty line item
  api_instance.update_warranty_line_item(id, warranty_item)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyLineItemsApi->update_warranty_line_item: #{e}"
end
```

#### Using the update_warranty_line_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_warranty_line_item_with_http_info(id, warranty_item)

```ruby
begin
  # Updated warranty line item
  data, status_code, headers = api_instance.update_warranty_line_item_with_http_info(id, warranty_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyLineItemsApi->update_warranty_line_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **warranty_item** | [**WarrantyItem**](WarrantyItem.md) | Updated reuturn object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

