#!/usr/bin/env ruby
# frozen_string_literal: true

# StateSet Ruby SDK - Quick Start Example
#
# This example demonstrates the key features and usage patterns of the StateSet Ruby SDK

require 'bundler/setup'
require 'stateset'

# Example: Basic SDK Setup
puts "🚀 StateSet Ruby SDK - Quick Start Example"
puts "=" * 50

# 1. Basic Configuration
puts "\n1. Basic Configuration"
StateSet.configure do |config|
  # Use environment variable or replace with your actual API key
  config.api_key['api_key'] = ENV['STATESET_API_KEY'] || 'your_api_key_here'
  
  # Optional: customize host (defaults to api.stateset.com)
  config.host = ENV['STATESET_HOST'] || 'api.stateset.com'
  
  # Optional: enable debugging to see HTTP requests/responses
  config.debugging = ENV['STATESET_DEBUG'] == 'true'
  
  # Optional: configure retries
  config.max_retries = 3
  config.timeout = 30
end

puts "✅ SDK configured successfully"
puts "   Host: #{StateSet.configuration.host}"
puts "   Debugging: #{StateSet.configuration.debugging}"
puts "   Max Retries: #{StateSet.configuration.max_retries}"

# 2. Working with Returns
puts "\n2. Working with Returns"
begin
  returns_api = StateSet::ReturnsApi.new
  
  # Get all returns (with error handling)
  puts "📋 Fetching returns..."
  # returns = returns_api.get_returns
  # puts "   Found #{returns&.length || 0} returns"
  
  # Create a new return (example)
  puts "📝 Creating a new return..."
  new_return = StateSet::ModelReturn.new(
    order_id: 'ORDER-12345',
    customer_email: 'customer@example.com',
    reason_category: 'defective',
    description: 'Product arrived damaged',
    amount: 99.99
  )
  
  puts "   Return object created with order ID: #{new_return.order_id}"
  # created_return = returns_api.create_return(new_return)
  # puts "   Return created with ID: #{created_return.id}"
  
rescue StateSet::ApiError => e
  puts "❌ API Error occurred:"
  puts "   Status: #{e.code}"
  puts "   Message: #{e.message}"
  
  # Enhanced error handling
  if e.authentication_error?
    puts "   🔐 Authentication failed - check your API key"
  elsif e.rate_limited?
    puts "   ⏰ Rate limited - retry after #{e.retry_after} seconds"
  elsif e.validation_error?
    puts "   ⚠️  Validation error - check your data"
    puts "   Details: #{e.error_details}"
  elsif e.retryable?
    puts "   🔄 This error can be retried automatically"
  end
rescue StandardError => e
  puts "❌ Unexpected error: #{e.message}"
end

# 3. Working with Inventory
puts "\n3. Working with Inventory"
begin
  inventory_api = StateSet::InventoryItemsApi.new
  
  # Create inventory item example
  puts "📦 Creating inventory item..."
  inventory_item = StateSet::InventoryItems.new(
    sku: 'WIDGET-001',
    description: 'Premium Widget v2.0',
    available: 100,
    warehouse: 'MAIN-WAREHOUSE',
    color: 'Blue',
    size: 'Medium'
  )
  
  puts "   Inventory item created: #{inventory_item.sku}"
  puts "   Description: #{inventory_item.description}"
  puts "   Available: #{inventory_item.available}"
  
  # created_item = inventory_api.create_inventory_items(inventory_item)
  # puts "   Created item with ID: #{created_item.id}"
  
rescue StateSet::ApiError => e
  puts "❌ Inventory API Error: #{e.message}"
end

# 4. Working with Customers
puts "\n4. Working with Customers"
begin
  customers_api = StateSet::CustomersApi.new
  
  # Example customer lookup
  puts "👤 Customer operations..."
  # customers = customers_api.get_customers
  # puts "   Customer API is ready"
  
  # Create customer example
  customer = StateSet::Customers.new(
    email: 'john.doe@example.com',
    first_name: 'John',
    last_name: 'Doe',
    phone: '+1-555-0123'
  )
  
  puts "   Customer object created: #{customer.email}"
  
rescue StateSet::ApiError => e
  puts "❌ Customer API Error: #{e.message}"
end

# 5. Manufacturing Operations
puts "\n5. Manufacturing Operations"
begin
  manufacturing_api = StateSet::ManufactureOrdersApi.new
  bom_api = StateSet::BillOfMaterialsApi.new
  
  puts "🏭 Manufacturing operations..."
  
  # Create BOM example
  bom = StateSet::BillOfMaterials.new(
    number: 'BOM-001',
    name: 'Widget Assembly',
    description: 'Bill of materials for premium widget'
  )
  
  puts "   BOM created: #{bom.number} - #{bom.name}"
  
  # Create manufacture order example
  manufacture_order = StateSet::ManufactureOrder.new(
    number: 'MO-001',
    site: 'FACTORY-A',
    priority: 'high',
    memo: 'Rush order for Q4 delivery'
  )
  
  puts "   Manufacture order created: #{manufacture_order.number}"
  puts "   Priority: #{manufacture_order.priority}"
  
rescue StateSet::ApiError => e
  puts "❌ Manufacturing API Error: #{e.message}"
end

# 6. Advanced Configuration Example
puts "\n6. Advanced Configuration Example"

advanced_config = StateSet::Configuration.new do |config|
  # Authentication
  config.api_key['api_key'] = ENV['STATESET_API_KEY']
  
  # Endpoint configuration
  config.host = 'api.stateset.com'
  config.scheme = 'https'
  config.base_path = '/v1'
  
  # Timeout and retry settings
  config.timeout = 30
  config.max_retries = 5
  config.retry_base_delay = 1.0
  config.retry_max_delay = 60.0
  
  # Rate limiting
  config.rate_limit_enabled = true
  config.rate_limit_rps = 10
  
  # SSL settings (secure by default)
  config.verify_ssl = true
  config.verify_ssl_host = true
  
  # Debugging
  config.debugging = false
  config.logger = Logger.new(STDOUT)
end

puts "⚙️  Advanced configuration example:"
puts "   Base URL: #{advanced_config.base_url}"
puts "   Max Retries: #{advanced_config.max_retries}"
puts "   Rate Limiting: #{advanced_config.rate_limit_enabled}"
puts "   SSL Verification: #{advanced_config.verify_ssl}"

# 7. Environment-based Configuration
puts "\n7. Environment-based Configuration"

# Example of environment-specific configuration
case ENV['RAILS_ENV'] || ENV['ENVIRONMENT'] || 'development'
when 'development'
  puts "🧪 Development environment detected"
  StateSet.configure do |config|
    config.debugging = true
    config.timeout = 60 # Longer timeout for development
  end
when 'staging'
  puts "🔧 Staging environment detected"
  StateSet.configure do |config|
    config.host = 'api.staging.stateset.com'
    config.timeout = 30
  end
when 'production'
  puts "🚀 Production environment detected"
  StateSet.configure do |config|
    config.host = 'api.stateset.com'
    config.timeout = 10 # Fast timeout for production
    config.max_retries = 3
  end
end

# 8. Error Handling Best Practices
puts "\n8. Error Handling Best Practices"

def handle_api_call
  # Example of comprehensive error handling
  yield
rescue StateSet::ApiError => e
  case e.code
  when 401
    puts "🔐 Authentication Error: Check your API key"
  when 403
    puts "🚫 Authorization Error: Insufficient permissions"
  when 404
    puts "🔍 Not Found: Resource doesn't exist"
  when 422
    puts "⚠️  Validation Error: #{e.error_details['validation_errors']}"
  when 429
    puts "⏰ Rate Limited: Wait #{e.retry_after} seconds"
  when 500..599
    puts "🚨 Server Error: Try again later"
  else
    puts "❌ API Error (#{e.code}): #{e.message}"
  end
rescue Net::TimeoutError, Timeout::Error
  puts "⏱️  Request timed out - check your connection"
rescue StandardError => e
  puts "💥 Unexpected error: #{e.message}"
end

# Example usage of error handling
puts "🛡️  Testing error handling patterns..."
handle_api_call do
  # This would be a real API call
  puts "   API call would execute here"
end

# 9. SDK Information
puts "\n9. SDK Information"
puts "📊 StateSet Ruby SDK Information:"
puts "   Version: #{StateSet::VERSION}"
puts "   User Agent: StateSet-Ruby-SDK/#{StateSet::VERSION}"
puts "   Configuration valid: #{StateSet.configuration.validate! rescue false}"

puts "\n" + "=" * 50
puts "🎉 Quick start example completed!"
puts "💡 Tips for next steps:"
puts "   • Set your API key: export STATESET_API_KEY=your_key"
puts "   • Enable debugging: export STATESET_DEBUG=true"
puts "   • Check the documentation at https://docs.stateset.com/ruby"
puts "   • Join our community at https://community.stateset.com"