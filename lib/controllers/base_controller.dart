import 'package:get/get.dart';
import 'package:tadbur/enums/view_state.dart';

class BaseController extends GetxController {
  final _state = ViewState.idle.obs;

  ViewState get state => _state.value;

  bool get isBusy => _state.value == ViewState.busy;

  setState(ViewState state) {
    _state.value = state;
  }
}
