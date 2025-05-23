=begin comment

API2Cart OpenAPI

API2Cart

The version of the OpenAPI document: 1.1
Contact: contact@api2cart.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# Do not edit the class manually.
# Ref: https://openapi-generator.tech
#
package WWW::OpenAPIClient::BatchApi;

require 5.6.0;
use strict;
use warnings;
use utf8;
use Exporter;
use Carp qw( croak );
use Log::Any qw($log);

use WWW::OpenAPIClient::ApiClient;

use base "Class::Data::Inheritable";

__PACKAGE__->mk_classdata('method_documentation' => {});

sub new {
    my $class = shift;
    my $api_client;

    if ($_[0] && ref $_[0] && ref $_[0] eq 'WWW::OpenAPIClient::ApiClient' ) {
        $api_client = $_[0];
    } else {
        $api_client = WWW::OpenAPIClient::ApiClient->new(@_);
    }

    bless { api_client => $api_client }, $class;

}


#
# batch_job_list
#
# batch.job.list
#
# @param int $count This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (optional, default to 10)
# @param string $page_cursor Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) (optional)
# @param string $ids Filter batch jobs by ids (optional)
# @param string $created_from Retrieve entities from their creation date (optional)
# @param string $created_to Retrieve entities to their creation date (optional)
# @param string $processed_from Retrieve entities according to their processing datetime (optional)
# @param string $processed_to Retrieve entities according to their processing datetime (optional)
# @param string $response_fields Set this parameter in order to choose which entity fields you want to retrieve (optional, default to '{return_code,return_message,pagination,result}')
{
    my $params = {
    'count' => {
        data_type => 'int',
        description => 'This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250',
        required => '0',
    },
    'page_cursor' => {
        data_type => 'string',
        description => 'Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter)',
        required => '0',
    },
    'ids' => {
        data_type => 'string',
        description => 'Filter batch jobs by ids',
        required => '0',
    },
    'created_from' => {
        data_type => 'string',
        description => 'Retrieve entities from their creation date',
        required => '0',
    },
    'created_to' => {
        data_type => 'string',
        description => 'Retrieve entities to their creation date',
        required => '0',
    },
    'processed_from' => {
        data_type => 'string',
        description => 'Retrieve entities according to their processing datetime',
        required => '0',
    },
    'processed_to' => {
        data_type => 'string',
        description => 'Retrieve entities according to their processing datetime',
        required => '0',
    },
    'response_fields' => {
        data_type => 'string',
        description => 'Set this parameter in order to choose which entity fields you want to retrieve',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'batch_job_list' } = {
        summary => 'batch.job.list',
        params => $params,
        returns => 'ModelResponseBatchJobList',
        };
}
# @return ModelResponseBatchJobList
#
sub batch_job_list {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/batch.job.list.json';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'count'}) {
        $query_params->{'count'} = $self->{api_client}->to_query_value($args{'count'});
    }

    # query params
    if ( exists $args{'page_cursor'}) {
        $query_params->{'page_cursor'} = $self->{api_client}->to_query_value($args{'page_cursor'});
    }

    # query params
    if ( exists $args{'ids'}) {
        $query_params->{'ids'} = $self->{api_client}->to_query_value($args{'ids'});
    }

    # query params
    if ( exists $args{'created_from'}) {
        $query_params->{'created_from'} = $self->{api_client}->to_query_value($args{'created_from'});
    }

    # query params
    if ( exists $args{'created_to'}) {
        $query_params->{'created_to'} = $self->{api_client}->to_query_value($args{'created_to'});
    }

    # query params
    if ( exists $args{'processed_from'}) {
        $query_params->{'processed_from'} = $self->{api_client}->to_query_value($args{'processed_from'});
    }

    # query params
    if ( exists $args{'processed_to'}) {
        $query_params->{'processed_to'} = $self->{api_client}->to_query_value($args{'processed_to'});
    }

    # query params
    if ( exists $args{'response_fields'}) {
        $query_params->{'response_fields'} = $self->{api_client}->to_query_value($args{'response_fields'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(StoreKeyAuth ApiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ModelResponseBatchJobList', $response);
    return $_response_object;
}

#
# batch_job_result
#
# batch.job.result
#
# @param string $id Entity id (required)
{
    my $params = {
    'id' => {
        data_type => 'string',
        description => 'Entity id',
        required => '1',
    },
    };
    __PACKAGE__->method_documentation->{ 'batch_job_result' } = {
        summary => 'batch.job.result',
        params => $params,
        returns => 'ResponseBatchJobResult',
        };
}
# @return ResponseBatchJobResult
#
sub batch_job_result {
    my ($self, %args) = @_;

    # verify the required parameter 'id' is set
    unless (exists $args{'id'}) {
      croak("Missing the required parameter 'id' when calling batch_job_result");
    }

    # parse inputs
    my $_resource_path = '/batch.job.result.json';

    my $_method = 'GET';
    my $query_params = {};
    my $header_params = {};
    my $form_params = {};

    # 'Accept' and 'Content-Type' header
    my $_header_accept = $self->{api_client}->select_header_accept('application/json');
    if ($_header_accept) {
        $header_params->{'Accept'} = $_header_accept;
    }
    $header_params->{'Content-Type'} = $self->{api_client}->select_header_content_type();

    # query params
    if ( exists $args{'id'}) {
        $query_params->{'id'} = $self->{api_client}->to_query_value($args{'id'});
    }

    my $_body_data;
    # authentication setting, if any
    my $auth_settings = [qw(StoreKeyAuth ApiKeyAuth )];

    # make the API Call
    my $response = $self->{api_client}->call_api($_resource_path, $_method,
                                           $query_params, $form_params,
                                           $header_params, $_body_data, $auth_settings);
    if (!$response) {
        return;
    }
    my $_response_object = $self->{api_client}->deserialize('ResponseBatchJobResult', $response);
    return $_response_object;
}

1;
