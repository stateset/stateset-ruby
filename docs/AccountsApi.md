# OpenapiClient::AccountsApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**get_account_by_name**](AccountsApi.md#get_account_by_name) | **GET** /accounts | Get account by account name |
| [**get_account_by_name_0**](AccountsApi.md#get_account_by_name_0) | **GET** /accounts/{id} | Get account by account name |


## get_account_by_name

> <Accounts> get_account_by_name(limit, offset, order_direction)

Get account by account name

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

api_instance = OpenapiClient::AccountsApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to return accounts

begin
  # Get account by account name
  result = api_instance.get_account_by_name(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->get_account_by_name: #{e}"
end
```

#### Using the get_account_by_name_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Accounts>, Integer, Hash)> get_account_by_name_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get account by account name
  data, status_code, headers = api_instance.get_account_by_name_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Accounts>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->get_account_by_name_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to return accounts |  |

### Return type

[**Accounts**](Accounts.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_account_by_name_0

> <Accounts> get_account_by_name_0(limit, offset, order_direction)

Get account by account name

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

api_instance = OpenapiClient::AccountsApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to return accounts

begin
  # Get account by account name
  result = api_instance.get_account_by_name_0(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->get_account_by_name_0: #{e}"
end
```

#### Using the get_account_by_name_0_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Accounts>, Integer, Hash)> get_account_by_name_0_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get account by account name
  data, status_code, headers = api_instance.get_account_by_name_0_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Accounts>
rescue OpenapiClient::ApiError => e
  puts "Error when calling AccountsApi->get_account_by_name_0_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to return accounts |  |

### Return type

[**Accounts**](Accounts.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json

