part of app;

class ServerDocRequester extends DocRequester {
  HttpClient _client = new HttpClient();

  Future<String> request(Uri url) async {
    HttpClientResponse response = await _client.getUrl(url).then((r) => r.close());
    return (await response.toList()).map((ln) => UTF8.decode(ln)).join('\n');
  }
}
