import 'dart:io';
import 'dart:async';


main() async {
  var server = await HttpServer.bind(
    InternetAddress.loopbackIPv4,
    8080
  );

  print('server is listening at ${server.port}');

  await for(HttpRequest request in server){
    request.response
      ..write('Hello world!')
      ..close();
  }
}