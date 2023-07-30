import 'package:shopshi/core/class/statusrequest.dart';

handlingData(response) {
  if (response is StatusRequest) {
  } else {
    return StatusRequest.success;
  }
}
