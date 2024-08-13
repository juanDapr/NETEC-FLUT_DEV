
import 'dart:async';

import 'package:card_swiper/swiper/utils/enums.dart';
import 'package:flutter/material.dart';


typedef CardSwiperOnSwipe = FutureOr<bool> Function (
  int previousIndex,
  int? currentIndex,
  CardSwipeDirection direction,
);
typedef CardSwiperOnSwipeUpdate = void Function(

  int? currentIndex,
  CardSwipeDirection direction,
);


typedef NullableCardBuilder = Widget? Function (
  BuildContext context,
  int index,
  int horizontalOffSetPercentage,
  int verticalOffSetPercentage,
);

typedef CardSwiperDirectionChange = void Function(
  CardSwipeDirection horizontalDirection,
);

typedef CardSwiperOnEnd = Future<void> Function();