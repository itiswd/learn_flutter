import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  final Map<String, dynamic> userData;

  const ProfilePage({super.key, required this.userData});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("الملف الشخصي")),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: CircleAvatar(
                radius: 60,
                backgroundImage: NetworkImage(userData["image"] ?? ""),
              ),
            ),
            const SizedBox(height: 20),
            _info("Name", "${userData["firstName"]} ${userData["lastName"]}"),
            _info("Username", userData["username"]),
            _info("Email", userData["email"]),
            _info("Phone", userData["phone"]),
            _info("Birth Date", userData["birthDate"]),
            _info("Gender", userData["gender"]),
            _info("Blood Group", userData["bloodGroup"]),
            _info("Height", "${userData["height"]} cm"),
            _info("Weight", "${userData["weight"]} kg"),
            _info("Eye Color", userData["eyeColor"]),

            const Divider(),
          ],
        ),
      ),
    );
  }

  Widget _info(String title, String? value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Text(
        "$title: ${value ?? "-"}",
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
