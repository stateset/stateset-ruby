=begin
#Stateset

#This is the Stateset One API based on The OpenAPI Specification. # Introduction This API definition is intended to to be a good starting point for describing your API in [OpenAPI/Swagger format](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md). # OpenAPI Specification The goal of The OpenAPI Specification is to define a standard, language-agnostic interface to REST APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection. When properly defined via OpenAPI, a consumer can  understand and interact with the remote service with a minimal amount of implementation logic. Similar to what interfaces have done for lower-level programming, OpenAPI removes the guesswork in calling the service. 

The version of the OpenAPI document: 1.0.0
Contact: developers@stateset.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'date'
require 'time'

module OpenapiClient
  class Accounts
    # The unique identifier for the account.
    attr_accessor :id

    # The name of the account.
    attr_accessor :account_name

    # The type of account.
    attr_accessor :account_type

    # The industry the account belongs to.
    attr_accessor :industry

    # The rating of the account.
    attr_accessor :rating

    # The phone number of the account.
    attr_accessor :phone

    # The date and time when the account was created.
    attr_accessor :created_at

    # Whether the account is public or private.
    attr_accessor :is_public

    # The controller of the account.
    attr_accessor :controller

    # The processor of the account.
    attr_accessor :processor

    # Whether the account is active or not.
    attr_accessor :is_active

    # The ID of the user who created the account.
    attr_accessor :user_id

    # The ID of the order associated with the account.
    attr_accessor :order_id

    # Any notes or comments associated with the account.
    attr_accessor :account_notes

    # The annual revenue of the account.
    attr_accessor :annual_revenue

    # The city for the account's billing address.
    attr_accessor :billing_city

    # The country for the account's billing address.
    attr_accessor :billing_country

    # The latitude for the account's billing address.
    attr_accessor :billing_latitude

    # The longitude for the account's billing address.
    attr_accessor :billing_longitude

    # The state or province for the account's billing address.
    attr_accessor :billing_state

    # The street address for the account's billing address.
    attr_accessor :billing_street

    # The number of employees for the account.
    attr_accessor :number_of_employees

    # The ownership status of the account.
    attr_accessor :ownership

    # The city for the account's shipping address.
    attr_accessor :shipping_city

    # The country for the account's shipping address.
    attr_accessor :shipping_country

    # The latitude for the account's shipping address.
    attr_accessor :shipping_latitude

    # The longitude for the account's shipping address.
    attr_accessor :shipping_longitude

    # The state or province for the account's shipping address.
    attr_accessor :shipping_state

    attr_accessor :shipping_street

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'account_name' => :'accountName',
        :'account_type' => :'accountType',
        :'industry' => :'industry',
        :'rating' => :'rating',
        :'phone' => :'phone',
        :'created_at' => :'created_at',
        :'is_public' => :'is_public',
        :'controller' => :'controller',
        :'processor' => :'processor',
        :'is_active' => :'is_active',
        :'user_id' => :'user_id',
        :'order_id' => :'order_id',
        :'account_notes' => :'accountNotes',
        :'annual_revenue' => :'annualRevenue',
        :'billing_city' => :'billingCity',
        :'billing_country' => :'billingCountry',
        :'billing_latitude' => :'billingLatitude',
        :'billing_longitude' => :'billingLongitude',
        :'billing_state' => :'billingState',
        :'billing_street' => :'billingStreet',
        :'number_of_employees' => :'numberOfEmployees',
        :'ownership' => :'ownership',
        :'shipping_city' => :'shippingCity',
        :'shipping_country' => :'shippingCountry',
        :'shipping_latitude' => :'shippingLatitude',
        :'shipping_longitude' => :'shippingLongitude',
        :'shipping_state' => :'shippingState',
        :'shipping_street' => :'shippingStreet'
      }
    end

    # Returns all the JSON keys this model knows about
    def self.acceptable_attributes
      attribute_map.values
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'account_name' => :'String',
        :'account_type' => :'String',
        :'industry' => :'String',
        :'rating' => :'String',
        :'phone' => :'String',
        :'created_at' => :'Time',
        :'is_public' => :'Boolean',
        :'controller' => :'String',
        :'processor' => :'String',
        :'is_active' => :'Boolean',
        :'user_id' => :'String',
        :'order_id' => :'String',
        :'account_notes' => :'String',
        :'annual_revenue' => :'Integer',
        :'billing_city' => :'String',
        :'billing_country' => :'String',
        :'billing_latitude' => :'String',
        :'billing_longitude' => :'String',
        :'billing_state' => :'String',
        :'billing_street' => :'String',
        :'number_of_employees' => :'Float',
        :'ownership' => :'String',
        :'shipping_city' => :'String',
        :'shipping_country' => :'String',
        :'shipping_latitude' => :'String',
        :'shipping_longitude' => :'String',
        :'shipping_state' => :'String',
        :'shipping_street' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::Accounts` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::Accounts`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'account_name')
        self.account_name = attributes[:'account_name']
      end

      if attributes.key?(:'account_type')
        self.account_type = attributes[:'account_type']
      end

      if attributes.key?(:'industry')
        self.industry = attributes[:'industry']
      end

      if attributes.key?(:'rating')
        self.rating = attributes[:'rating']
      end

      if attributes.key?(:'phone')
        self.phone = attributes[:'phone']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'is_public')
        self.is_public = attributes[:'is_public']
      end

      if attributes.key?(:'controller')
        self.controller = attributes[:'controller']
      end

      if attributes.key?(:'processor')
        self.processor = attributes[:'processor']
      end

      if attributes.key?(:'is_active')
        self.is_active = attributes[:'is_active']
      end

      if attributes.key?(:'user_id')
        self.user_id = attributes[:'user_id']
      end

      if attributes.key?(:'order_id')
        self.order_id = attributes[:'order_id']
      end

      if attributes.key?(:'account_notes')
        self.account_notes = attributes[:'account_notes']
      end

      if attributes.key?(:'annual_revenue')
        self.annual_revenue = attributes[:'annual_revenue']
      end

      if attributes.key?(:'billing_city')
        self.billing_city = attributes[:'billing_city']
      end

      if attributes.key?(:'billing_country')
        self.billing_country = attributes[:'billing_country']
      end

      if attributes.key?(:'billing_latitude')
        self.billing_latitude = attributes[:'billing_latitude']
      end

      if attributes.key?(:'billing_longitude')
        self.billing_longitude = attributes[:'billing_longitude']
      end

      if attributes.key?(:'billing_state')
        self.billing_state = attributes[:'billing_state']
      end

      if attributes.key?(:'billing_street')
        self.billing_street = attributes[:'billing_street']
      end

      if attributes.key?(:'number_of_employees')
        self.number_of_employees = attributes[:'number_of_employees']
      end

      if attributes.key?(:'ownership')
        self.ownership = attributes[:'ownership']
      end

      if attributes.key?(:'shipping_city')
        self.shipping_city = attributes[:'shipping_city']
      end

      if attributes.key?(:'shipping_country')
        self.shipping_country = attributes[:'shipping_country']
      end

      if attributes.key?(:'shipping_latitude')
        self.shipping_latitude = attributes[:'shipping_latitude']
      end

      if attributes.key?(:'shipping_longitude')
        self.shipping_longitude = attributes[:'shipping_longitude']
      end

      if attributes.key?(:'shipping_state')
        self.shipping_state = attributes[:'shipping_state']
      end

      if attributes.key?(:'shipping_street')
        self.shipping_street = attributes[:'shipping_street']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          account_name == o.account_name &&
          account_type == o.account_type &&
          industry == o.industry &&
          rating == o.rating &&
          phone == o.phone &&
          created_at == o.created_at &&
          is_public == o.is_public &&
          controller == o.controller &&
          processor == o.processor &&
          is_active == o.is_active &&
          user_id == o.user_id &&
          order_id == o.order_id &&
          account_notes == o.account_notes &&
          annual_revenue == o.annual_revenue &&
          billing_city == o.billing_city &&
          billing_country == o.billing_country &&
          billing_latitude == o.billing_latitude &&
          billing_longitude == o.billing_longitude &&
          billing_state == o.billing_state &&
          billing_street == o.billing_street &&
          number_of_employees == o.number_of_employees &&
          ownership == o.ownership &&
          shipping_city == o.shipping_city &&
          shipping_country == o.shipping_country &&
          shipping_latitude == o.shipping_latitude &&
          shipping_longitude == o.shipping_longitude &&
          shipping_state == o.shipping_state &&
          shipping_street == o.shipping_street
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, account_name, account_type, industry, rating, phone, created_at, is_public, controller, processor, is_active, user_id, order_id, account_notes, annual_revenue, billing_city, billing_country, billing_latitude, billing_longitude, billing_state, billing_street, number_of_employees, ownership, shipping_city, shipping_country, shipping_latitude, shipping_longitude, shipping_state, shipping_street].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      attributes = attributes.transform_keys(&:to_sym)
      self.class.openapi_types.each_pair do |key, type|
        if attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        elsif type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :Time
        Time.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        # models (e.g. Pet) or oneOf
        klass = OpenapiClient.const_get(type)
        klass.respond_to?(:openapi_one_of) ? klass.build(value) : klass.build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end

  end

end
