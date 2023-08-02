# OpenapiClient::NotesApi

All URIs are relative to *https://api.stateset.com/v1*

| Method | HTTP request | Description |
| ------ | ------------ | ----------- |
| [**create_note**](NotesApi.md#create_note) | **POST** /notes | Create a new note |
| [**delete_inventory_item**](NotesApi.md#delete_inventory_item) | **DELETE** /inventoryitems/{id} | Delete Inventory Items |
| [**delete_notes**](NotesApi.md#delete_notes) | **DELETE** /notes/{id} | Delete notes |
| [**get_customers_by_id**](NotesApi.md#get_customers_by_id) | **GET** /customers/{id} | Get customers by id |
| [**get_notes**](NotesApi.md#get_notes) | **GET** /notes | Get notes |
| [**get_notes_by_id**](NotesApi.md#get_notes_by_id) | **GET** /notes/{id} | Get notes by id |
| [**update_notes**](NotesApi.md#update_notes) | **PUT** /notes/{id} | Updated notes |


## create_note

> create_note(notes)

Create a new note

Create a new note. This can only be done by the logged in. 

### Examples

```ruby
require 'time'
require 'openapi_client'
# setup authorization
OpenapiClient.configure do |config|
  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
end

api_instance = OpenapiClient::NotesApi.new
notes = OpenapiClient::Notes.new # Notes | Created note object

begin
  # Create a new note
  api_instance.create_note(notes)
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->create_note: #{e}"
end
```

#### Using the create_note_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> create_note_with_http_info(notes)

```ruby
begin
  # Create a new note
  data, status_code, headers = api_instance.create_note_with_http_info(notes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->create_note_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **notes** | [**Notes**](Notes.md) | Created note object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json


## delete_inventory_item

> delete_inventory_item(id)

Delete Inventory Items

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

api_instance = OpenapiClient::NotesApi.new
id = 'id_example' # String | The id of the inventory items that needs to be deleted

begin
  # Delete Inventory Items
  api_instance.delete_inventory_item(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->delete_inventory_item: #{e}"
end
```

#### Using the delete_inventory_item_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_inventory_item_with_http_info(id)

```ruby
begin
  # Delete Inventory Items
  data, status_code, headers = api_instance.delete_inventory_item_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->delete_inventory_item_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the inventory items that needs to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## delete_notes

> delete_notes(id)

Delete notes

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

api_instance = OpenapiClient::NotesApi.new
id = 'id_example' # String | The id of the notes that needs to be deleted

begin
  # Delete notes
  api_instance.delete_notes(id)
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->delete_notes: #{e}"
end
```

#### Using the delete_notes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> delete_notes_with_http_info(id)

```ruby
begin
  # Delete notes
  data, status_code, headers = api_instance.delete_notes_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->delete_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id of the notes that needs to be deleted |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/problem+json


## get_customers_by_id

> <Customers> get_customers_by_id(id)

Get customers by id

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

api_instance = OpenapiClient::NotesApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get customers by id
  result = api_instance.get_customers_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->get_customers_by_id: #{e}"
end
```

#### Using the get_customers_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Customers>, Integer, Hash)> get_customers_by_id_with_http_info(id)

```ruby
begin
  # Get customers by id
  data, status_code, headers = api_instance.get_customers_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Customers>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->get_customers_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**Customers**](Customers.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_notes

> <Notes> get_notes(limit, offset, order_direction)

Get notes

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

api_instance = OpenapiClient::NotesApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to return accounts

begin
  # Get notes
  result = api_instance.get_notes(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->get_notes: #{e}"
end
```

#### Using the get_notes_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notes>, Integer, Hash)> get_notes_with_http_info(limit, offset, order_direction)

```ruby
begin
  # Get notes
  data, status_code, headers = api_instance.get_notes_with_http_info(limit, offset, order_direction)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notes>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->get_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **limit** | **Float** | The number of items to return |  |
| **offset** | **Float** | Filter users without email |  |
| **order_direction** | **String** | Direction to return accounts |  |

### Return type

[**Notes**](Notes.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## get_notes_by_id

> <Notes> get_notes_by_id(id)

Get notes by id

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

api_instance = OpenapiClient::NotesApi.new
id = 'id_example' # String | The id that needs to be fetched

begin
  # Get notes by id
  result = api_instance.get_notes_by_id(id)
  p result
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->get_notes_by_id: #{e}"
end
```

#### Using the get_notes_by_id_with_http_info variant

This returns an Array which contains the response data, status code and headers.

> <Array(<Notes>, Integer, Hash)> get_notes_by_id_with_http_info(id)

```ruby
begin
  # Get notes by id
  data, status_code, headers = api_instance.get_notes_by_id_with_http_info(id)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => <Notes>
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->get_notes_by_id_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be fetched |  |

### Return type

[**Notes**](Notes.md)

### Authorization

[api_key](../README.md#api_key), [main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: Not defined
- **Accept**: application/json, application/problem+json


## update_notes

> update_notes(id, notes)

Updated notes

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

api_instance = OpenapiClient::NotesApi.new
id = 'id_example' # String | The id that needs to be updated
notes = OpenapiClient::Notes.new # Notes | Updated notes object

begin
  # Updated notes
  api_instance.update_notes(id, notes)
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->update_notes: #{e}"
end
```

#### Using the update_notes_with_http_info variant

This returns an Array which contains the response data (`nil` in this case), status code and headers.

> <Array(nil, Integer, Hash)> update_notes_with_http_info(id, notes)

```ruby
begin
  # Updated notes
  data, status_code, headers = api_instance.update_notes_with_http_info(id, notes)
  p status_code # => 2xx
  p headers # => { ... }
  p data # => nil
rescue OpenapiClient::ApiError => e
  puts "Error when calling NotesApi->update_notes_with_http_info: #{e}"
end
```

### Parameters

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **id** | **String** | The id that needs to be updated |  |
| **notes** | [**Notes**](Notes.md) | Updated notes object |  |

### Return type

nil (empty response body)

### Authorization

[main_auth](../README.md#main_auth)

### HTTP request headers

- **Content-Type**: application/json, application/xml
- **Accept**: application/problem+json

