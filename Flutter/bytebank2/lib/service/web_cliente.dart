
import 'package:bytebank2/service/interceptors/logging-interceptor.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:http/http.dart';


Client client =
    HttpClientWithInterceptor.build(interceptors: [LoggingInterceptor()]);
const String urlApi = 'http://192.168.15.4:8080/transactions';
