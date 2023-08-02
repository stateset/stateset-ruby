# OpenapiClient::WarrantiesApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_warranty**](WarrantiesApi.md#create_warranty) | **POST** /warranties | Create a new warranty |
| [**get_warranties**](WarrantiesApi.md#get_warranties) | **GET** /warranties | Get warranties |


## create_warranty

> create_warranty(warranty)

Create a new warranty

Create a new return. This can only be done by the logged in return. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::WarrantiesApi.new
warranty = OpenapiClient::Warranty.new # Warranty | Created warranty object

begin
  # Create a new warranty
  api_instance.create_warranty(warranty)
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantiesApi->create_warranty: #{e}"
end
```

#### Using the create_warranty_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_warranty_with_http_info(warranty)

```ruby
begin
  # Create a new warranty
  data, status_code, headers = api_instance.create_warranty_with_http_info(warranty)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantiesApi->create_warranty_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **warranty** | [**Warranty**](Warranty.md) | Created warranty object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json


## get_warranties

> <Warranty> get_warranties(limit, offset, order_direction)

Get warranties

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

api_instance = OpenapiClient::WarrantiesApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to return warranties

begin
  # Get warranties
  result = api_instance.get_warranties(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantiesApi->get_warranties: #{e}"
end
```

#### Using the get_warranties_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Warranty>, Integer, Hash)> get_warranties_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get warranties
  data, status_code, headers = api_instance.get_warranties_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Warranty>
rescue OpenapiClient::ApiError => e
  puts "Error when calling WarrantiesApi->get_warranties_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to return warranties |  |

### Return type

[**Warranty**](Warranty.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

