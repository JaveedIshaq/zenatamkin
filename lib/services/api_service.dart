import 'package:http/http.dart' as http;
import 'package:logger/logger.dart';
import 'package:zena_tamkin/config/logger.dart';
import 'package:zena_tamkin/helpers/api_base_helper.dart';

/// Api Service Class
class ApiService {
  /// logger instance
  Logger log = getLogger('ApiService');
  final ApiBaseHelper _apiHelper = ApiBaseHelper();

  /// http Client
  http.Client client = http.Client();
}
