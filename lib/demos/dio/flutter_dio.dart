import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:xpath/xpath.dart';

class DioExercise extends StatefulWidget {
  @override
  _DioExerciseState createState() => _DioExerciseState();
}

String captchaStr;
Uint8List bytes;

String _base64;

class _DioExerciseState extends State<DioExercise> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Dio"),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            IconButton(
                icon: Icon(Icons.file_download),
                onPressed: () {
                  v2exLogin();
                }),
            bytes != null ? Image.memory(bytes) : Text("null")
          ],
        ),
      ),
    );
  }

  Future v2exLogin() async {
    var dio = new Dio();
    dio.options.headers = {
      'user-agent':
          'Mozilla/5.0 (iPhone; CPU iPhone OS 10_3_1 like Mac OS X) AppleWebKit/603.1.30 (KHTML, like Gecko) Version/10.0 Mobile/14E304 Safari/602.1'
    };
    var response = await dio.get("https://www.v2ex.com/signin");
    print(response.data);
    var tree = ETree.fromString(response.data);

    var username = tree
        .xpath("//*[@id='Wrapper']/div/div[1]/div[2]/form/table/tr[1]/td[2]/input[@class='sl']")
        .first
        .attributes["name"];
    var password = tree
        .xpath("//*[@id='Wrapper']/div/div[1]/div[2]/form/table/tr[2]/td[2]/input[@class='sl']")
        .first
        .attributes["name"];
    var captcha = tree
        .xpath("//*[@id='Wrapper']/div/div[1]/div[2]/form/table/tr[4]/td[2]/input[@class='sl']")
        .first
        .attributes["name"];

    var once = tree
        .xpath("//*[@id='Wrapper']/div/div[1]/div[2]/form/table/tr[2]/td[2]/input[@name='once']")
        .first
        .attributes["value"];

    print(username + "\n" + password + "\n" + captcha + "\n" + once);

    dio.options.responseType = ResponseType.STREAM;
    response = await dio.get("https://www.v2ex.com/_captcha?once=" + once);

    print(response.data);
    var uint8list = await consolidateHttpClientResponseBytes(response.data);
    if (uint8list.lengthInBytes == 0) throw new Exception('NetworkImage is an empty file');
    this.setState(() {
      bytes = uint8list;
    });
  }
}

main() async {
  var dio = new Dio();
  dio.options.baseUrl = "http://www.dtworkroom.com/doris/1/2.0.0/";
  dio.options.connectTimeout = 5000; //5s
  dio.options.receiveTimeout = 5000;
  dio.options.headers = {'user-agent': 'dio', 'common-header': 'xx'};

  var u =
      new Uri(scheme: "https", host: "www.baidu.com", queryParameters: {"xx": "xx", "yy": "dd"});

  print(u);

  // Add request interceptor
  dio.interceptor.request.onSend = (Options options) async {
    // return ds.resolve(new Response(data:"xxx"));
    // return ds.reject(new DioError(message: "eh"));
    return options;
  };

  Response response = await dio.get("https://www.baidu.com/");
  print(response.data);

  // Download a file
  response =
      await dio.download("https://www.baidu.com/", "./xx.html", onProgress: (received, total) {
    print('$received,$total');
  });

  // Create a FormData
  FormData formData = new FormData.from({
    "name": "wendux",
    "age": 25,
    "file": new UploadFileInfo(new File("./example/upload.txt"), "upload.txt")
  });

  // Send FormData
  response = await dio.post("/test", data: formData);
  print(response);

  response = await dio.post(
    "/test",
    data: {
      "id": 8,
      "info": {"name": "wendux", "age": 25}
    },
    // Send data with "application/x-www-form-urlencoded" format
    options: new Options(contentType: ContentType.parse("application/x-www-form-urlencoded")),
  );
  print(response.data);
}
