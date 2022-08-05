import 'package:http/http.dart' as http;

class ApiClient extends http.BaseClient {
  final http.Client _inner;
  final String apiKey;

  ApiClient(this.apiKey, this._inner);

  Future<http.StreamedResponse> send(http.BaseRequest request) {
    request.headers["x-api-key"] = apiKey;
    request.headers["Content-Type"] = "application/json";
    request.headers["Accept"] = "application/json";
    return _inner.send(request);
  }
}
