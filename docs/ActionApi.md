# ApprovalApiClient::ActionApi

All URIs are relative to *http://localhost/api/approval/v1.0*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create_action**](ActionApi.md#create_action) | **POST** /stages/{stage_id}/actions | Add an action to a given stage
[**list_actions_by_stage**](ActionApi.md#list_actions_by_stage) | **GET** /stages/{stage_id}/actions | Return actions in a given stage
[**show_action**](ActionApi.md#show_action) | **GET** /actions/{id} | Return an user action by id


# **create_action**
> ActionOut create_action(stage_id, action_in)

Add an action to a given stage

Add an action to a given stage

### Example
```ruby
# load the gem
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::ActionApi.new
stage_id = 56 # Integer | Id of stage
action_in = ApprovalApiClient::ActionIn.new # ActionIn | Action object that will be added

begin
  #Add an action to a given stage
  result = api_instance.create_action(stage_id, action_in)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling ActionApi->create_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **Integer**| Id of stage | 
 **action_in** | [**ActionIn**](ActionIn.md)| Action object that will be added | 

### Return type

[**ActionOut**](ActionOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json



# **list_actions_by_stage**
> ActionOutCollection list_actions_by_stage(stage_id)

Return actions in a given stage

List all actions of a stage

### Example
```ruby
# load the gem
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::ActionApi.new
stage_id = 56 # Integer | Id of stage

begin
  #Return actions in a given stage
  result = api_instance.list_actions_by_stage(stage_id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling ActionApi->list_actions_by_stage: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **stage_id** | **Integer**| Id of stage | 

### Return type

[**ActionOutCollection**](ActionOutCollection.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json



# **show_action**
> ActionOut show_action(id)

Return an user action by id

Return an user action by id

### Example
```ruby
# load the gem
require 'approval-api-client-ruby'
# setup authorization
ApprovalApiClient.configure do |config|
  # Configure HTTP basic authorization: Basic_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalApiClient::ActionApi.new
id = 56 # Integer | Query by id

begin
  #Return an user action by id
  result = api_instance.show_action(id)
  p result
rescue ApprovalApiClient::ApiError => e
  puts "Exception when calling ActionApi->show_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **Integer**| Query by id | 

### Return type

[**ActionOut**](ActionOut.md)

### Authorization

[Basic_auth](../README.md#Basic_auth)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



