# openapi_client

OpenapiClient - the Ruby gem for the Stateset

This is the Stateset One API based on The OpenAPI Specification.
# Introduction
This API definition is intended to to be a good starting point for describing your API in [OpenAPI/Swagger format](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md).
# OpenAPI Specification
The goal of The OpenAPI Specification is to define a standard, language-agnostic interface to REST APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection. When properly defined via OpenAPI, a consumer can  understand and interact with the remote service with a minimal amount of implementation logic. Similar to what interfaces have done for lower-level programming, OpenAPI removes the guesswork in calling the service.


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [http://stateset.com/support](http://stateset.com/support)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['api_key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  # config.api_key_prefix['api_key'] = 'Bearer'

  # Configure OAuth2 access token for authorization: main_auth
  config.access_token = 'YOUR ACCESS TOKEN'
  # Configure a proc to get access tokens in lieu of the static access_token configuration
  config.access_token_getter = -> { 'YOUR TOKEN GETTER PROC' } 
end

api_instance = OpenapiClient::AccountsApi.new
limit = 8.14 # Float | The number of items to return
offset = 8.14 # Float | Filter users without email
order_direction = 'order_direction_example' # String | Direction to return accounts

begin
  #Get account by account name
  result = api_instance.get_account_by_name(limit, offset, order_direction)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AccountsApi->get_account_by_name: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.stateset.com/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::AccountsApi* | [**get_account_by_name**](docs/AccountsApi.md#get_account_by_name) | **GET** /accounts | Get account by account name
*OpenapiClient::AccountsApi* | [**get_account_by_name_0**](docs/AccountsApi.md#get_account_by_name_0) | **GET** /accounts/{id} | Get account by account name
*OpenapiClient::BillOfMaterialsApi* | [**create_billof_materials**](docs/BillOfMaterialsApi.md#create_billof_materials) | **POST** /billofmaterials | Create a new bill of materials
*OpenapiClient::BillOfMaterialsApi* | [**delete_bill_of_materials**](docs/BillOfMaterialsApi.md#delete_bill_of_materials) | **DELETE** /billofmaterials/{id} | Delete Bill of Materials
*OpenapiClient::BillOfMaterialsApi* | [**get_bill_of_materials_by_id**](docs/BillOfMaterialsApi.md#get_bill_of_materials_by_id) | **GET** /billofmaterials/{id} | Get bill of materials by id
*OpenapiClient::BillOfMaterialsApi* | [**get_billof_materials**](docs/BillOfMaterialsApi.md#get_billof_materials) | **GET** /billofmaterials | Get bill of materials
*OpenapiClient::BillOfMaterialsApi* | [**update_bill_of_materials**](docs/BillOfMaterialsApi.md#update_bill_of_materials) | **PUT** /billofmaterials/{id} | Updated bill of materials
*OpenapiClient::BillOfMaterialsLineItemsApi* | [**get_bill_of_materials_item_by_id**](docs/BillOfMaterialsLineItemsApi.md#get_bill_of_materials_item_by_id) | **GET** /billofmaterialsitems | Get bill of materials item by id
*OpenapiClient::BillOfMaterialsLineItemsApi* | [**get_bill_of_materials_line_item_by_id**](docs/BillOfMaterialsLineItemsApi.md#get_bill_of_materials_line_item_by_id) | **GET** /billofmaterialsitems/{id} | Get bill of materials line item by id
*OpenapiClient::BillOfMaterialsLineItemsApi* | [**update_bill_of_materials_line_item**](docs/BillOfMaterialsLineItemsApi.md#update_bill_of_materials_line_item) | **PUT** /billofmaterialsitems/{id} | Updated billofmaterials line item
*OpenapiClient::CustomersApi* | [**delete_customers**](docs/CustomersApi.md#delete_customers) | **DELETE** /customers/{id} | Delete customers
*OpenapiClient::CustomersApi* | [**get_customers**](docs/CustomersApi.md#get_customers) | **GET** /customers | Get customer by id
*OpenapiClient::CustomersApi* | [**update_customers**](docs/CustomersApi.md#update_customers) | **PUT** /customers/{id} | Update customers
*OpenapiClient::InventoryItemsApi* | [**create_inventory_items**](docs/InventoryItemsApi.md#create_inventory_items) | **POST** /inventoryitems | Create a new inventory items
*OpenapiClient::InventoryItemsApi* | [**get_inventory_item_by_id**](docs/InventoryItemsApi.md#get_inventory_item_by_id) | **GET** /inventoryitems/{id} | Get inventory items by id
*OpenapiClient::InventoryItemsApi* | [**get_inventory_items**](docs/InventoryItemsApi.md#get_inventory_items) | **GET** /inventoryitems | Get inventory items
*OpenapiClient::InventoryItemsApi* | [**update_inventory_item**](docs/InventoryItemsApi.md#update_inventory_item) | **PUT** /inventoryitems/{id} | Updated inventory items
*OpenapiClient::ManufactureOrderLineItemsApi* | [**get_manufacture_item_by_id**](docs/ManufactureOrderLineItemsApi.md#get_manufacture_item_by_id) | **GET** /manufactureorderitems | Get manufactureItem by id
*OpenapiClient::ManufactureOrderLineItemsApi* | [**get_manufacture_line_item_by_id**](docs/ManufactureOrderLineItemsApi.md#get_manufacture_line_item_by_id) | **GET** /manufactureorderitems/{id} | Get manufacture line item by id
*OpenapiClient::ManufactureOrderLineItemsApi* | [**update_manufacture_line_item**](docs/ManufactureOrderLineItemsApi.md#update_manufacture_line_item) | **PUT** /manufactureorderitems/{id} | Updated manufacture line item
*OpenapiClient::ManufactureOrdersApi* | [**get_manufacture_order_by_id**](docs/ManufactureOrdersApi.md#get_manufacture_order_by_id) | **GET** /manufactureorders/{id} | Get manufacture order by id
*OpenapiClient::ManufactureOrdersApi* | [**get_manufacture_orders**](docs/ManufactureOrdersApi.md#get_manufacture_orders) | **GET** /manufactureorders | Get account by manufacture order id
*OpenapiClient::ManufactureOrdersApi* | [**update_manufacture_order**](docs/ManufactureOrdersApi.md#update_manufacture_order) | **PUT** /manufactureorders/{id} | Updated manufacture order
*OpenapiClient::MessagesApi* | [**create_message**](docs/MessagesApi.md#create_message) | **POST** /messages | Create a new message
*OpenapiClient::MessagesApi* | [**delete_message**](docs/MessagesApi.md#delete_message) | **DELETE** /messages/{id} | Delete message
*OpenapiClient::MessagesApi* | [**get_message_by_id**](docs/MessagesApi.md#get_message_by_id) | **GET** /messages/{id} | Get message by id
*OpenapiClient::MessagesApi* | [**get_messages**](docs/MessagesApi.md#get_messages) | **GET** /messages | Get messages
*OpenapiClient::MessagesApi* | [**update_message**](docs/MessagesApi.md#update_message) | **PUT** /messages/{id} | Updated message
*OpenapiClient::NotesApi* | [**create_note**](docs/NotesApi.md#create_note) | **POST** /notes | Create a new note
*OpenapiClient::NotesApi* | [**delete_inventory_item**](docs/NotesApi.md#delete_inventory_item) | **DELETE** /inventoryitems/{id} | Delete Inventory Items
*OpenapiClient::NotesApi* | [**delete_notes**](docs/NotesApi.md#delete_notes) | **DELETE** /notes/{id} | Delete notes
*OpenapiClient::NotesApi* | [**get_customers_by_id**](docs/NotesApi.md#get_customers_by_id) | **GET** /customers/{id} | Get customers by id
*OpenapiClient::NotesApi* | [**get_notes**](docs/NotesApi.md#get_notes) | **GET** /notes | Get notes
*OpenapiClient::NotesApi* | [**get_notes_by_id**](docs/NotesApi.md#get_notes_by_id) | **GET** /notes/{id} | Get notes by id
*OpenapiClient::NotesApi* | [**update_notes**](docs/NotesApi.md#update_notes) | **PUT** /notes/{id} | Updated notes
*OpenapiClient::ReturnLineItemsApi* | [**get_return_item_by_id**](docs/ReturnLineItemsApi.md#get_return_item_by_id) | **GET** /returnitems | Get returnItem by id
*OpenapiClient::ReturnLineItemsApi* | [**get_return_line_item_by_id**](docs/ReturnLineItemsApi.md#get_return_line_item_by_id) | **GET** /returnitems/{id} | Get return line item by id
*OpenapiClient::ReturnLineItemsApi* | [**update_return_line_item**](docs/ReturnLineItemsApi.md#update_return_line_item) | **PUT** /returnitems/{id} | Updated return line item
*OpenapiClient::ReturnsApi* | [**create_return**](docs/ReturnsApi.md#create_return) | **POST** /returns | Create a new return
*OpenapiClient::ReturnsApi* | [**delete_return**](docs/ReturnsApi.md#delete_return) | **DELETE** /returns/{id} | Delete return
*OpenapiClient::ReturnsApi* | [**get_return_by_id**](docs/ReturnsApi.md#get_return_by_id) | **GET** /returns/{id} | Get return by id
*OpenapiClient::ReturnsApi* | [**get_returns**](docs/ReturnsApi.md#get_returns) | **GET** /returns | Get returns
*OpenapiClient::ReturnsApi* | [**update_return**](docs/ReturnsApi.md#update_return) | **PUT** /returns/{id} | Updated return
*OpenapiClient::WarrantiesApi* | [**create_warranty**](docs/WarrantiesApi.md#create_warranty) | **POST** /warranties | Create a new warranty
*OpenapiClient::WarrantiesApi* | [**get_warranties**](docs/WarrantiesApi.md#get_warranties) | **GET** /warranties | Get warranties
*OpenapiClient::WarrantyApi* | [**delete_warranty**](docs/WarrantyApi.md#delete_warranty) | **DELETE** /warranties/{id} | Delete warranty
*OpenapiClient::WarrantyApi* | [**get_warranty_by_id**](docs/WarrantyApi.md#get_warranty_by_id) | **GET** /warranties/{id} | Get warranty by id
*OpenapiClient::WarrantyApi* | [**update_warranty**](docs/WarrantyApi.md#update_warranty) | **PUT** /warranties/{id} | Updated warranty
*OpenapiClient::WarrantyLineItemsApi* | [**get_warranty_item_by_id**](docs/WarrantyLineItemsApi.md#get_warranty_item_by_id) | **GET** /warrantyitems | Get warrantyItem by id
*OpenapiClient::WarrantyLineItemsApi* | [**get_warranty_line_item_by_id**](docs/WarrantyLineItemsApi.md#get_warranty_line_item_by_id) | **GET** /warrantyitems/{id} | Get warranty line item by id
*OpenapiClient::WarrantyLineItemsApi* | [**update_warranty_line_item**](docs/WarrantyLineItemsApi.md#update_warranty_line_item) | **PUT** /warrantyitems/{id} | Updated warranty line item
*OpenapiClient::WorkOrderLineItemsApi* | [**get_work_item_by_id**](docs/WorkOrderLineItemsApi.md#get_work_item_by_id) | **GET** /workorderitems | Get work order item by id
*OpenapiClient::WorkOrderLineItemsApi* | [**get_work_line_item_by_id**](docs/WorkOrderLineItemsApi.md#get_work_line_item_by_id) | **GET** /workorderitems/{id} | Get work line item by id
*OpenapiClient::WorkOrderLineItemsApi* | [**update_work_line_item**](docs/WorkOrderLineItemsApi.md#update_work_line_item) | **PUT** /workorderitems/{id} | Updated work line item
*OpenapiClient::WorkOrdersApi* | [**get_work_order_by_id**](docs/WorkOrdersApi.md#get_work_order_by_id) | **GET** /workorders/{id} | Get work order by id
*OpenapiClient::WorkOrdersApi* | [**get_work_ordes**](docs/WorkOrdersApi.md#get_work_ordes) | **GET** /workorders | Get account by work order id
*OpenapiClient::WorkOrdersApi* | [**update_work_order**](docs/WorkOrdersApi.md#update_work_order) | **PUT** /workorders/{id} | Updated work order


## Documentation for Models

 - [OpenapiClient::Accounts](docs/Accounts.md)
 - [OpenapiClient::BillOfMaterials](docs/BillOfMaterials.md)
 - [OpenapiClient::BillOfMaterialsLineItem](docs/BillOfMaterialsLineItem.md)
 - [OpenapiClient::Customers](docs/Customers.md)
 - [OpenapiClient::InventoryItems](docs/InventoryItems.md)
 - [OpenapiClient::ManufactureOrder](docs/ManufactureOrder.md)
 - [OpenapiClient::ManufactureOrderLineItem](docs/ManufactureOrderLineItem.md)
 - [OpenapiClient::Messages](docs/Messages.md)
 - [OpenapiClient::ModelReturn](docs/ModelReturn.md)
 - [OpenapiClient::Notes](docs/Notes.md)
 - [OpenapiClient::Problem](docs/Problem.md)
 - [OpenapiClient::ReturnItem](docs/ReturnItem.md)
 - [OpenapiClient::Warranty](docs/Warranty.md)
 - [OpenapiClient::WarrantyItem](docs/WarrantyItem.md)
 - [OpenapiClient::WorkOrder](docs/WorkOrder.md)
 - [OpenapiClient::WorkOrderLineItems](docs/WorkOrderLineItems.md)


## Documentation for Authorization


Authentication schemes defined for the API:
### main_auth


- **Type**: OAuth
- **Flow**: implicit
- **Authorization URL**: https://api.stateset.com/v1/oauth/dialog
- **Scopes**: 
  - read:users: read users info
  - write:users: modify or remove users

### api_key


- **Type**: API key
- **API key parameter name**: api_key
- **Location**: HTTP header

### basic_auth

- **Type**: HTTP basic authentication

