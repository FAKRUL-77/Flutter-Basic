// import 'dart:convert';

// void main(){
//   var rawJson = '{"url": "Http://blah.jpg", "id":1}';

//   var parsedJson = json.decode(rawJson);
  
//   var imageModel = new ImageModel(parsedJson['id'], parsedJson['url']);
//   var imagemodel = new ImageModel.fromJson(parsedJson);
//   print(imagemodel.url);
//   print(imageModel.id);
// }

// class ImageModel{
//   int id;
//   String url;

//   ImageModel(this.id, this.url);
//   ImageModel.fromJson(parsedJson){
//     id = parsedJson['id'];
//     url = parsedJson['url'];
//   }
// }


import 'dart:async';

main() async
{
  print('About to fetch data...');
  var result = await get('Http:/lsfjslfj');
  print(result);
}

Future<String> get(String url){
  return new Future.delayed(new Duration(seconds: 3), (){
  return 'Got the data!';
  });
}