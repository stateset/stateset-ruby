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
  class ManufactureOrderLineItem
    # Unique identifier for the Manufacture Order Line Item.
    attr_accessor :id

    # The type of the manufacture order line item.
    attr_accessor :line_type

    # The type of output of the manufacture order line item.
    attr_accessor :output_type

    # The status of the manufacture order line item.
    attr_accessor :line_status

    # The part number of the manufacture order line item.
    attr_accessor :part_number

    # The name of the part of the manufacture order line item.
    attr_accessor :part_name

    # The expected completion date of the manufacture order line item.
    attr_accessor :expected_date

    # The quantity of the manufacture order line item.
    attr_accessor :quantity

    # The work order number of the manufacture order line item.
    attr_accessor :work_order_number

    # The site where the manufacture order line item is to be produced.
    attr_accessor :site

    # The location where the yield of the manufacture order line item is to be produced.
    attr_accessor :yield_location

    # The Bill of Materials (BOM) number of the manufacture order line item.
    attr_accessor :bom_number

    # The Bill of Materials (BOM) name of the manufacture order line item.
    attr_accessor :bom_name

    # The priority of the manufacture order line item.
    attr_accessor :priority

    # The number of the manufacture order for which the manufacture order line item belongs to.
    attr_accessor :manufacture_order_number

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'line_type' => :'line_type',
        :'output_type' => :'output_type',
        :'line_status' => :'line_status',
        :'part_number' => :'part_number',
        :'part_name' => :'part_name',
        :'expected_date' => :'expected_date',
        :'quantity' => :'quantity',
        :'work_order_number' => :'work_order_number',
        :'site' => :'site',
        :'yield_location' => :'yield_location',
        :'bom_number' => :'bom_number',
        :'bom_name' => :'bom_name',
        :'priority' => :'priority',
        :'manufacture_order_number' => :'manufacture_order_number'
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
        :'line_type' => :'String',
        :'output_type' => :'String',
        :'line_status' => :'String',
        :'part_number' => :'String',
        :'part_name' => :'String',
        :'expected_date' => :'Date',
        :'quantity' => :'Integer',
        :'work_order_number' => :'Integer',
        :'site' => :'String',
        :'yield_location' => :'String',
        :'bom_number' => :'Integer',
        :'bom_name' => :'String',
        :'priority' => :'String',
        :'manufacture_order_number' => :'Integer'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `OpenapiClient::ManufactureOrderLineItem` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `OpenapiClient::ManufactureOrderLineItem`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'line_type')
        self.line_type = attributes[:'line_type']
      end

      if attributes.key?(:'output_type')
        self.output_type = attributes[:'output_type']
      end

      if attributes.key?(:'line_status')
        self.line_status = attributes[:'line_status']
      end

      if attributes.key?(:'part_number')
        self.part_number = attributes[:'part_number']
      end

      if attributes.key?(:'part_name')
        self.part_name = attributes[:'part_name']
      end

      if attributes.key?(:'expected_date')
        self.expected_date = attributes[:'expected_date']
      end

      if attributes.key?(:'quantity')
        self.quantity = attributes[:'quantity']
      end

      if attributes.key?(:'work_order_number')
        self.work_order_number = attributes[:'work_order_number']
      end

      if attributes.key?(:'site')
        self.site = attributes[:'site']
      end

      if attributes.key?(:'yield_location')
        self.yield_location = attributes[:'yield_location']
      end

      if attributes.key?(:'bom_number')
        self.bom_number = attributes[:'bom_number']
      end

      if attributes.key?(:'bom_name')
        self.bom_name = attributes[:'bom_name']
      end

      if attributes.key?(:'priority')
        self.priority = attributes[:'priority']
      end

      if attributes.key?(:'manufacture_order_number')
        self.manufacture_order_number = attributes[:'manufacture_order_number']
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
          line_type == o.line_type &&
          output_type == o.output_type &&
          line_status == o.line_status &&
          part_number == o.part_number &&
          part_name == o.part_name &&
          expected_date == o.expected_date &&
          quantity == o.quantity &&
          work_order_number == o.work_order_number &&
          site == o.site &&
          yield_location == o.yield_location &&
          bom_number == o.bom_number &&
          bom_name == o.bom_name &&
          priority == o.priority &&
          manufacture_order_number == o.manufacture_order_number
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, line_type, output_type, line_status, part_number, part_name, expected_date, quantity, work_order_number, site, yield_location, bom_number, bom_name, priority, manufacture_order_number].hash
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
