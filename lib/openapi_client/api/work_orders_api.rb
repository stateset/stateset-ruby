=begin
#Stateset

#This is the Stateset One API based on The OpenAPI Specification. # Introduction This API definition is intended to to be a good starting point for describing your API in [OpenAPI/Swagger format](https://github.com/OAI/OpenAPI-Specification/blob/master/versions/3.0.2.md). # OpenAPI Specification The goal of The OpenAPI Specification is to define a standard, language-agnostic interface to REST APIs which allows both humans and computers to discover and understand the capabilities of the service without access to source code, documentation, or through network traffic inspection. When properly defined via OpenAPI, a consumer can  understand and interact with the remote service with a minimal amount of implementation logic. Similar to what interfaces have done for lower-level programming, OpenAPI removes the guesswork in calling the service. 

The version of the OpenAPI document: 1.0.0
Contact: developers@stateset.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.6.0

=end

require 'cgi'

module OpenapiClient
  class WorkOrdersApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get work order by id
    # Some description of the operation. You can use `Markdown` here. 
    # @param id [String] The id that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @return [WorkOrder]
    def get_work_order_by_id(id, opts = {})
      data, _status_code, _headers = get_work_order_by_id_with_http_info(id, opts)
      data
    end

    # Get work order by id
    # Some description of the operation. You can use &#x60;Markdown&#x60; here. 
    # @param id [String] The id that needs to be fetched
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkOrder, Integer, Hash)>] WorkOrder data, response status code and response headers
    def get_work_order_by_id_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkOrdersApi.get_work_order_by_id ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkOrdersApi.get_work_order_by_id"
      end
      # resource path
      local_var_path = '/workorders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WorkOrder'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'main_auth']

      new_options = opts.merge(
        :operation => :"WorkOrdersApi.get_work_order_by_id",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkOrdersApi#get_work_order_by_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get account by work order id
    # Some description of the operation. You can use `Markdown` here. 
    # @param limit [Float] The number of items to return
    # @param offset [Float] Offset to return work orders
    # @param order_direction [String] Direction to return work orders
    # @param [Hash] opts the optional parameters
    # @return [WorkOrder]
    def get_work_ordes(limit, offset, order_direction, opts = {})
      data, _status_code, _headers = get_work_ordes_with_http_info(limit, offset, order_direction, opts)
      data
    end

    # Get account by work order id
    # Some description of the operation. You can use &#x60;Markdown&#x60; here. 
    # @param limit [Float] The number of items to return
    # @param offset [Float] Offset to return work orders
    # @param order_direction [String] Direction to return work orders
    # @param [Hash] opts the optional parameters
    # @return [Array<(WorkOrder, Integer, Hash)>] WorkOrder data, response status code and response headers
    def get_work_ordes_with_http_info(limit, offset, order_direction, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkOrdersApi.get_work_ordes ...'
      end
      # verify the required parameter 'limit' is set
      if @api_client.config.client_side_validation && limit.nil?
        fail ArgumentError, "Missing the required parameter 'limit' when calling WorkOrdersApi.get_work_ordes"
      end
      # verify the required parameter 'offset' is set
      if @api_client.config.client_side_validation && offset.nil?
        fail ArgumentError, "Missing the required parameter 'offset' when calling WorkOrdersApi.get_work_ordes"
      end
      # verify the required parameter 'order_direction' is set
      if @api_client.config.client_side_validation && order_direction.nil?
        fail ArgumentError, "Missing the required parameter 'order_direction' when calling WorkOrdersApi.get_work_ordes"
      end
      # resource path
      local_var_path = '/workorders'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'limit'] = limit
      query_params[:'offset'] = offset
      query_params[:'order_direction'] = order_direction

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json', 'application/problem+json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body]

      # return_type
      return_type = opts[:debug_return_type] || 'WorkOrder'

      # auth_names
      auth_names = opts[:debug_auth_names] || ['api_key', 'main_auth']

      new_options = opts.merge(
        :operation => :"WorkOrdersApi.get_work_ordes",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkOrdersApi#get_work_ordes\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Updated work order
    # This can only be done by the logged in user.
    # @param id [String] The id that needs to be updated
    # @param work_order [WorkOrder] Updated work order object
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def update_work_order(id, work_order, opts = {})
      update_work_order_with_http_info(id, work_order, opts)
      nil
    end

    # Updated work order
    # This can only be done by the logged in user.
    # @param id [String] The id that needs to be updated
    # @param work_order [WorkOrder] Updated work order object
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def update_work_order_with_http_info(id, work_order, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WorkOrdersApi.update_work_order ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling WorkOrdersApi.update_work_order"
      end
      # verify the required parameter 'work_order' is set
      if @api_client.config.client_side_validation && work_order.nil?
        fail ArgumentError, "Missing the required parameter 'work_order' when calling WorkOrdersApi.update_work_order"
      end
      # resource path
      local_var_path = '/workorders/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/problem+json'])
      # HTTP header 'Content-Type'
      content_type = @api_client.select_header_content_type(['application/json', 'application/xml'])
      if !content_type.nil?
          header_params['Content-Type'] = content_type
      end

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:debug_body] || @api_client.object_to_http_body(work_order)

      # return_type
      return_type = opts[:debug_return_type]

      # auth_names
      auth_names = opts[:debug_auth_names] || ['main_auth']

      new_options = opts.merge(
        :operation => :"WorkOrdersApi.update_work_order",
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:PUT, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: WorkOrdersApi#update_work_order\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end