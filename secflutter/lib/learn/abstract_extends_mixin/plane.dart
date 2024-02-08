import 'package:secflutter/learn/abstract_extends_mixin/move.dart';
import 'package:secflutter/learn/abstract_extends_mixin/status.dart';
import 'package:secflutter/learn/abstract_extends_mixin/vehicle.dart';

class plane extends vehicle with status implements move {
  plane(super.type, super.year, super.model);

  @override
  launch() {
    print('plane launched');
  }

  @override
  speed_up() {
    print('plane is accelerating');
  }

  @override
  stop() {
    print('plane stopped');
  }

  @override
  height() {
    print('The plane on 1500ft');
  }

  @override
  passengerCount() {
    print('plane passenger count : 200');
  }
}
