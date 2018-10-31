import 'dart:async';

import 'package:pageloader/pageloader.dart';

part 'app_po.g.dart';

@PageObject()
abstract class AppPO {

  AppPO();
  factory AppPO.create(PageLoaderElement context) = $AppPO.create;

  @ByClass('getButton')
  PageLoaderElement get _button;

  Function get click => _button.click;
}