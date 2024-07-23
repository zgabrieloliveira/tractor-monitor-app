import '../model/buyable.dart';

class StockController {

  List<Buyable> stock;

  StockController(this.stock);

  void store(Buyable stored) {
    stock.add(stored);
  }

}