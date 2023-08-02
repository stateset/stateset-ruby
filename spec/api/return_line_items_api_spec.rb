=begin
#Stateset

#This is the Stateset One API based on The OpenAPI Specification. # Introduction This API definition is intended to to be a good starting point for describing your API in [OpenAPI/Swagger format](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md). # OpenAPI Specification The goal of The OpenAPI Specification is to define a standard, language-agnostic interface to REST APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection. When properly defined via OpenAPI, a consumer can  understand and interact with the remote service with a minimal amount of implementation logic. Similar to what interfaces have done for lower-level programming, OpenAPI removes the guesswork in calling the service. 

The version of the OpenAPI document: 1.0.0
Contact: developers@stateset.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'spec_helper'
require 'json'

# Unit tests for OpenapiClient::ReturnLineItemsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'ReturnLineItemsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::ReturnLineItemsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ReturnLineItemsApi' do
    it 'should create an instance of ReturnLineItemsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::ReturnLineItemsApi)
    end
  end

  # unit tests for get_return_item_by_id
  # Get returnItem by id
  # Some description of the operation. You can use &#x60;Markdown&#x60; here. 
  # @param limit The number of items to return
  # @param offset Filter users without email
  # @param order_direction Direction to return accounts
  # @param [Hash] opts the optional parameters
  # @return [ReturnItem]
  describe 'get_return_item_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_return_line_item_by_id
  # Get return line item by id
  # Some description of the operation. You can use &#x60;Markdown&#x60; here. 
  # @param id The id that needs to be fetched
  # @param [Hash] opts the optional parameters
  # @return [ReturnItem]
  describe 'get_return_line_item_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_return_line_item
  # Updated return line item
  # This can only be done by the logged in user.
  # @param id The id that needs to be updated
  # @param return_item Updated reuturn object
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_return_line_item test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end