import 'dart:async';

import 'package:card_swiper/swiper/controller/controller_events.dart';
import 'package:card_swiper/swiper/utils/enums.dart';

class CardController {
  final _eventController = StreamController<ControllerEvent>.broadcast();

  Stream <ControllerEvent> get events => _eventController.stream;

  void swipe (CardSwipeDirection direction){
    _eventController.add(ControllerSwipeEvent(direction));
  }

  void moveTo(int index){
    _eventController.add(ControllerMoveEvent(index));
  }
  Future<void> dispose() async{
    await _eventController.close();
  }
}