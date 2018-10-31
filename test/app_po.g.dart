// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app_po.dart';

// **************************************************************************
// PageObjectGenerator
// **************************************************************************

// ignore_for_file: private_collision_in_mixin_application
// ignore_for_file: unused_field, non_constant_identifier_names
// ignore_for_file: overridden_fields, annotate_overrides
class $AppPO extends AppPO with $$AppPO {
  PageLoaderElement $__root__;
  $AppPO.create(PageLoaderElement currentContext) : $__root__ = currentContext {
    $__root__.addCheckers([]);
  }
  factory $AppPO.lookup(PageLoaderSource source) =>
      throw "'lookup' constructor for class "
      "AppPO is not generated and can only be used on Page Object "
      "classes that have @CheckTag annotation.";
  static String get tagName =>
      throw '"tagName" is not defined by Page Object "AppPO". Requires @CheckTag annotation in order for "tagName" to be generated.';
  Function get click {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AppPO', 'click');
    }
    final returnMe = super.click;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AppPO', 'click');
    }
    return returnMe;
  }
}

class $$AppPO {
  PageLoaderElement $__root__;
  PageLoaderMouse __mouse__; // ignore: unused_field
  PageLoaderElement get $root => $__root__;
  PageLoaderElement get _button {
    for (final __listener in $__root__.listeners) {
      __listener.startPageObjectMethod('AppPO', '_button');
    }
    final element = $__root__.createElement(ByClass('getButton'), [], []);
    final returnMe = element;
    for (final __listener in $__root__.listeners) {
      __listener.endPageObjectMethod('AppPO', '_button');
    }
    return returnMe;
  }
}
