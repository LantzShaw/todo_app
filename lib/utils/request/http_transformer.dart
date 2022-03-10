import 'package:dio/dio.dart';

import './http.dart';

/// Response 解析
abstract class HttpTransformer {
  HttpResponse parse(Response response);
}
