import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:expensetracker/core/models/category.dart';

class CategoryIconService {
  //* FIRST : EXPENSE LIST
  final expenseList = {
    Category(0, "Food", FontAwesomeIcons.hamburger, Colors.green),
    Category(1, "Bills", FontAwesomeIcons.moneyBillWave, Colors.blue),
    Category(2, "Transportaion", FontAwesomeIcons.car, Colors.blueAccent),
    Category(3, "Home", FontAwesomeIcons.home, Colors.brown),
    Category(4, "Entertainment", FontAwesomeIcons.gamepad, Colors.cyanAccent),
    Category(
        5, "Groceries", FontAwesomeIcons.shoppingBasket, Colors.deepOrange),
    Category(6, "Apparel", FontAwesomeIcons.tshirt, Colors.deepOrangeAccent),
    Category(7, "Insurance", FontAwesomeIcons.hammer, Colors.indigo),
    Category(8, "Phone Bills", FontAwesomeIcons.phone, Colors.indigoAccent),
    Category(9, "Health", FontAwesomeIcons.firstAid, Colors.lime),
    Category(10, "Sport", FontAwesomeIcons.dumbbell, Colors.limeAccent),
    Category(11, "Beauty", FontAwesomeIcons.palette, Colors.pink),
    Category(12, "Education", FontAwesomeIcons.bookOpen, Colors.teal),
    Category(13, "Gift", FontAwesomeIcons.gifts, Colors.redAccent),
    Category(14, "Pet", FontAwesomeIcons.cat, Colors.deepPurpleAccent),
    Category(
        15, "Travel", FontAwesomeIcons.planeDeparture, Colors.deepPurpleAccent),
    Category(16, "Charity", FontAwesomeIcons.donate, Colors.deepPurpleAccent),
    Category(
        17, "Business", FontAwesomeIcons.briefcase, Colors.deepPurpleAccent),
  };
  //* SECOND : INCOME LIST
  final incomeList = {
    Category(0, "Salary", FontAwesomeIcons.dollarSign, Colors.green),
    Category(1, "Awards", FontAwesomeIcons.trophy, Colors.amber),
    Category(2, "Grants", FontAwesomeIcons.handHoldingUsd, Colors.lightGreen),
    Category(3, "Rental", FontAwesomeIcons.houseUser, Colors.yellow),
    Category(4, "Investment", FontAwesomeIcons.chartLine, Colors.cyanAccent),
    Category(5, "Lottery", FontAwesomeIcons.commentsDollar, Colors.deepOrange),
  };

 
}
