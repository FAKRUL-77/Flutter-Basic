import 'dart:async';

class Cake{}
class Order{
  String type;
  Order(this.type);
}

// order --> order taker --> order inspector --> baker --> 
void main(){
  final controller = new StreamController();
  final order = new Order('chocolate');

  final baker = new StreamTransformer.fromHandlers(
    handleData: (String cakeType, sink){
      if(cakeType == 'chocolate'){
        sink.add(new Cake());
      }
      else{
          sink.addError('I can not bake it !!');
      }
    }
  );

  controller.sink.add(order);
  controller.stream.map((Order) => order.type)
                   .transform(baker)
                   .listen((cake) => print('Here is your cake $cake.'),
                    onError: (error) => print(error)
  );
}