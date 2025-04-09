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
package WWW::OpenAPIClient::Object::CustomerAddress;

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

use WWW::OpenAPIClient::Object::Country;
use WWW::OpenAPIClient::Object::State;

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
                                  class => 'CustomerAddress',
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
    'type' => {
        datatype => 'string',
        base_name => 'type',
        description => '',
        format => '',
        read_only => '',
            },
    'first_name' => {
        datatype => 'string',
        base_name => 'first_name',
        description => '',
        format => '',
        read_only => '',
            },
    'last_name' => {
        datatype => 'string',
        base_name => 'last_name',
        description => '',
        format => '',
        read_only => '',
            },
    'postcode' => {
        datatype => 'string',
        base_name => 'postcode',
        description => '',
        format => '',
        read_only => '',
            },
    'address1' => {
        datatype => 'string',
        base_name => 'address1',
        description => '',
        format => '',
        read_only => '',
            },
    'address2' => {
        datatype => 'string',
        base_name => 'address2',
        description => '',
        format => '',
        read_only => '',
            },
    'phone' => {
        datatype => 'string',
        base_name => 'phone',
        description => '',
        format => '',
        read_only => '',
            },
    'phone_mobile' => {
        datatype => 'string',
        base_name => 'phone_mobile',
        description => '',
        format => '',
        read_only => '',
            },
    'city' => {
        datatype => 'string',
        base_name => 'city',
        description => '',
        format => '',
        read_only => '',
            },
    'country' => {
        datatype => 'Country',
        base_name => 'country',
        description => '',
        format => '',
        read_only => '',
            },
    'state' => {
        datatype => 'State',
        base_name => 'state',
        description => '',
        format => '',
        read_only => '',
            },
    'company' => {
        datatype => 'string',
        base_name => 'company',
        description => '',
        format => '',
        read_only => '',
            },
    'fax' => {
        datatype => 'string',
        base_name => 'fax',
        description => '',
        format => '',
        read_only => '',
            },
    'website' => {
        datatype => 'string',
        base_name => 'website',
        description => '',
        format => '',
        read_only => '',
            },
    'gender' => {
        datatype => 'string',
        base_name => 'gender',
        description => '',
        format => '',
        read_only => '',
            },
    'region' => {
        datatype => 'string',
        base_name => 'region',
        description => '',
        format => '',
        read_only => '',
            },
    'default' => {
        datatype => 'boolean',
        base_name => 'default',
        description => '',
        format => '',
        read_only => '',
            },
    'tax_id' => {
        datatype => 'string',
        base_name => 'tax_id',
        description => '',
        format => '',
        read_only => '',
            },
    'identification_number' => {
        datatype => 'string',
        base_name => 'identification_number',
        description => '',
        format => '',
        read_only => '',
            },
    'alias' => {
        datatype => 'string',
        base_name => 'alias',
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
    'type' => 'string',
    'first_name' => 'string',
    'last_name' => 'string',
    'postcode' => 'string',
    'address1' => 'string',
    'address2' => 'string',
    'phone' => 'string',
    'phone_mobile' => 'string',
    'city' => 'string',
    'country' => 'Country',
    'state' => 'State',
    'company' => 'string',
    'fax' => 'string',
    'website' => 'string',
    'gender' => 'string',
    'region' => 'string',
    'default' => 'boolean',
    'tax_id' => 'string',
    'identification_number' => 'string',
    'alias' => 'string',
    'additional_fields' => 'object',
    'custom_fields' => 'object'
} );

__PACKAGE__->attribute_map( {
    'id' => 'id',
    'type' => 'type',
    'first_name' => 'first_name',
    'last_name' => 'last_name',
    'postcode' => 'postcode',
    'address1' => 'address1',
    'address2' => 'address2',
    'phone' => 'phone',
    'phone_mobile' => 'phone_mobile',
    'city' => 'city',
    'country' => 'country',
    'state' => 'state',
    'company' => 'company',
    'fax' => 'fax',
    'website' => 'website',
    'gender' => 'gender',
    'region' => 'region',
    'default' => 'default',
    'tax_id' => 'tax_id',
    'identification_number' => 'identification_number',
    'alias' => 'alias',
    'additional_fields' => 'additional_fields',
    'custom_fields' => 'custom_fields'
} );

__PACKAGE__->mk_accessors(keys %{__PACKAGE__->attribute_map});


1;
