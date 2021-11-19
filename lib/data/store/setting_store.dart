import 'package:mobx/mobx.dart';

part 'setting_store.g.dart';

class CardSize {
  static const int small = 1;
  static const int middle = 2;
  static const int large = 3;
  static const int huge = 4;

  static int of(int value) {
    switch (value) {
      case small:
        return 100;
      case middle:
        return 150;
      case large:
        return 200;
      case huge:
      default:
        return 250;
    }
  }
}

class SettingStore = SettingStoreBase with _$SettingStore;

abstract class SettingStoreBase with Store {
  @observable
  int cardSize = CardSize.middle;

  @observable
  bool useCardWidget = true;
}