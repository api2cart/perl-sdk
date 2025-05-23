=begin comment

API2Cart OpenAPI

API2Cart

The version of the OpenAPI document: 1.1
Contact: contact@api2cart.com
Generated by: https://openapi-generator.tech

=end comment

=cut

#
# NOTE: This class is auto generated by OpenAPI Generator
# Please update the test cases below to test the API endpoints.
# Ref: https://openapi-generator.tech
#
use Test::More;
use Test::Exception;

use lib 'lib';
use strict;
use warnings;

use_ok('WWW::OpenAPIClient::AttributeApi');

my $api = WWW::OpenAPIClient::AttributeApi->new();
isa_ok($api, 'WWW::OpenAPIClient::AttributeApi');

#
# attribute_add test
#
# uncomment below and update the test
#my $attribute_add_type = undef; # replace NULL with a proper value
#my $attribute_add_name = undef; # replace NULL with a proper value
#my $attribute_add_code = undef; # replace NULL with a proper value
#my $attribute_add_store_id = undef; # replace NULL with a proper value
#my $attribute_add_lang_id = undef; # replace NULL with a proper value
#my $attribute_add_visible = undef; # replace NULL with a proper value
#my $attribute_add_required = undef; # replace NULL with a proper value
#my $attribute_add_position = undef; # replace NULL with a proper value
#my $attribute_add_attribute_group_id = undef; # replace NULL with a proper value
#my $attribute_add_is_global = undef; # replace NULL with a proper value
#my $attribute_add_is_searchable = undef; # replace NULL with a proper value
#my $attribute_add_is_filterable = undef; # replace NULL with a proper value
#my $attribute_add_is_comparable = undef; # replace NULL with a proper value
#my $attribute_add_is_html_allowed_on_front = undef; # replace NULL with a proper value
#my $attribute_add_is_filterable_in_search = undef; # replace NULL with a proper value
#my $attribute_add_is_configurable = undef; # replace NULL with a proper value
#my $attribute_add_is_visible_in_advanced_search = undef; # replace NULL with a proper value
#my $attribute_add_is_used_for_promo_rules = undef; # replace NULL with a proper value
#my $attribute_add_used_in_product_listing = undef; # replace NULL with a proper value
#my $attribute_add_used_for_sort_by = undef; # replace NULL with a proper value
#my $attribute_add_apply_to = undef; # replace NULL with a proper value
#my $attribute_add_result = $api->attribute_add(type => $attribute_add_type, name => $attribute_add_name, code => $attribute_add_code, store_id => $attribute_add_store_id, lang_id => $attribute_add_lang_id, visible => $attribute_add_visible, required => $attribute_add_required, position => $attribute_add_position, attribute_group_id => $attribute_add_attribute_group_id, is_global => $attribute_add_is_global, is_searchable => $attribute_add_is_searchable, is_filterable => $attribute_add_is_filterable, is_comparable => $attribute_add_is_comparable, is_html_allowed_on_front => $attribute_add_is_html_allowed_on_front, is_filterable_in_search => $attribute_add_is_filterable_in_search, is_configurable => $attribute_add_is_configurable, is_visible_in_advanced_search => $attribute_add_is_visible_in_advanced_search, is_used_for_promo_rules => $attribute_add_is_used_for_promo_rules, used_in_product_listing => $attribute_add_used_in_product_listing, used_for_sort_by => $attribute_add_used_for_sort_by, apply_to => $attribute_add_apply_to);

#
# attribute_assign_group test
#
# uncomment below and update the test
#my $attribute_assign_group_id = undef; # replace NULL with a proper value
#my $attribute_assign_group_group_id = undef; # replace NULL with a proper value
#my $attribute_assign_group_attribute_set_id = undef; # replace NULL with a proper value
#my $attribute_assign_group_result = $api->attribute_assign_group(id => $attribute_assign_group_id, group_id => $attribute_assign_group_group_id, attribute_set_id => $attribute_assign_group_attribute_set_id);

#
# attribute_assign_set test
#
# uncomment below and update the test
#my $attribute_assign_set_id = undef; # replace NULL with a proper value
#my $attribute_assign_set_attribute_set_id = undef; # replace NULL with a proper value
#my $attribute_assign_set_group_id = undef; # replace NULL with a proper value
#my $attribute_assign_set_result = $api->attribute_assign_set(id => $attribute_assign_set_id, attribute_set_id => $attribute_assign_set_attribute_set_id, group_id => $attribute_assign_set_group_id);

#
# attribute_attributeset_list test
#
# uncomment below and update the test
#my $attribute_attributeset_list_start = undef; # replace NULL with a proper value
#my $attribute_attributeset_list_count = undef; # replace NULL with a proper value
#my $attribute_attributeset_list_response_fields = undef; # replace NULL with a proper value
#my $attribute_attributeset_list_params = undef; # replace NULL with a proper value
#my $attribute_attributeset_list_exclude = undef; # replace NULL with a proper value
#my $attribute_attributeset_list_result = $api->attribute_attributeset_list(start => $attribute_attributeset_list_start, count => $attribute_attributeset_list_count, response_fields => $attribute_attributeset_list_response_fields, params => $attribute_attributeset_list_params, exclude => $attribute_attributeset_list_exclude);

#
# attribute_count test
#
# uncomment below and update the test
#my $attribute_count_type = undef; # replace NULL with a proper value
#my $attribute_count_attribute_set_id = undef; # replace NULL with a proper value
#my $attribute_count_store_id = undef; # replace NULL with a proper value
#my $attribute_count_lang_id = undef; # replace NULL with a proper value
#my $attribute_count_visible = undef; # replace NULL with a proper value
#my $attribute_count_required = undef; # replace NULL with a proper value
#my $attribute_count_system = undef; # replace NULL with a proper value
#my $attribute_count_result = $api->attribute_count(type => $attribute_count_type, attribute_set_id => $attribute_count_attribute_set_id, store_id => $attribute_count_store_id, lang_id => $attribute_count_lang_id, visible => $attribute_count_visible, required => $attribute_count_required, system => $attribute_count_system);

#
# attribute_delete test
#
# uncomment below and update the test
#my $attribute_delete_id = undef; # replace NULL with a proper value
#my $attribute_delete_store_id = undef; # replace NULL with a proper value
#my $attribute_delete_result = $api->attribute_delete(id => $attribute_delete_id, store_id => $attribute_delete_store_id);

#
# attribute_group_list test
#
# uncomment below and update the test
#my $attribute_group_list_start = undef; # replace NULL with a proper value
#my $attribute_group_list_count = undef; # replace NULL with a proper value
#my $attribute_group_list_attribute_set_id = undef; # replace NULL with a proper value
#my $attribute_group_list_lang_id = undef; # replace NULL with a proper value
#my $attribute_group_list_response_fields = undef; # replace NULL with a proper value
#my $attribute_group_list_params = undef; # replace NULL with a proper value
#my $attribute_group_list_exclude = undef; # replace NULL with a proper value
#my $attribute_group_list_result = $api->attribute_group_list(start => $attribute_group_list_start, count => $attribute_group_list_count, attribute_set_id => $attribute_group_list_attribute_set_id, lang_id => $attribute_group_list_lang_id, response_fields => $attribute_group_list_response_fields, params => $attribute_group_list_params, exclude => $attribute_group_list_exclude);

#
# attribute_info test
#
# uncomment below and update the test
#my $attribute_info_id = undef; # replace NULL with a proper value
#my $attribute_info_attribute_set_id = undef; # replace NULL with a proper value
#my $attribute_info_store_id = undef; # replace NULL with a proper value
#my $attribute_info_lang_id = undef; # replace NULL with a proper value
#my $attribute_info_response_fields = undef; # replace NULL with a proper value
#my $attribute_info_params = undef; # replace NULL with a proper value
#my $attribute_info_exclude = undef; # replace NULL with a proper value
#my $attribute_info_result = $api->attribute_info(id => $attribute_info_id, attribute_set_id => $attribute_info_attribute_set_id, store_id => $attribute_info_store_id, lang_id => $attribute_info_lang_id, response_fields => $attribute_info_response_fields, params => $attribute_info_params, exclude => $attribute_info_exclude);

#
# attribute_list test
#
# uncomment below and update the test
#my $attribute_list_start = undef; # replace NULL with a proper value
#my $attribute_list_count = undef; # replace NULL with a proper value
#my $attribute_list_attribute_ids = undef; # replace NULL with a proper value
#my $attribute_list_attribute_set_id = undef; # replace NULL with a proper value
#my $attribute_list_store_id = undef; # replace NULL with a proper value
#my $attribute_list_lang_id = undef; # replace NULL with a proper value
#my $attribute_list_type = undef; # replace NULL with a proper value
#my $attribute_list_visible = undef; # replace NULL with a proper value
#my $attribute_list_required = undef; # replace NULL with a proper value
#my $attribute_list_system = undef; # replace NULL with a proper value
#my $attribute_list_response_fields = undef; # replace NULL with a proper value
#my $attribute_list_params = undef; # replace NULL with a proper value
#my $attribute_list_exclude = undef; # replace NULL with a proper value
#my $attribute_list_result = $api->attribute_list(start => $attribute_list_start, count => $attribute_list_count, attribute_ids => $attribute_list_attribute_ids, attribute_set_id => $attribute_list_attribute_set_id, store_id => $attribute_list_store_id, lang_id => $attribute_list_lang_id, type => $attribute_list_type, visible => $attribute_list_visible, required => $attribute_list_required, system => $attribute_list_system, response_fields => $attribute_list_response_fields, params => $attribute_list_params, exclude => $attribute_list_exclude);

#
# attribute_type_list test
#
# uncomment below and update the test
#my $attribute_type_list_result = $api->attribute_type_list();

#
# attribute_unassign_group test
#
# uncomment below and update the test
#my $attribute_unassign_group_id = undef; # replace NULL with a proper value
#my $attribute_unassign_group_group_id = undef; # replace NULL with a proper value
#my $attribute_unassign_group_result = $api->attribute_unassign_group(id => $attribute_unassign_group_id, group_id => $attribute_unassign_group_group_id);

#
# attribute_unassign_set test
#
# uncomment below and update the test
#my $attribute_unassign_set_id = undef; # replace NULL with a proper value
#my $attribute_unassign_set_attribute_set_id = undef; # replace NULL with a proper value
#my $attribute_unassign_set_result = $api->attribute_unassign_set(id => $attribute_unassign_set_id, attribute_set_id => $attribute_unassign_set_attribute_set_id);

#
# attribute_update test
#
# uncomment below and update the test
#my $attribute_update_id = undef; # replace NULL with a proper value
#my $attribute_update_name = undef; # replace NULL with a proper value
#my $attribute_update_store_id = undef; # replace NULL with a proper value
#my $attribute_update_lang_id = undef; # replace NULL with a proper value
#my $attribute_update_result = $api->attribute_update(id => $attribute_update_id, name => $attribute_update_name, store_id => $attribute_update_store_id, lang_id => $attribute_update_lang_id);

#
# attribute_value_add test
#
# uncomment below and update the test
#my $attribute_value_add_attribute_id = undef; # replace NULL with a proper value
#my $attribute_value_add_name = undef; # replace NULL with a proper value
#my $attribute_value_add_code = undef; # replace NULL with a proper value
#my $attribute_value_add_description = undef; # replace NULL with a proper value
#my $attribute_value_add_store_id = undef; # replace NULL with a proper value
#my $attribute_value_add_lang_id = undef; # replace NULL with a proper value
#my $attribute_value_add_result = $api->attribute_value_add(attribute_id => $attribute_value_add_attribute_id, name => $attribute_value_add_name, code => $attribute_value_add_code, description => $attribute_value_add_description, store_id => $attribute_value_add_store_id, lang_id => $attribute_value_add_lang_id);

#
# attribute_value_delete test
#
# uncomment below and update the test
#my $attribute_value_delete_id = undef; # replace NULL with a proper value
#my $attribute_value_delete_attribute_id = undef; # replace NULL with a proper value
#my $attribute_value_delete_store_id = undef; # replace NULL with a proper value
#my $attribute_value_delete_result = $api->attribute_value_delete(id => $attribute_value_delete_id, attribute_id => $attribute_value_delete_attribute_id, store_id => $attribute_value_delete_store_id);

#
# attribute_value_update test
#
# uncomment below and update the test
#my $attribute_value_update_id = undef; # replace NULL with a proper value
#my $attribute_value_update_attribute_id = undef; # replace NULL with a proper value
#my $attribute_value_update_name = undef; # replace NULL with a proper value
#my $attribute_value_update_description = undef; # replace NULL with a proper value
#my $attribute_value_update_code = undef; # replace NULL with a proper value
#my $attribute_value_update_store_id = undef; # replace NULL with a proper value
#my $attribute_value_update_lang_id = undef; # replace NULL with a proper value
#my $attribute_value_update_result = $api->attribute_value_update(id => $attribute_value_update_id, attribute_id => $attribute_value_update_attribute_id, name => $attribute_value_update_name, description => $attribute_value_update_description, code => $attribute_value_update_code, store_id => $attribute_value_update_store_id, lang_id => $attribute_value_update_lang_id);


done_testing();
