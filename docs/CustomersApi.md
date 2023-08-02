# OpenapiClient::CustomersApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**delete_customers**](CustomersApi.md#delete_customers) | **DELETE** /customers/{id} | Delete customers |
| [**get_customers**](CustomersApi.md#get_customers) | **GET** /customers | Get customer by id |
| [**update_customers**](CustomersApi.md#update_customers) | **PUT** /customers/{id} | Update customers |


## delete_customers

> delete_customers(id)

Delete customers

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

api_instance = OpenapiClient::CustomersApi.new
id = 'id_example' # String | The id of the customers that needs to be deleted

begin
  # Delete customers
  api_instance.delete_customers(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->delete_customers: #{e}"
end
```

#### Using the delete_customers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_customers_with_http_info(id)

```ruby
begin
  # Delete customers
  data, status_code, headers = api_instance.delete_customers_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->delete_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the customers that needs to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## get_customers

> <Customers> get_customers(limit, offset, order_direction)

Get customer by id

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

api_instance = OpenapiClient::CustomersApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Offset to return customers
order_direction = 'order_direction_example' # String | Direction to return customers

begin
  # Get customer by id
  result = api_instance.get_customers(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers: #{e}"
end
```

#### Using the get_customers_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customers>, Integer, Hash)> get_customers_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get customer by id
  data, status_code, headers = api_instance.get_customers_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customers>
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->get_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Offset to return customers |  |
| **order_direction** | **String** | Direction to return customers |  |

### Return type

[**Customers**](Customers.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_customers

> update_customers(id, customers)

Update customers

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

api_instance = OpenapiClient::CustomersApi.new
id = 'id_example' # String | The id that needs to be updated
customers = OpenapiClient::Customers.new # Customers | Updated customers object

begin
  # Update customers
  api_instance.update_customers(id, customers)
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->update_customers: #{e}"
end
```

#### Using the update_customers_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_customers_with_http_info(id, customers)

```ruby
begin
  # Update customers
  data, status_code, headers = api_instance.update_customers_with_http_info(id, customers)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling CustomersApi->update_customers_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **customers** | [**Customers**](Customers.md) | Updated customers object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

