import 'package:tractor_monitor_app/model/product_service.dart';

class Maintenance extends ProductService {

  DateTime date;
  EnumType type;

  Maintenance(this.date, this.type, double cost, String name, int id) : super(cost, name, id);

}

class EnumType {
  static const String preventive = 'Preventiva';
  static const String predictive = 'Preditiva';
  static const String corrective = 'Corretiva';
}