
import 'package:chat_firebase/components/my_drawer.dart';
import 'package:chat_firebase/components/my_userTile.dart';
import 'package:chat_firebase/pages/chat_page.dart';
import 'package:chat_firebase/services/auth/auth_service.dart';
import 'package:chat_firebase/services/chat/chat_service.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final _authService = AuthService();
  final _chatService = ChatService();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: const MyDrawer(),
      body: _userList(),
    );
  }

  Widget _userList() {
    return StreamBuilder(
      stream: _chatService.getUserStream(),
      builder: (contest, snapshot) {
        if (snapshot.hasError) {
          return const Text('E R R O R');
        }
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const CircularProgressIndicator();
        }
        return ListView(
          children: snapshot.data!
              .map<Widget>((userData) => _userListItem(userData, contest))
              .toList(),
        );
      },
    );
  }

  Widget _userListItem(Map<String, dynamic> userData, BuildContext context) {
    return UserTile(
      text: userData["email"],
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ChatPage(
              receiverEmail: userData["email"],
            ),
          ),
        );
      },
    );
  }
}
