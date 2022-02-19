import 'package:practice/home/customers/customer_model.dart';
import 'package:stacked/stacked.dart';

class HomeViewModel extends BaseViewModel {
  int selectedIndex = 0;
  Customers? customer;

  List<Customers> customers = [
    Customers('Ali'),
    Customers('Bilal'),
    Customers('Ahmad'),
  ];

  onBottomTabChange(int index) {
    selectedIndex = index;
    notifyListeners();
  }
}
