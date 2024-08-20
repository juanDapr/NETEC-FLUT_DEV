import 'package:velocity_x/velocity_x.dart';
import '../core/store.dart';
import 'catelog.dart';

class CartModel {
  late CatelogModel _catelog;

  final List<int?> _itemIds = [];
  set catelog(CatelogModel newCatelog) {
    _catelog = newCatelog;
  }

  List<Item> get items => _itemIds.map((id) => _catelog.getById(id!)).toList();

  num get totalPrice =>
      items.fold(0, (total, current) => total + current.price);
}

class AddMutation extends VxMutation<MyStore> {
  final Item? item;
  AddMutation(this.item);
  @override
  perform() {
    store!.cart!._itemIds.add(item!.id);
  }
}

class RemoveMutation extends VxMutation<MyStore> {
  final Item item;
  RemoveMutation(this.item);
  @override
  perform() {
    store!.cart!._itemIds.remove(item.id);
  }
}
