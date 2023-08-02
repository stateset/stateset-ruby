# OpenapiClient::ReturnsApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_return**](ReturnsApi.md#create_return) | **POST** /returns | Create a new return |
| [**delete_return**](ReturnsApi.md#delete_return) | **DELETE** /returns/{id} | Delete return |
| [**get_return_by_id**](ReturnsApi.md#get_return_by_id) | **GET** /returns/{id} | Get return by id |
| [**get_returns**](ReturnsApi.md#get_returns) | **GET** /returns | Get returns |
| [**update_return**](ReturnsApi.md#update_return) | **PUT** /returns/{id} | Updated return |


## create_return

> create_return(model_return)

Create a new return

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

api_instance = OpenapiClient::ReturnsApi.new
model_return = OpenapiClient::ModelReturn.new # ModelReturn | Created return object

begin
  # Create a new return
  api_instance.create_return(model_return)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnsApi->create_return: #{e}"
end
```

#### Using the create_return_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_return_with_http_info(model_return)

```ruby
begin
  # Create a new return
  data, status_code, headers = api_instance.create_return_with_http_info(model_return)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnsApi->create_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **model_return** | [**ModelReturn**](ModelReturn.md) | Created return object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json


## delete_return

> delete_return(id)

Delete return

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

api_instance = OpenapiClient::ReturnsApi.new
id = 'id_example' # String | The id of the return that needs to be deleted

begin
  # Delete return
  api_instance.delete_return(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnsApi->delete_return: #{e}"
end
```

#### Using the delete_return_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_return_with_http_info(id)

```ruby
begin
  # Delete return
  data, status_code, headers = api_instance.delete_return_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnsApi->delete_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the return that needs to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## get_return_by_id

> <ModelReturn> get_return_by_id(id)

Get return by id

Get return by id with all details and items

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

api_instance = OpenapiClient::ReturnsApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get return by id
  result = api_instance.get_return_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnsApi->get_return_by_id: #{e}"
end
```

#### Using the get_return_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelReturn>, Integer, Hash)> get_return_by_id_with_http_info(id)

```ruby
begin
  # Get return by id
  data, status_code, headers = api_instance.get_return_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelReturn>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnsApi->get_return_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**ModelReturn**](ModelReturn.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_returns

> <ModelReturn> get_returns(limit, offset, order_direction)

Get returns

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

api_instance = OpenapiClient::ReturnsApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to return accounts

begin
  # Get returns
  result = api_instance.get_returns(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnsApi->get_returns: #{e}"
end
```

#### Using the get_returns_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<ModelReturn>, Integer, Hash)> get_returns_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get returns
  data, status_code, headers = api_instance.get_returns_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <ModelReturn>
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnsApi->get_returns_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to return accounts |  |

### Return type

[**ModelReturn**](ModelReturn.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_return

> update_return(id, model_return)

Updated return

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

api_instance = OpenapiClient::ReturnsApi.new
id = 'id_example' # String | The id that needs to be updated
model_return = OpenapiClient::ModelReturn.new # ModelReturn | Updated reuturn object

begin
  # Updated return
  api_instance.update_return(id, model_return)
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnsApi->update_return: #{e}"
end
```

#### Using the update_return_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_return_with_http_info(id, model_return)

```ruby
begin
  # Updated return
  data, status_code, headers = api_instance.update_return_with_http_info(id, model_return)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling ReturnsApi->update_return_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **model_return** | [**ModelReturn**](ModelReturn.md) | Updated reuturn object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

