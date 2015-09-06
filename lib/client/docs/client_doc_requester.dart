part of app;

class ClientDocRequester extends DocRequester {
  Future<String> request(Uri url) async {
    return HttpRequest.getString(url.toString());
  }
}
