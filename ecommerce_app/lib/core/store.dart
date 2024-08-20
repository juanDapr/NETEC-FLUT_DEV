import 'package:velocity_x/velocity_x.dart';
import '../models/cart.dart';
import '../models/catelog.dart';
class MyStore extends VxStore {
CatelogModel? catelog;
CartModel? cart;
MyStore() {
catelog = CatelogModel();
cart = CartModel();
cart!.catelog = catelog!;
}
}