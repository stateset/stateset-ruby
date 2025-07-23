# StateSet Ruby SDK

[![Gem Version](https://badge.fury.io/rb/stateset.svg)](https://badge.fury.io/rb/stateset)
[![Ruby](https://img.shields.io/badge/ruby-2.7%2B-red.svg)](https://www.ruby-lang.org)
[![License: MIT](https://img.shields.io/badge/License-MIT-yellow.svg)](https://opensource.org/licenses/MIT)

Official Ruby SDK for the StateSet API. StateSet is a comprehensive platform for managing ecommerce operations including returns, warranties, bill of materials, manufacturing orders, and inventory management.

## Features

- 🚀 **Complete API Coverage** - Access all StateSet API endpoints
- 🔄 **Automatic Retries** - Built-in exponential backoff for resilient API calls
- 🛡️ **Error Handling** - Comprehensive error types with detailed information
- 📝 **Extensive Logging** - Debug-friendly request/response logging
- ⚙️ **Flexible Configuration** - Multiple authentication methods and environment support
- 🔍 **Type Safety** - Well-defined models and response types
- 📚 **Rich Documentation** - Comprehensive guides and API reference

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'stateset'
```

And then execute:

```bash
$ bundle install
```

Or install it yourself as:

```bash
$ gem install stateset
```

## Quick Start

### Basic Configuration

```ruby
require 'stateset'

# Configure with API key
StateSet.configure do |config|
  config.api_key['api_key'] = 'your_api_key_here'
  config.host = 'api.stateset.com'
end

# Create a client
client = StateSet.client
```

### Environment Variables

You can also configure the SDK using environment variables:

```bash
export STATESET_API_KEY=your_api_key_here
export STATESET_HOST=api.stateset.com
export STATESET_DEBUG=true
```

```ruby
require 'stateset'

# Auto-configure from environment
StateSet.configure(StateSet::Configuration.from_env)
```

## Usage Examples

### Working with Returns

```ruby
# Get all returns
returns_api = StateSet::ReturnsApi.new
returns = returns_api.get_returns

# Create a new return
new_return = StateSet::ModelReturn.new(
  order_id: '12345',
  customer_email: 'customer@example.com',
  reason_category: 'defective',
  description: 'Product arrived damaged'
)

created_return = returns_api.create_return(new_return)

# Get a specific return
return_details = returns_api.get_return_by_id(created_return.id)

# Update return status
return_details.status = 'approved'
returns_api.update_return(return_details.id, return_details)
```

### Managing Inventory

```ruby
# Get inventory items
inventory_api = StateSet::InventoryItemsApi.new
items = inventory_api.get_inventory_items

# Create new inventory item
inventory_item = StateSet::InventoryItems.new(
  sku: 'WIDGET-001',
  description: 'Premium Widget',
  available: 100,
  warehouse: 'MAIN'
)

created_item = inventory_api.create_inventory_items(inventory_item)

# Update inventory levels
created_item.available = 95
inventory_api.update_inventory_item(created_item.id, created_item)
```

### Working with Customers

```ruby
# Get customers
customers_api = StateSet::CustomersApi.new
customers = customers_api.get_customers

# Get a specific customer
customer = customers_api.get_customers_by_id('customer_123')
```

### Manufacturing Orders

```ruby
# Get manufacturing orders
manufacturing_api = StateSet::ManufactureOrdersApi.new
orders = manufacturing_api.get_manufacture_orders

# Get specific order details
order = manufacturing_api.get_manufacture_order_by_id('mo_12345')

# Update order priority
order.priority = 'high'
manufacturing_api.update_manufacture_order(order.id, order)
```

### Bill of Materials

```ruby
# Get bill of materials
bom_api = StateSet::BillOfMaterialsApi.new
boms = bom_api.get_billof_materials

# Get specific BOM
bom = bom_api.get_bill_of_materials_by_id('bom_001')

# Get BOM line items
line_items_api = StateSet::BillOfMaterialsLineItemsApi.new
line_items = line_items_api.get_bill_of_materials_item_by_id
```

## Advanced Configuration

### Authentication Methods

#### API Key Authentication

```ruby
StateSet.configure do |config|
  config.api_key['api_key'] = 'your_api_key'
  config.api_key_prefix['api_key'] = 'Bearer' # Optional prefix
end
```

#### OAuth2 Authentication

```ruby
StateSet.configure do |config|
  config.access_token = 'your_oauth_token'
end

# Or with dynamic token fetching
StateSet.configure do |config|
  config.access_token_getter = -> { fetch_fresh_token() }
end
```

#### Basic Authentication

```ruby
StateSet.configure do |config|
  config.username = 'your_username'
  config.password = 'your_password'
end
```

### Advanced Options

```ruby
StateSet.configure do |config|
  # Basic settings
  config.api_key['api_key'] = 'your_api_key'
  config.host = 'api.stateset.com'
  config.scheme = 'https'
  config.base_path = '/v1'
  
  # Timeout settings
  config.timeout = 30 # seconds
  
  # Retry configuration
  config.max_retries = 5
  config.retry_base_delay = 1.0
  config.retry_max_delay = 60.0
  
  # Rate limiting
  config.rate_limit_enabled = true
  config.rate_limit_rps = 10
  
  # SSL settings
  config.verify_ssl = true
  config.verify_ssl_host = true
  
  # Proxy settings
  config.proxy = 'http://proxy.example.com:8080'
  config.proxy_username = 'proxy_user'
  config.proxy_password = 'proxy_pass'
  
  # Debugging
  config.debugging = true
  config.logger = Logger.new(STDOUT)
  config.logger.level = Logger::DEBUG
end
```

## Error Handling

The SDK provides comprehensive error handling with detailed error information:

```ruby
begin
  returns = returns_api.get_returns
rescue StateSet::ApiError => e
  puts "API Error: #{e.message}"
  puts "Status Code: #{e.code}"
  puts "Error Type: #{e.error_details['type']}" if e.error_details['type']
  
  # Check specific error types
  if e.authentication_error?
    puts "Authentication failed - check your API key"
  elsif e.rate_limited?
    puts "Rate limited - retry after #{e.retry_after} seconds"
  elsif e.validation_error?
    puts "Validation errors: #{e.error_details['validation_errors']}"
  elsif e.retryable?
    puts "This error can be retried"
  end
end
```

### Error Types

The SDK provides convenient methods to check error types:

- `authentication_error?` - 401 Unauthorized
- `authorization_error?` - 403 Forbidden  
- `not_found_error?` - 404 Not Found
- `validation_error?` - 422 Validation Error
- `rate_limited?` - 429 Rate Limited
- `server_error?` - 5xx Server Errors
- `network_error?` - Network/Connection Errors
- `retryable?` - Errors that can be retried

## Logging and Debugging

Enable detailed logging to debug API interactions:

```ruby
StateSet.configure do |config|
  config.debugging = true
  config.logger = Logger.new('stateset.log')
  config.logger.level = Logger::DEBUG
end

# Or enable debugging after configuration
StateSet.configuration.enable_debugging!
```

This will log:
- HTTP request details (URL, headers, body)
- HTTP response details (status, headers, body)
- Retry attempts and backoff delays
- Authentication token usage

## Pagination

Many API endpoints support pagination. Handle large result sets efficiently:

```ruby
# Get paginated results
page = 1
per_page = 50

begin
  returns = returns_api.get_returns(
    limit: per_page,
    offset: (page - 1) * per_page
  )
  
  # Process returns
  returns.each do |return_item|
    puts "Return ID: #{return_item.id}"
  end
  
  page += 1
end while returns.length == per_page
```

## Testing

The SDK is well-tested and includes test utilities for your applications:

```ruby
# In your test helper
require 'stateset'
require 'webmock/rspec'

# Mock StateSet API responses
WebMock.stub_request(:get, "https://api.stateset.com/v1/returns")
  .to_return(
    status: 200,
    body: { returns: [] }.to_json,
    headers: { 'Content-Type' => 'application/json' }
  )
```

## Rate Limiting

The SDK respects rate limits and can be configured to handle them automatically:

```ruby
StateSet.configure do |config|
  config.rate_limit_enabled = true
  config.rate_limit_rps = 10 # requests per second
  config.max_retries = 5
end
```

When rate limited (429 response), the SDK will:
1. Parse the `Retry-After` header
2. Wait the specified time before retrying
3. Use exponential backoff for subsequent retries

## Environments

Different configuration for different environments:

```ruby
# config/initializers/stateset.rb

case Rails.env
when 'development'
  StateSet.configure do |config|
    config.host = 'api.dev.stateset.com'
    config.debugging = true
  end
when 'staging'
  StateSet.configure do |config|
    config.host = 'api.staging.stateset.com'
    config.timeout = 30
  end
when 'production'
  StateSet.configure do |config|
    config.host = 'api.stateset.com'
    config.timeout = 10
    config.max_retries = 3
  end
end

# Always set API key from environment
StateSet.configuration.api_key['api_key'] = ENV['STATESET_API_KEY']
```

## API Reference

### Core APIs

- **ReturnsApi** - Manage product returns and RMAs
- **InventoryItemsApi** - Track inventory levels and stock
- **CustomersApi** - Customer management
- **WarrantiesApi** / **WarrantyApi** - Warranty processing
- **BillOfMaterialsApi** - Manufacturing BOMs
- **ManufactureOrdersApi** - Production orders
- **WorkOrdersApi** - Work order management
- **MessagesApi** - Communication and notifications
- **NotesApi** - Annotations and comments

### Models

All API responses are returned as strongly-typed model objects:

- `StateSet::ModelReturn` - Return/RMA objects
- `StateSet::InventoryItems` - Inventory items
- `StateSet::Customers` - Customer objects
- `StateSet::Warranty` - Warranty objects
- `StateSet::BillOfMaterials` - Bill of materials
- `StateSet::ManufactureOrder` - Manufacturing orders
- `StateSet::WorkOrder` - Work orders
- `StateSet::Messages` - Messages and notifications

## Contributing

1. Fork the repository
2. Create your feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Development Setup

```bash
git clone https://github.com/stateset/stateset-ruby.git
cd stateset-ruby
bundle install
bundle exec rspec
```

### Running Tests

```bash
# Run all tests
bundle exec rspec

# Run with coverage
bundle exec rspec --format documentation

# Run specific test file
bundle exec rspec spec/api/returns_api_spec.rb
```

## Changelog

See [CHANGELOG.md](CHANGELOG.md) for details about changes and version history.

## Support

- 📧 Email: [developers@stateset.com](mailto:developers@stateset.com)
- 📖 Documentation: [https://docs.stateset.com/ruby](https://docs.stateset.com/ruby)
- 🐛 Issues: [GitHub Issues](https://github.com/stateset/stateset-ruby/issues)
- 💬 Community: [StateSet Community](https://community.stateset.com)

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## About StateSet

StateSet is a comprehensive ecommerce operations platform that helps businesses manage returns, warranties, inventory, manufacturing, and customer communications. Learn more at [stateset.com](https://stateset.com).

---

Made with ❤️ by the StateSet team

