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

# Unit tests for OpenapiClient::BillOfMaterialsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'BillOfMaterialsApi' do
  before do
    # run before each test
    @api_instance = OpenapiClient::BillOfMaterialsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of BillOfMaterialsApi' do
    it 'should create an instance of BillOfMaterialsApi' do
      expect(@api_instance).to be_instance_of(OpenapiClient::BillOfMaterialsApi)
    end
  end

  # unit tests for create_billof_materials
  # Create a new bill of materials
  # Create a new bill of materials. This can only be done by the logged in bill of materials. 
  # @param bill_of_materials Created bill of materials object
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'create_billof_materials test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for delete_bill_of_materials
  # Delete Bill of Materials
  # This can only be done by the logged in return.
  # @param id The id of the bill of materials that needs to be deleted
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'delete_bill_of_materials test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_bill_of_materials_by_id
  # Get bill of materials by id
  # Some description of the operation. You can use &#x60;Markdown&#x60; here. 
  # @param id The id that needs to be fetched
  # @param [Hash] opts the optional parameters
  # @return [BillOfMaterials]
  describe 'get_bill_of_materials_by_id test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for get_billof_materials
  # Get bill of materials
  # Some description of the operation. You can use &#x60;Markdown&#x60; here. 
  # @param limit The number of items to bill of materials
  # @param offset Filter users without email
  # @param order_direction Direction to bill of materials accounts
  # @param [Hash] opts the optional parameters
  # @return [BillOfMaterials]
  describe 'get_billof_materials test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

  # unit tests for update_bill_of_materials
  # Updated bill of materials
  # This can only be done by the logged in user.
  # @param id The id that needs to be updated
  # @param bill_of_materials Updated bill of materials object
  # @param [Hash] opts the optional parameters
  # @return [nil]
  describe 'update_bill_of_materials test' do
    it 'should work' do
      # assertion here. ref: https://rspec.info/features/3-12/rspec-expectations/built-in-matchers/
    end
  end

end