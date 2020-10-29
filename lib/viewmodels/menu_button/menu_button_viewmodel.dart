import 'package:stacked/stacked.dart';

class MenuButtonViewModel extends BaseViewModel {
  bool _materiActive = false;
  bool _kuisActive = false;
  bool _settingActive = false;

  get materiActive => _materiActive;
  get kuisActive => _kuisActive;
  get settingActive => _settingActive;

  materiPressed() {
    _materiActive = true;
    _kuisActive = false;
    _settingActive = false;
    notifyListeners();
  }

  kuisPressed() {
    _materiActive = false;
    _kuisActive = true;
    _settingActive = false;
    notifyListeners();
  }

  settingPressed() {
    _materiActive = false;
    _kuisActive = false;
    _settingActive = true;
    notifyListeners();
  }
}
