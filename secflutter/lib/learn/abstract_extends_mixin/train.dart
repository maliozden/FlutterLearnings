import 'package:secflutter/learn/abstract_extends_mixin/move.dart';
import 'package:secflutter/learn/abstract_extends_mixin/status.dart';
import 'package:secflutter/learn/abstract_extends_mixin/vehicle.dart';

class train extends vehicle with status implements move {
  train(super.type, super.year, super.model);

  @override
  launch() {
    print('train launched');
  }

  @override
  speed_up() {
    print('getting speed');
  }

  @override
  stop() {
    print('train stopped');
  }

  @override
  passengerCount() {
    print('train passenger count:150');
  }
}
