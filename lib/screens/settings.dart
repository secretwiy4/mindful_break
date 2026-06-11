import 'package:flutter/material.dart';
import 'profile_screen.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFBFBFB),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Text(
          'Settings',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        centerTitle: false,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          children: [
            const SizedBox(height: 20),
            // Gambar Profil Kucing
            Center(
              child: Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(color: Colors.grey.shade300, width: 2),
                  image: const DecorationImage(
                    image: AssetImage('images/cat_profile.png'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40),

            // Senarai Butang Menu
            _buildMenuButton(
              title: 'Edit Profile',
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const EditProfileScreen()),
                );
              },
            ),
            _buildMenuButton(title: 'Settings', onTap: () {}),
            _buildMenuButton(title: 'Notifications', onTap: () {}),
            _buildMenuButton(title: 'Helps & Support', onTap: () {}),
            _buildMenuButton(title: 'About Mindful Break', onTap: () {}),
            _buildMenuButton(
              title: 'Log Out',
              textColor: Colors.red,
              onTap: () {
              },
            ),
          ],
        ),
      ),
    );
  }

  // Widget kecil (helper) untuk mudahkan buat butang berulang-ulang
  Widget _buildMenuButton({
    required String title,
    required VoidCallback onTap,
    Color textColor = Colors.black,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 15),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: ListTile(
        title: Text(
          title,
          style: TextStyle(
            color: textColor,
            fontWeight: FontWeight.w500,
            fontSize: 16,
          ),
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
          color: textColor == Colors.red ? Colors.red : Colors.black,
        ),
        onTap: onTap,
      ),
    );
  }
}