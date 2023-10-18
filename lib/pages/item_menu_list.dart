import 'package:flutter/material.dart';

class ItemMenuList extends StatefulWidget {
  const ItemMenuList({super.key});

  @override
  State<ItemMenuList> createState() => _ItemMenuListState();
}

class _ItemMenuListState extends State<ItemMenuList> {

  final List<String> filters = const ['All', 'KFC', 'Macdonald/s', 'Hardees', 'Cheezious'];

  late String selectedFilter;

  @override
  void initState(){
    super.initState();
    selectedFilter = filters[0]; // default value 
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text('Food Menu! Implementation will be soon')),
    );
  }
}