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
package WWW::OpenAPIClient::Object::CatalogPriceRule;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use WWW::OpenAPIClient::Object::A2CDateTime;
use WWW::OpenAPIClient::Object::CatalogPriceRuleAction;
use WWW::OpenAPIClient::Object::CouponCondition;

use base ("Class::Accessor", "Class::Data::Inheritable");

#
#
#
# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech). Do not edit the class manually.
# REF: https://openapi-generator.tech
#

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
__PACKAGE__->mk_classdata('attribute_map' => {});
__PACKAGE__->mk_classdata('openapi_types' => {});
__PACKAGE__->mk_classdata('method_documentation' => {});
__PACKAGE__->mk_classdata('class_documentation' => {});

# new plain object
sub new {
    my ($class, %args) = @_;

    my $self = bless {}, $class;

    $self->init(%args);

    return $self;
}

# initialize the object
sub init
{
    my ($self, %args) = @_;

    foreach my $attribute (keys %{$self->attribute_map}) {
        my $args_key = $self->attribute_map->{$attribute};
        $self->$attribute( $args{ $args_key } );
    }
}

# return perl hash
sub to_hash {
    my $self = shift;
    my $_hash = decode_json(JSON->new->convert_blessed->encode($self));

    return $_hash;
}

# used by JSON for serialization
sub TO_JSON {
    my $self = shift;
    my $_data = {};
    foreach my $_key (keys %{$self->attribute_map}) {
        if (defined $self->{$_key}) {
            my $_json_attribute = $self->attribute_map->{$_key};
            my $_type = $self->openapi_types->{$_key};
            my $_value = $self->{$_key};
            if ($_type =~ /^array\[(.+)\]$/i) { # array
                my $_subclass = $1;
                $_data->{$_json_attribute} =  [ map { $self->_to_json_primitives($_subclass, $_) } @$_value ];
            } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
                my $_subclass = $1;
                my %_hash = ();
                while (my($_key, $_element) = each %{$_value}) {
                    $_hash{$_key} = $self->_to_json_primitives($_subclass, $_element);
                }
                $_data->{$_json_attribute} = \%_hash;
            } elsif ( grep( /^$_type$/, ('int', 'double', 'string', 'boolean', 'DATE', 'DATE_TIME'))) {
                $_data->{$_json_attribute} = $self->_to_json_primitives($_type, $_value);
            } else {
                $_data->{$_json_attribute} = $_value;
            }
        }
    }

    return $_data;
}

# to_json non-array data
sub _to_json_primitives {
    my ($self, $type, $data) = @_;
    if ( grep( /^$type$/, ('int', 'double'))) {
        # https://metacpan.org/pod/JSON#simple-scalars
        # numify it, ensuring it will be dumped as a number
        return undef unless defined $data;
        return $data + 0;
    } elsif ($type eq 'string') {
        # https://metacpan.org/pod/JSON#simple-scalars
        # stringified
        return undef unless defined $data;
        return $data . q();
    } elsif ($type eq 'boolean') {
        # https://metacpan.org/pod/JSON#JSON::true,-JSON::false,-JSON::null
        return $data ? \1 : \0;
    } elsif ($type eq 'DATE') {
        return undef unless defined $data;
        if (ref($data) eq 'DateTime') {
            # https://metacpan.org/pod/DateTime#$dt-%3Eymd($optional_separator),-$dt-%3Emdy(...),-$dt-%3Edmy(...)
            return $data->ymd;
        }
        return $data .q();
    } elsif ($type eq 'DATE_TIME') {
        return undef unless defined $data;
        # the date-time notation as defined by RFC 3339, section 5.6, for example, 2017-07-21T17:32:28Z
        if (ref($data) eq 'DateTime') {
            # https://metacpan.org/pod/DateTime#$dt-%3Erfc3339
            return $data->rfc3339;
        }
        return $data .q();
    } else { # hash (model),  In this case, the TO_JSON of the $data object is executed
        return $data;
    }
}

# from Perl hashref
sub from_hash {
    my ($self, $hash) = @_;

    # loop through attributes and use openapi_types to deserialize the data
    while ( my ($_key, $_type) = each %{$self->openapi_types} ) {
        my $_json_attribute = $self->attribute_map->{$_key};
        if ($_type =~ /^array\[(.+)\]$/i) { # array
            my $_subclass = $1;
            my @_array = ();
            foreach my $_element (@{$hash->{$_json_attribute}}) {
                push @_array, $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \@_array;
        } elsif ($_type =~ /^hash\[string,(.+)\]$/i) { # hash
            my $_subclass = $1;
            my %_hash = ();
            while (my($_key, $_element) = each %{$hash->{$_json_attribute}}) {
                $_hash{$_key} = $self->_deserialize($_subclass, $_element);
            }
            $self->{$_key} = \%_hash;
        } elsif (exists $hash->{$_json_attribute}) { #hash(model), primitive, datetime
            $self->{$_key} = $self->_deserialize($_type, $hash->{$_json_attribute});
        } else {
            $log->debugf("Warning: %s (%s) does not exist in input hash\n", $_key, $_json_attribute);
        }
    }

    return $self;
}

# deserialize non-array data
sub _deserialize {
    my ($self, $type, $data) = @_;
    $log->debugf("deserializing %s with %s",Dumper($data), $type);

    if (grep( /^$type$/ , ('DATE_TIME', 'DATE'))) {
        return DateTime->from_epoch(epoch => str2time($data));
    } elsif ( grep( /^$type$/, ('int', 'double'))) {
        return undef unless defined $data;
        return $data + 0;
    } elsif ($type eq 'string') {
        return undef unless defined $data;
        return $data . q();
    } elsif ($type eq 'boolean') {
        return !!$data;
    } else { # hash(model)
        my $_instance = eval "WWW::OpenAPIClient::Object::$type->new()";
        return $_instance->from_hash($data);
    }
}


__PACKAGE__->class_documentation({description => '',
                                  class => 'CatalogPriceRule',
                                  required => [], # TODO
}                                 );

__PACKAGE__->method_documentation({
    'id' => {
        datatype => 'string',
        base_name => 'id',
        description => '',
        format => '',
        read_only => '',
            },
    'gid' => {
        datatype => 'string',
        base_name => 'gid',
        description => '',
        format => '',
        read_only => '',
            },
    'type' => {
        datatype => 'string',
        base_name => 'type',
        description => '',
        format => '',
        read_only => '',
            },
    'name' => {
        datatype => 'string',
        base_name => 'name',
        description => '',
        format => '',
        read_only => '',
            },
    'description' => {
        datatype => 'string',
        base_name => 'description',
        description => '',
        format => '',
        read_only => '',
            },
    'short_description' => {
        datatype => 'string',
        base_name => 'short_description',
        description => '',
        format => '',
        read_only => '',
            },
    'avail' => {
        datatype => 'boolean',
        base_name => 'avail',
        description => '',
        format => '',
        read_only => '',
            },
    'actions' => {
        datatype => 'ARRAY[CatalogPriceRuleAction]',
        base_name => 'actions',
        description => '',
        format => '',
        read_only => '',
            },
    'created_time' => {
        datatype => 'A2CDateTime',
        base_name => 'created_time',
        description => '',
        format => '',
        read_only => '',
            },
    'date_start' => {
        datatype => 'A2CDateTime',
        base_name => 'date_start',
        description => '',
        format => '',
        read_only => '',
            },
    'date_end' => {
        datatype => 'A2CDateTime',
        base_name => 'date_end',
        description => '',
        format => '',
        read_only => '',
            },
    'usage_count' => {
        datatype => 'double',
        base_name => 'usage_count',
        description => '',
        format => '',
        read_only => '',
            },
    'conditions' => {
        datatype => 'ARRAY[CouponCondition]',
        base_name => 'conditions',
        description => '',
        format => '',
        read_only => '',
            },
    'uses_per_order_limit' => {
        datatype => 'int',
        base_name => 'uses_per_order_limit',
        description => '',
        format => '',
        read_only => '',
            },
    'additional_fields' => {
        datatype => 'object',
        base_name => 'additional_fields',
        description => '',
        format => '',
        read_only => '',
            },
    'custom_fields' => {
        datatype => 'object',
        base_name => 'custom_fields',
        description => '',
        format => '',
        read_only => '',
            },
});

__PACKAGE__->openapi_types( {
    'id' => 'string',
    'gid' => 'string',
    'type' => 'string',
    'name' => 'string',
    'description' => 'string',
    'short_description' => 'string',
    'avail' => 'boolean',
    'actions' => 'ARRAY[CatalogPriceRuleAction]',
    'created_time' => 'A2CDateTime',
    'date_start' => 'A2CDateTime',
    'date_end' => 'A2CDateTime',
    'usage_count' => 'double',
    'conditions' => 'ARRAY[CouponCondition]',
    'uses_per_order_limit' => 'int',
    'additional_fields' => 'object',
    'custom_fields' => 'object'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'gid' => 'gid',
    'type' => 'type',
    'name' => 'name',
    'description' => 'description',
    'short_description' => 'short_description',
    'avail' => 'avail',
    'actions' => 'actions',
    'created_time' => 'created_time',
    'date_start' => 'date_start',
    'date_end' => 'date_end',
    'usage_count' => 'usage_count',
    'conditions' => 'conditions',
    'uses_per_order_limit' => 'uses_per_order_limit',
    'additional_fields' => 'additional_fields',
    'custom_fields' => 'custom_fields'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
