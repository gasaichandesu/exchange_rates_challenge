import 'package:flutter/cupertino.dart';

abstract class ViewModel with ChangeNotifier {
  bool isBusy = false;
  bool hasError = false;

  void setBusy(bool isBusy) {
    this.isBusy = isBusy;

    notifyListeners();
  }

  void setError(bool hasError) {
    this.hasError = hasError;

    notifyListeners();
  }
}
