import 'package:expensetracker/core/models/category.dart';
import 'package:expensetracker/core/services/category_icon_service.dart';
import 'package:expensetracker/core/viewmodels/base_model.dart';
import 'package:expensetracker/locator.dart';

class NewTransactionModel extends BaseModel {
  final CategoryIconService _categoryIconService =
      locator<CategoryIconService>();

  int selectedCategory = 2; // 1=>income,2=>expense

  void changeSelectedItem(int newItemIndex) {
    selectedCategory = newItemIndex;

    notifyListeners();
  }

  List<Category> loadCategoriesIcons() {
    if (selectedCategory == 1) {
      // load income
      List<Category> s = _categoryIconService.incomeList.toList();
      return s;
    } else {
      // load expense
      List<Category> s = _categoryIconService.expenseList.toList();
      return s;
    }
  }
}
