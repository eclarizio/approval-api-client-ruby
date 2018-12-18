# approval_api_client

ApprovalAPIClient - the Ruby gem for the Insights Service Approval APIs

APIs to query approval service

This SDK is automatically generated by the [Swagger Codegen](https://github.com/swagger-api/swagger-codegen) project:

- API version: 1.0.0
- Package version: 1.0.0
- Build package: io.swagger.codegen.languages.RubyClientCodegen

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build approval_api_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./approval_api_client-1.0.0.gem
```
(for development, run `gem install --dev ./approval_api_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'approval_api_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'approval_api_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:
```ruby
# Load the gem
require 'approval_api_client'

# Setup authorization
ApprovalAPIClient.configure do |config|
  # Configure API key authorization: APIKey_auth
  config.api_key['x-rh-auth-identity'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['x-rh-auth-identity'] = 'Bearer'

  # Configure HTTP basic authorization: approval_auth
  config.username = 'YOUR USERNAME'
  config.password = 'YOUR PASSWORD'
end

api_instance = ApprovalAPIClient::AdminsApi.new

stage_id = 56 # Integer | Id of stage

body = ApprovalAPIClient::Action.new # Action | Action object that will be added


begin
  #Add an action to a given stage
  result = api_instance.add_action(stage_id, body)
  p result
rescue ApprovalAPIClient::ApiError => e
  puts "Exception when calling AdminsApi->add_action: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *http://localhost:3000*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*ApprovalAPIClient::AdminsApi* | [**add_action**](docs/AdminsApi.md#add_action) | **POST** /stages/{stage_id}/actions | Add an action to a given stage
*ApprovalAPIClient::AdminsApi* | [**add_group**](docs/AdminsApi.md#add_group) | **POST** /groups | Add a new approver group by given parameters
*ApprovalAPIClient::AdminsApi* | [**add_workflow**](docs/AdminsApi.md#add_workflow) | **POST** /templates/{template_id}/workflows | Add a workflow by given template id
*ApprovalAPIClient::AdminsApi* | [**fetch_action_by_id**](docs/AdminsApi.md#fetch_action_by_id) | **GET** /actions/{id} | Return an approver action by id
*ApprovalAPIClient::AdminsApi* | [**fetch_actions**](docs/AdminsApi.md#fetch_actions) | **GET** /actions | Return a list of approver actions
*ApprovalAPIClient::AdminsApi* | [**fetch_group_by_id**](docs/AdminsApi.md#fetch_group_by_id) | **GET** /groups/{id} | Return approver group by given id
*ApprovalAPIClient::AdminsApi* | [**fetch_groups**](docs/AdminsApi.md#fetch_groups) | **GET** /groups | Return all approver groups
*ApprovalAPIClient::AdminsApi* | [**fetch_requests**](docs/AdminsApi.md#fetch_requests) | **GET** /requests | Return an array of approval requests
*ApprovalAPIClient::AdminsApi* | [**fetch_stage_by_id**](docs/AdminsApi.md#fetch_stage_by_id) | **GET** /stages/{id} | Return an approval stage by given id
*ApprovalAPIClient::AdminsApi* | [**fetch_stages**](docs/AdminsApi.md#fetch_stages) | **GET** /stages | Return all approval stages
*ApprovalAPIClient::AdminsApi* | [**fetch_template_by_id**](docs/AdminsApi.md#fetch_template_by_id) | **GET** /templates/{id} | Return a template by given id
*ApprovalAPIClient::AdminsApi* | [**fetch_template_workflows**](docs/AdminsApi.md#fetch_template_workflows) | **GET** /templates/{template_id}/workflows | Return an array of workflows by given template id
*ApprovalAPIClient::AdminsApi* | [**fetch_templates**](docs/AdminsApi.md#fetch_templates) | **GET** /templates | Return all templates
*ApprovalAPIClient::AdminsApi* | [**fetch_workflow_by_id**](docs/AdminsApi.md#fetch_workflow_by_id) | **GET** /workflows/{id} | Return an approval workflow by given id
*ApprovalAPIClient::AdminsApi* | [**fetch_workflow_requests**](docs/AdminsApi.md#fetch_workflow_requests) | **GET** /workflows/{workflow_id}/requests | Return approval requests by given workflow id
*ApprovalAPIClient::AdminsApi* | [**fetch_workflows**](docs/AdminsApi.md#fetch_workflows) | **GET** /workflows | Return all approval workflows
*ApprovalAPIClient::AdminsApi* | [**remove_group**](docs/AdminsApi.md#remove_group) | **DELETE** /groups/{id} | Delete approver group by given id
*ApprovalAPIClient::AdminsApi* | [**remove_workflow**](docs/AdminsApi.md#remove_workflow) | **DELETE** /workflows/{id} | Delete approval workflow by given id
*ApprovalAPIClient::AdminsApi* | [**update_group**](docs/AdminsApi.md#update_group) | **PATCH** /groups/{id} | Update an approver group by given id
*ApprovalAPIClient::AdminsApi* | [**update_workflow**](docs/AdminsApi.md#update_workflow) | **PATCH** /workflows/{id} | Update an approval workflow by given id
*ApprovalAPIClient::ApproversApi* | [**add_action**](docs/ApproversApi.md#add_action) | **POST** /stages/{stage_id}/actions | Add an action to a given stage
*ApprovalAPIClient::ApproversApi* | [**fetch_action_by_id**](docs/ApproversApi.md#fetch_action_by_id) | **GET** /actions/{id} | Return an approver action by id
*ApprovalAPIClient::ApproversApi* | [**fetch_actions**](docs/ApproversApi.md#fetch_actions) | **GET** /actions | Return a list of approver actions
*ApprovalAPIClient::ApproversApi* | [**fetch_stage_by_id**](docs/ApproversApi.md#fetch_stage_by_id) | **GET** /stages/{id} | Return an approval stage by given id
*ApprovalAPIClient::UsersApi* | [**add_request**](docs/UsersApi.md#add_request) | **POST** /workflows/{workflow_id}/requests | Add an approval request by given parameters
*ApprovalAPIClient::UsersApi* | [**fetch_request_by_id**](docs/UsersApi.md#fetch_request_by_id) | **GET** /requests/{id} | Return an approval request by given id
*ApprovalAPIClient::UsersApi* | [**fetch_request_stages**](docs/UsersApi.md#fetch_request_stages) | **GET** /requests/{request_id}/stages | Return an array of stages by given request id


## Documentation for Models

 - [ApprovalAPIClient::Action](docs/Action.md)
 - [ApprovalAPIClient::Decision](docs/Decision.md)
 - [ApprovalAPIClient::Group](docs/Group.md)
 - [ApprovalAPIClient::Operation](docs/Operation.md)
 - [ApprovalAPIClient::Request](docs/Request.md)
 - [ApprovalAPIClient::Stage](docs/Stage.md)
 - [ApprovalAPIClient::State](docs/State.md)
 - [ApprovalAPIClient::Template](docs/Template.md)
 - [ApprovalAPIClient::Workflow](docs/Workflow.md)
 - [ApprovalAPIClient::WorkflowGroups](docs/WorkflowGroups.md)


## Documentation for Authorization


### APIKey_auth

- **Type**: API key
- **API key parameter name**: x-rh-auth-identity
- **Location**: HTTP header

### approval_auth

- **Type**: HTTP basic authentication

