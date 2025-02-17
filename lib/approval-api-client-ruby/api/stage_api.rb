=begin
#Insights Service Approval APIs

#APIs to query approval service

OpenAPI spec version: 1.0.0
Contact: support@redhat.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 3.3.4

=end

require 'uri'

module ApprovalApiClient
  class StageApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Return an array of stages by given request id
    # Return an array of stages by given request id
    # @param request_id Id of request
    # @param [Hash] opts the optional parameters
    # @return [StageOutCollection]
    def list_stages_by_request(request_id, opts = {})
      data, _status_code, _headers = list_stages_by_request_with_http_info(request_id, opts)
      data
    end

    # Return an array of stages by given request id
    # Return an array of stages by given request id
    # @param request_id Id of request
    # @param [Hash] opts the optional parameters
    # @return [Array<(StageOutCollection, Fixnum, Hash)>] StageOutCollection data, response status code and response headers
    def list_stages_by_request_with_http_info(request_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StageApi.list_stages_by_request ...'
      end
      # verify the required parameter 'request_id' is set
      if @api_client.config.client_side_validation && request_id.nil?
        fail ArgumentError, "Missing the required parameter 'request_id' when calling StageApi.list_stages_by_request"
      end
      # resource path
      local_var_path = '/requests/{request_id}/stages'.sub('{' + 'request_id' + '}', request_id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StageOutCollection')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StageApi#list_stages_by_request\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Return an approval stage by given id
    # Return an approval stage by given id
    # @param id Query by id
    # @param [Hash] opts the optional parameters
    # @return [StageOut]
    def show_stage(id, opts = {})
      data, _status_code, _headers = show_stage_with_http_info(id, opts)
      data
    end

    # Return an approval stage by given id
    # Return an approval stage by given id
    # @param id Query by id
    # @param [Hash] opts the optional parameters
    # @return [Array<(StageOut, Fixnum, Hash)>] StageOut data, response status code and response headers
    def show_stage_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: StageApi.show_stage ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling StageApi.show_stage"
      end
      # resource path
      local_var_path = '/stages/{id}'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = {}

      # header parameters
      header_params = {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = {}

      # http body (model)
      post_body = nil
      auth_names = ['Basic_auth']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => 'StageOut')
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: StageApi#show_stage\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

  end
end
