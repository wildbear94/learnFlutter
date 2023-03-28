import 'package:flutter/material.dart';
import 'package:flutter_kakao/screens/chat_room_screen.dart';

import '../models/chat.dart';

class ChatCard extends StatelessWidget {

  final Chat chat;

  const ChatCard({required this.chat});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ChatRoomScreen(),
            ));
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 20 ),
        child: Row(
          children: [
            Expanded(
              child: ListTile(
                contentPadding: EdgeInsets.all(0),
                leading: CircleAvatar(
                  radius: 25,
                  backgroundImage: NetworkImage(chat.image),
                ),
                title: Text(
                  chat.title,
                  style: TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                ),
                subtitle: Text(chat.content),
              ),
            ),
            Column(
              children: [
                Text(
                  chat.time,
                  style: TextStyle(
                      color: Color(0xFFa5a5a5),
                      fontSize: 12,
                  ),
                ),
                SizedBox(height: 3),
                chat.count != "0"
                    ? Container(
                  padding: EdgeInsets.symmetric(horizontal: 6, vertical: 2),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Color(0xffde6344),
                  ),
                  child: Text(
                    chat.count,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                    ),
                  ),
                ) : SizedBox(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
