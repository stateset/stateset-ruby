# OpenapiClient::BillOfMaterialsApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_billof_materials**](BillOfMaterialsApi.md#create_billof_materials) | **POST** /billofmaterials | Create a new bill of materials |
| [**delete_bill_of_materials**](BillOfMaterialsApi.md#delete_bill_of_materials) | **DELETE** /billofmaterials/{id} | Delete Bill of Materials |
| [**get_bill_of_materials_by_id**](BillOfMaterialsApi.md#get_bill_of_materials_by_id) | **GET** /billofmaterials/{id} | Get bill of materials by id |
| [**get_billof_materials**](BillOfMaterialsApi.md#get_billof_materials) | **GET** /billofmaterials | Get bill of materials |
| [**update_bill_of_materials**](BillOfMaterialsApi.md#update_bill_of_materials) | **PUT** /billofmaterials/{id} | Updated bill of materials |


## create_billof_materials

> create_billof_materials(bill_of_materials)

Create a new bill of materials

Create a new bill of materials. This can only be done by the logged in bill of materials. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::BillOfMaterialsApi.new
bill_of_materials = OpenapiClient::BillOfMaterials.new # BillOfMaterials | Created bill of materials object

begin
  # Create a new bill of materials
  api_instance.create_billof_materials(bill_of_materials)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsApi->create_billof_materials: #{e}"
end
```

#### Using the create_billof_materials_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_billof_materials_with_http_info(bill_of_materials)

```ruby
begin
  # Create a new bill of materials
  data, status_code, headers = api_instance.create_billof_materials_with_http_info(bill_of_materials)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsApi->create_billof_materials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **bill_of_materials** | [**BillOfMaterials**](BillOfMaterials.md) | Created bill of materials object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json


## delete_bill_of_materials

> delete_bill_of_materials(id)

Delete Bill of Materials

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

api_instance = OpenapiClient::BillOfMaterialsApi.new
id = 'id_example' # String | The id of the bill of materials that needs to be deleted

begin
  # Delete Bill of Materials
  api_instance.delete_bill_of_materials(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsApi->delete_bill_of_materials: #{e}"
end
```

#### Using the delete_bill_of_materials_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_bill_of_materials_with_http_info(id)

```ruby
begin
  # Delete Bill of Materials
  data, status_code, headers = api_instance.delete_bill_of_materials_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsApi->delete_bill_of_materials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the bill of materials that needs to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## get_bill_of_materials_by_id

> <BillOfMaterials> get_bill_of_materials_by_id(id)

Get bill of materials by id

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

api_instance = OpenapiClient::BillOfMaterialsApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get bill of materials by id
  result = api_instance.get_bill_of_materials_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsApi->get_bill_of_materials_by_id: #{e}"
end
```

#### Using the get_bill_of_materials_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillOfMaterials>, Integer, Hash)> get_bill_of_materials_by_id_with_http_info(id)

```ruby
begin
  # Get bill of materials by id
  data, status_code, headers = api_instance.get_bill_of_materials_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillOfMaterials>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsApi->get_bill_of_materials_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**BillOfMaterials**](BillOfMaterials.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_billof_materials

> <BillOfMaterials> get_billof_materials(limit, offset, order_direction)

Get bill of materials

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

api_instance = OpenapiClient::BillOfMaterialsApi.new
limit = 8.14 # Float | The number of items to bill of materials
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to bill of materials accounts

begin
  # Get bill of materials
  result = api_instance.get_billof_materials(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsApi->get_billof_materials: #{e}"
end
```

#### Using the get_billof_materials_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<BillOfMaterials>, Integer, Hash)> get_billof_materials_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get bill of materials
  data, status_code, headers = api_instance.get_billof_materials_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <BillOfMaterials>
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsApi->get_billof_materials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to bill of materials |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to bill of materials accounts |  |

### Return type

[**BillOfMaterials**](BillOfMaterials.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_bill_of_materials

> update_bill_of_materials(id, bill_of_materials)

Updated bill of materials

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

api_instance = OpenapiClient::BillOfMaterialsApi.new
id = 'id_example' # String | The id that needs to be updated
bill_of_materials = OpenapiClient::BillOfMaterials.new # BillOfMaterials | Updated bill of materials object

begin
  # Updated bill of materials
  api_instance.update_bill_of_materials(id, bill_of_materials)
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsApi->update_bill_of_materials: #{e}"
end
```

#### Using the update_bill_of_materials_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_bill_of_materials_with_http_info(id, bill_of_materials)

```ruby
begin
  # Updated bill of materials
  data, status_code, headers = api_instance.update_bill_of_materials_with_http_info(id, bill_of_materials)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling BillOfMaterialsApi->update_bill_of_materials_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **bill_of_materials** | [**BillOfMaterials**](BillOfMaterials.md) | Updated bill of materials object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

