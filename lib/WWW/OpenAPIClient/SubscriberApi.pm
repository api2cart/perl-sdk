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
package WWW::OpenAPIClient::SubscriberApi;

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
# subscriber_list
#
# subscriber.list
#
# @param int $start This parameter sets the number from which you want to get entities (optional, default to 0)
# @param int $count This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250 (optional, default to 10)
# @param boolean $subscribed Filter by subscription status (optional)
# @param string $store_id Store Id (optional)
# @param string $email Filter subscribers by email (optional)
# @param string $params Set this parameter in order to choose which entity fields you want to retrieve (optional, default to 'force_all')
# @param string $exclude Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all (optional)
# @param string $created_from Retrieve entities from their creation date (optional)
# @param string $created_to Retrieve entities to their creation date (optional)
# @param string $modified_from Retrieve entities from their modification date (optional)
# @param string $modified_to Retrieve entities to their modification date (optional)
# @param string $page_cursor Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter) (optional)
# @param string $response_fields Set this parameter in order to choose which entity fields you want to retrieve (optional)
{
    my $params = {
    'start' => {
        data_type => 'int',
        description => 'This parameter sets the number from which you want to get entities',
        required => '0',
    },
    'count' => {
        data_type => 'int',
        description => 'This parameter sets the entity amount that has to be retrieved. Max allowed count&#x3D;250',
        required => '0',
    },
    'subscribed' => {
        data_type => 'boolean',
        description => 'Filter by subscription status',
        required => '0',
    },
    'store_id' => {
        data_type => 'string',
        description => 'Store Id',
        required => '0',
    },
    'email' => {
        data_type => 'string',
        description => 'Filter subscribers by email',
        required => '0',
    },
    'params' => {
        data_type => 'string',
        description => 'Set this parameter in order to choose which entity fields you want to retrieve',
        required => '0',
    },
    'exclude' => {
        data_type => 'string',
        description => 'Set this parameter in order to choose which entity fields you want to ignore. Works only if parameter &#x60;params&#x60; equal force_all',
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
    'modified_from' => {
        data_type => 'string',
        description => 'Retrieve entities from their modification date',
        required => '0',
    },
    'modified_to' => {
        data_type => 'string',
        description => 'Retrieve entities to their modification date',
        required => '0',
    },
    'page_cursor' => {
        data_type => 'string',
        description => 'Used to retrieve entities via cursor-based pagination (it can&#39;t be used with any other filtering parameter)',
        required => '0',
    },
    'response_fields' => {
        data_type => 'string',
        description => 'Set this parameter in order to choose which entity fields you want to retrieve',
        required => '0',
    },
    };
    __PACKAGE__->method_documentation->{ 'subscriber_list' } = {
        summary => 'subscriber.list',
        params => $params,
        returns => 'ModelResponseSubscriberList',
        };
}
# @return ModelResponseSubscriberList
#
sub subscriber_list {
    my ($self, %args) = @_;

    # parse inputs
    my $_resource_path = '/subscriber.list.json';

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
    if ( exists $args{'start'}) {
        $query_params->{'start'} = $self->{api_client}->to_query_value($args{'start'});
    }

    # query params
    if ( exists $args{'count'}) {
        $query_params->{'count'} = $self->{api_client}->to_query_value($args{'count'});
    }

    # query params
    if ( exists $args{'subscribed'}) {
        $query_params->{'subscribed'} = $self->{api_client}->to_query_value($args{'subscribed'});
    }

    # query params
    if ( exists $args{'store_id'}) {
        $query_params->{'store_id'} = $self->{api_client}->to_query_value($args{'store_id'});
    }

    # query params
    if ( exists $args{'email'}) {
        $query_params->{'email'} = $self->{api_client}->to_query_value($args{'email'});
    }

    # query params
    if ( exists $args{'params'}) {
        $query_params->{'params'} = $self->{api_client}->to_query_value($args{'params'});
    }

    # query params
    if ( exists $args{'exclude'}) {
        $query_params->{'exclude'} = $self->{api_client}->to_query_value($args{'exclude'});
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
    if ( exists $args{'modified_from'}) {
        $query_params->{'modified_from'} = $self->{api_client}->to_query_value($args{'modified_from'});
    }

    # query params
    if ( exists $args{'modified_to'}) {
        $query_params->{'modified_to'} = $self->{api_client}->to_query_value($args{'modified_to'});
    }

    # query params
    if ( exists $args{'page_cursor'}) {
        $query_params->{'page_cursor'} = $self->{api_client}->to_query_value($args{'page_cursor'});
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
    my $_response_object = $self->{api_client}->deserialize('ModelResponseSubscriberList', $response);
    return $_response_object;
}

1;
