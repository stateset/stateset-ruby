# OpenapiClient::InventoryItemsApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_inventory_items**](InventoryItemsApi.md#create_inventory_items) | **POST** /inventoryitems | Create a new inventory items |
| [**get_inventory_item_by_id**](InventoryItemsApi.md#get_inventory_item_by_id) | **GET** /inventoryitems/{id} | Get inventory items by id |
| [**get_inventory_items**](InventoryItemsApi.md#get_inventory_items) | **GET** /inventoryitems | Get inventory items |
| [**update_inventory_item**](InventoryItemsApi.md#update_inventory_item) | **PUT** /inventoryitems/{id} | Updated inventory items |


## create_inventory_items

> create_inventory_items(inventory_items)

Create a new inventory items

Create a new inventory items. This can only be done by the logged in. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::InventoryItemsApi.new
inventory_items = OpenapiClient::InventoryItems.new # InventoryItems | Created inventory items object

begin
  # Create a new inventory items
  api_instance.create_inventory_items(inventory_items)
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryItemsApi->create_inventory_items: #{e}"
end
```

#### Using the create_inventory_items_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_inventory_items_with_http_info(inventory_items)

```ruby
begin
  # Create a new inventory items
  data, status_code, headers = api_instance.create_inventory_items_with_http_info(inventory_items)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryItemsApi->create_inventory_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **inventory_items** | [**InventoryItems**](InventoryItems.md) | Created inventory items object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json


## get_inventory_item_by_id

> <InventoryItems> get_inventory_item_by_id(id)

Get inventory items by id

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

api_instance = OpenapiClient::InventoryItemsApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get inventory items by id
  result = api_instance.get_inventory_item_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryItemsApi->get_inventory_item_by_id: #{e}"
end
```

#### Using the get_inventory_item_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InventoryItems>, Integer, Hash)> get_inventory_item_by_id_with_http_info(id)

```ruby
begin
  # Get inventory items by id
  data, status_code, headers = api_instance.get_inventory_item_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InventoryItems>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryItemsApi->get_inventory_item_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**InventoryItems**](InventoryItems.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_inventory_items

> <InventoryItems> get_inventory_items(limit, offset, order_direction)

Get inventory items

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

api_instance = OpenapiClient::InventoryItemsApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to return accounts

begin
  # Get inventory items
  result = api_instance.get_inventory_items(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryItemsApi->get_inventory_items: #{e}"
end
```

#### Using the get_inventory_items_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<InventoryItems>, Integer, Hash)> get_inventory_items_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get inventory items
  data, status_code, headers = api_instance.get_inventory_items_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <InventoryItems>
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryItemsApi->get_inventory_items_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to return accounts |  |

### Return type

[**InventoryItems**](InventoryItems.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_inventory_item

> update_inventory_item(id, inventory_items)

Updated inventory items

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

api_instance = OpenapiClient::InventoryItemsApi.new
id = 'id_example' # String | The id that needs to be updated
inventory_items = OpenapiClient::InventoryItems.new # InventoryItems | Updated inventory items object

begin
  # Updated inventory items
  api_instance.update_inventory_item(id, inventory_items)
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryItemsApi->update_inventory_item: #{e}"
end
```

#### Using the update_inventory_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_inventory_item_with_http_info(id, inventory_items)

```ruby
begin
  # Updated inventory items
  data, status_code, headers = api_instance.update_inventory_item_with_http_info(id, inventory_items)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling InventoryItemsApi->update_inventory_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **inventory_items** | [**InventoryItems**](InventoryItems.md) | Updated inventory items object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

