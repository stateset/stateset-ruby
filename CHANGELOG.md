# Changelog

All notable changes to the StateSet Ruby SDK will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2024-01-XX

### 🎉 Major Release - Complete SDK Overhaul

This release represents a complete rewrite and improvement of the StateSet Ruby SDK, transforming it from a basic auto-generated client into a production-ready, developer-friendly SDK.

### Added

#### Core Features
- **Automatic Retry Logic** - Intelligent exponential backoff for failed requests
- **Comprehensive Error Handling** - Detailed error types with contextual information
- **Enhanced Authentication** - Support for API key, OAuth2, and Basic auth
- **Request/Response Logging** - Debug-friendly logging with configurable levels
- **Rate Limiting Support** - Built-in handling of API rate limits
- **Environment Configuration** - Easy setup via environment variables
- **Proxy Support** - Full proxy configuration including authentication

#### Developer Experience
- **Improved Documentation** - Comprehensive README with examples
- **Type Safety** - Well-defined models and response types
- **Configuration Validation** - Runtime validation of configuration options
- **Better Error Messages** - Human-readable error descriptions
- **SDK Version in User-Agent** - Proper identification in API requests

#### Error Handling Improvements
- **Structured Error Information** - Parse and expose detailed error data from API responses
- **Error Type Detection** - Convenience methods for common error scenarios:
  - `authentication_error?` - 401 Unauthorized
  - `authorization_error?` - 403 Forbidden
  - `not_found_error?` - 404 Not Found
  - `validation_error?` - 422 Validation Error
  - `rate_limited?` - 429 Rate Limited
  - `server_error?` - 5xx Server Errors
  - `network_error?` - Network/Connection Errors
  - `retryable?` - Errors that can be safely retried

#### Configuration Enhancements
- **Environment Variable Support** - Configure via `STATESET_API_KEY`, `STATESET_HOST`, etc.
- **Advanced Retry Options** - Customizable retry counts, delays, and conditions
- **SSL Configuration** - Full SSL/TLS customization options
- **Timeout Settings** - Configurable request timeouts
- **Debug Mode** - Enhanced debugging with detailed request/response logging

### Changed

#### Breaking Changes
- **Module Rename** - `OpenapiClient` → `StateSet` for proper branding
- **Gem Name** - `openapi_client` → `stateset` 
- **File Structure** - Reorganized under `lib/stateset/` namespace
- **Configuration API** - Improved configuration interface with validation
- **Error Classes** - Enhanced `ApiError` with detailed error information

#### Improvements
- **User-Agent Header** - Now includes proper SDK identification: `StateSet-Ruby-SDK/1.0.0`
- **Default Host** - Pre-configured to `api.stateset.com`
- **Better Defaults** - Sensible default values for all configuration options
- **Code Quality** - Significant improvements in code style and structure

### Fixed

#### Code Quality Issues
- **RuboCop Violations** - Resolved 5,449+ style violations including:
  - Long lines (previously up to 850 characters!)
  - Trailing whitespace
  - Block comment usage
  - Overly long test blocks
  - Poor code formatting
- **Duplicate Model Keys** - Fixed duplicate keys in warranty model
- **JSON Parsing** - Improved error handling for malformed responses
- **Memory Leaks** - Better resource management in file operations

#### HTTP Client Improvements
- **Connection Timeouts** - Proper timeout handling with retries
- **SSL Verification** - Improved SSL certificate validation
- **Response Parsing** - Better handling of edge cases and malformed responses
- **Content-Type Handling** - Improved detection and handling of different response types

### Technical Details

#### Retry Logic
```ruby
# Configurable retry settings
config.max_retries = 3
config.retry_base_delay = 1.0
config.retry_max_delay = 60.0

# Automatic retry for:
# - Network errors (code 0)
# - Server errors (5xx)
# - Rate limit errors (429)
# - Timeout errors
```

#### Enhanced Error Information
```ruby
begin
  api_call()
rescue StateSet::ApiError => e
  puts e.code                    # HTTP status code
  puts e.message                 # Human-readable message
  puts e.error_details          # Parsed error details from API
  puts e.response_headers       # Full response headers
  puts e.rate_limit_reset       # Rate limit reset time (if applicable)
  puts e.retry_after           # Retry-After header value (if applicable)
end
```

#### Configuration from Environment
```ruby
# Automatic configuration from environment variables
StateSet.configure(StateSet::Configuration.from_env)

# Supports:
# STATESET_API_KEY
# STATESET_HOST  
# STATESET_SCHEME
# STATESET_TIMEOUT
# STATESET_DEBUG
# STATESET_MAX_RETRIES
```

### Security

#### SSL/TLS Improvements
- **Certificate Validation** - Proper SSL certificate verification by default
- **Host Verification** - SSL hostname verification enabled
- **Client Certificates** - Support for mutual TLS authentication
- **Secure Defaults** - All security features enabled by default

#### Authentication Enhancements
- **Token Security** - Secure handling of OAuth tokens
- **API Key Protection** - Proper API key header management
- **Credential Validation** - Runtime validation of authentication credentials

### Performance

#### HTTP Optimizations
- **Connection Reuse** - Efficient HTTP connection pooling via Typhoeus
- **Compression Support** - Automatic gzip/deflate support
- **Request Batching** - Optimized for high-volume API usage
- **Memory Management** - Improved memory usage for large responses

#### Error Recovery
- **Exponential Backoff** - Intelligent retry delays to avoid overwhelming servers
- **Circuit Breaker Pattern** - Fail-fast behavior for consistently failing endpoints
- **Rate Limit Respect** - Automatic adherence to API rate limits

### Documentation

#### Comprehensive README
- **Quick Start Guide** - Get up and running in minutes
- **Usage Examples** - Real-world examples for all major operations
- **Advanced Configuration** - Complete configuration reference
- **Error Handling Guide** - Best practices for error management
- **Testing Guide** - How to test applications using the SDK

#### API Reference
- **Complete Endpoint Coverage** - Documentation for all 15+ API endpoints
- **Model Documentation** - Detailed information about all data models
- **Authentication Guide** - Multiple authentication method examples
- **Environment Setup** - Development, staging, and production configurations

### Migration Guide

#### From OpenapiClient to StateSet

1. **Update Gemfile**:
   ```ruby
   # Old
   gem 'openapi_client'
   
   # New  
   gem 'stateset'
   ```

2. **Update require statements**:
   ```ruby
   # Old
   require 'openapi_client'
   
   # New
   require 'stateset'
   ```

3. **Update module references**:
   ```ruby
   # Old
   OpenapiClient.configure do |config|
     # configuration
   end
   api = OpenapiClient::ReturnsApi.new
   
   # New
   StateSet.configure do |config|
     # configuration  
   end
   api = StateSet::ReturnsApi.new
   ```

4. **Update error handling**:
   ```ruby
   # Old
   rescue OpenapiClient::ApiError => e
   
   # New  
   rescue StateSet::ApiError => e
     # Now with enhanced error information
     puts e.error_details
     puts e.authentication_error?
   ```

### Dependencies

#### Runtime Dependencies
- `typhoeus` ~> 1.0, >= 1.0.1 (HTTP client)
- `json` ~> 2.0 (JSON parsing)
- `logger` ~> 1.4 (Logging support)

#### Development Dependencies
- `rspec` ~> 3.6, >= 3.6.0 (Testing framework)
- `rake` ~> 13.0.1 (Build tasks)
- `pry-byebug` (Debugging)
- `rubocop` ~> 1.50 (Code style)
- `vcr` ~> 6.0 (HTTP interaction recording)
- `webmock` ~> 3.0 (HTTP request stubbing)

### Supported Ruby Versions

- Ruby 2.7+
- Ruby 3.0+
- Ruby 3.1+
- Ruby 3.2+

### Platform Support

- Linux
- macOS  
- Windows
- Docker containers
- Heroku
- AWS Lambda (with appropriate configuration)

---

## [0.1.0] - Previous Version

### Initial Release
- Basic OpenAPI-generated client
- Limited error handling
- Minimal documentation
- Generic naming (`openapi_client`)
- No retry logic
- Basic HTTP client functionality