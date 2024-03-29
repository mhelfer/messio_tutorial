import 'package:flutter/cupertino.dart';
import 'package:messio/widgets/ChatItemWidget.dart';

class ChatListWidget extends StatelessWidget{
  final ScrollController listScrollController = new ScrollController();

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: EdgeInsets.all(10.0),
        itemBuilder: (context, index) => ChatItemWidget(index),
        itemCount: 20,
        reverse: true,
        controller: listScrollController,
      ),
    );
  }
}