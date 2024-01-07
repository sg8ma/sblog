<?php
/**
 * ystandard子テーマの関数
 */
function comment_fields_control($defaults) {
    $defaults['comment_notes_before'] = '';
    $defaults['fields']['email'] = '';
    $defaults['fields']['url'] = '';
    return $defaults;
}
add_filter('comment_form_defaults', 'comment_fields_control');