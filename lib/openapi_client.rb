=begin
#Stateset

#This is the Stateset One API based on The OpenAPI Specification. # Introduction This API definition is intended to to be a good starting point for describing your API in [OpenAPI/Swagger format](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md). # OpenAPI Specification The goal of The OpenAPI Specification is to define a standard, language-agnostic interface to REST APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection. When properly defined via OpenAPI, a consumer can  understand and interact with the remote service with a minimal amount of implementation logic. Similar to what interfaces have done for lower-level programming, OpenAPI removes the guesswork in calling the service. 

The version of the OpenAPI document: 1.0.0
Contact: developers@stateset.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

# Common files
require 'openapi_client/api_client'
require 'openapi_client/api_error'
require 'openapi_client/version'
require 'openapi_client/configuration'

# Models
require 'openapi_client/models/accounts'
require 'openapi_client/models/bill_of_materials'
require 'openapi_client/models/bill_of_materials_line_item'
require 'openapi_client/models/customers'
require 'openapi_client/models/inventory_items'
require 'openapi_client/models/manufacture_order'
require 'openapi_client/models/manufacture_order_line_item'
require 'openapi_client/models/messages'
require 'openapi_client/models/model_return'
require 'openapi_client/models/notes'
require 'openapi_client/models/problem'
require 'openapi_client/models/return_item'
require 'openapi_client/models/warranty'
require 'openapi_client/models/warranty_item'
require 'openapi_client/models/work_order'
require 'openapi_client/models/work_order_line_items'

# APIs
require 'openapi_client/api/accounts_api'
require 'openapi_client/api/bill_of_materials_api'
require 'openapi_client/api/bill_of_materials_line_items_api'
require 'openapi_client/api/customers_api'
require 'openapi_client/api/inventory_items_api'
require 'openapi_client/api/manufacture_order_line_items_api'
require 'openapi_client/api/manufacture_orders_api'
require 'openapi_client/api/messages_api'
require 'openapi_client/api/notes_api'
require 'openapi_client/api/return_line_items_api'
require 'openapi_client/api/returns_api'
require 'openapi_client/api/warranties_api'
require 'openapi_client/api/warranty_api'
require 'openapi_client/api/warranty_line_items_api'
require 'openapi_client/api/work_order_line_items_api'
require 'openapi_client/api/work_orders_api'

module OpenapiClient
  class << self
    # Customize default settings for the SDK using block.
    #   OpenapiClient.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
