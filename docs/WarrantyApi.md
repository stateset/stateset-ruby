# OpenapiClient::WarrantyApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_warranty**](WarrantyApi.md#delete_warranty) | **DELETE** /warranties/{id} | Delete warranty |
| [**get_warranty_by_id**](WarrantyApi.md#get_warranty_by_id) | **GET** /warranties/{id} | Get warranty by id |
| [**update_warranty**](WarrantyApi.md#update_warranty) | **PUT** /warranties/{id} | Updated warranty |


## delete_warranty

> delete_warranty(id)

Delete warranty

This can only be done by the logged in warranty.

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::WarrantyApi.new
id = 'id_example' # String | The id of the warranty that needs to be deleted

begin
  # Delete warranty
  api_instance.delete_warranty(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyApi->delete_warranty: #{e}"
end
```

#### Using the delete_warranty_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_warranty_with_http_info(id)

```ruby
begin
  # Delete warranty
  data, status_code, headers = api_instance.delete_warranty_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyApi->delete_warranty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the warranty that needs to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## get_warranty_by_id

> <Warranty> get_warranty_by_id(id)

Get warranty by id

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

api_instance = OpenapiClient::WarrantyApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get warranty by id
  result = api_instance.get_warranty_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyApi->get_warranty_by_id: #{e}"
end
```

#### Using the get_warranty_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Warranty>, Integer, Hash)> get_warranty_by_id_with_http_info(id)

```ruby
begin
  # Get warranty by id
  data, status_code, headers = api_instance.get_warranty_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Warranty>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyApi->get_warranty_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**Warranty**](Warranty.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_warranty

> update_warranty(id, warranty)

Updated warranty

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

api_instance = OpenapiClient::WarrantyApi.new
id = 'id_example' # String | The id that needs to be updated
warranty = OpenapiClient::Warranty.new # Warranty | Updated reuturn object

begin
  # Updated warranty
  api_instance.update_warranty(id, warranty)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyApi->update_warranty: #{e}"
end
```

#### Using the update_warranty_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_warranty_with_http_info(id, warranty)

```ruby
begin
  # Updated warranty
  data, status_code, headers = api_instance.update_warranty_with_http_info(id, warranty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantyApi->update_warranty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **warranty** | [**Warranty**](Warranty.md) | Updated reuturn object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

