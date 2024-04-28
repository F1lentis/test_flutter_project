import 'package:auto_route/annotations.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

@RoutePage()
class MyChatPage extends StatelessWidget {
  const MyChatPage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Чатик в разработке'),
      ),
    body: const Center(
      child: Text('А здесь могла быть Ваша реклама'),
    ),  
    );
  }
}