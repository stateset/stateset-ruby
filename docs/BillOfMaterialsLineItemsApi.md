# OpenapiClient::BillOfMaterialsLineItemsApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_bill_of_materials_item_by_id**](BillOfMaterialsLineItemsApi.md#get_bill_of_materials_item_by_id) | **GET** /billofmaterialsitems | Get bill of materials item by id |
| [**get_bill_of_materials_line_item_by_id**](BillOfMaterialsLineItemsApi.md#get_bill_of_materials_line_item_by_id) | **GET** /billofmaterialsitems/{id} | Get bill of materials line item by id |
| [**update_bill_of_materials_line_item**](BillOfMaterialsLineItemsApi.md#update_bill_of_materials_line_item) | **PUT** /billofmaterialsitems/{id} | Updated billofmaterials line item |


## get_bill_of_materials_item_by_id

> <BillOfMaterialsLineItem> get_bill_of_materials_item_by_id(limit, offset, order_direction)

Get bill of materials item by id

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

api_instance = OpenapiClient::BillOfMaterialsLineItemsApi.new
limit = 8.14 # Float | The number of items to manufacture
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction of billOfMaterialsItem

begin
  # Get bill of materials item by id
  result = api_instance.get_bill_of_materials_item_by_id(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsLineItemsApi->get_bill_of_materials_item_by_id: #{e}"
end
```

#### Using the get_bill_of_materials_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillOfMaterialsLineItem>, Integer, Hash)> get_bill_of_materials_item_by_id_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get bill of materials item by id
  data, status_code, headers = api_instance.get_bill_of_materials_item_by_id_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillOfMaterialsLineItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsLineItemsApi->get_bill_of_materials_item_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to manufacture |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction of billOfMaterialsItem |  |

### Return type

[**BillOfMaterialsLineItem**](BillOfMaterialsLineItem.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_bill_of_materials_line_item_by_id

> <ManufactureOrderLineItem> get_bill_of_materials_line_item_by_id(id)

Get bill of materials line item by id

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

api_instance = OpenapiClient::BillOfMaterialsLineItemsApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get bill of materials line item by id
  result = api_instance.get_bill_of_materials_line_item_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsLineItemsApi->get_bill_of_materials_line_item_by_id: #{e}"
end
```

#### Using the get_bill_of_materials_line_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ManufactureOrderLineItem>, Integer, Hash)> get_bill_of_materials_line_item_by_id_with_http_info(id)

```ruby
begin
  # Get bill of materials line item by id
  data, status_code, headers = api_instance.get_bill_of_materials_line_item_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ManufactureOrderLineItem>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsLineItemsApi->get_bill_of_materials_line_item_by_id_with_http_info: #{e}"
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


## update_bill_of_materials_line_item

> update_bill_of_materials_line_item(id, manufacture_order_line_item)

Updated billofmaterials line item

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

api_instance = OpenapiClient::BillOfMaterialsLineItemsApi.new
id = 'id_example' # String | The id that needs to be updated
manufacture_order_line_item = OpenapiClient::ManufactureOrderLineItem.new # ManufactureOrderLineItem | Updated reuturn object

begin
  # Updated billofmaterials line item
  api_instance.update_bill_of_materials_line_item(id, manufacture_order_line_item)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsLineItemsApi->update_bill_of_materials_line_item: #{e}"
end
```

#### Using the update_bill_of_materials_line_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_bill_of_materials_line_item_with_http_info(id, manufacture_order_line_item)

```ruby
begin
  # Updated billofmaterials line item
  data, status_code, headers = api_instance.update_bill_of_materials_line_item_with_http_info(id, manufacture_order_line_item)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsLineItemsApi->update_bill_of_materials_line_item_with_http_info: #{e}"
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

