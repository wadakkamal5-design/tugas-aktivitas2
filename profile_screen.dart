import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          // Lengkungan Biru di Bagian Atas
          Positioned(
            top: -150,
            left: -50,
            right: -50,
            child: Container(
              height: 350,
              decoration: const BoxDecoration(
                color: Color(0xFFE8F0FE), // Warna biru muda lembut
                shape: BoxShape.circle,
              ),
            ),
          ),
          
          // Lengkungan Biru di Bagian Bawah
          Positioned(
            bottom: -200,
            left: -50,
            right: -50,
            child: Container(
              height: 350,
              decoration: const BoxDecoration(
                color: Color(0xFFE8F0FE),
                shape: BoxShape.circle,
              ),
            ),
          ),

          // Konten Utama Screen
          SafeArea(
            child: Column(
              children: [
                const SizedBox(height: 20),
                // Judul Halaman
                const Text(
                  'Profile',
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontFamily: 'Serif', // Mengikuti style font melengkung di gambar jika tersedia
                  ),
                ),
                const SizedBox(height: 30),
                
                // Avatar Lingkaran Profil
                Center(
                  child: Container(
                    width: 130,
                    height: 130,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.grey.shade300, width: 1),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withValues(alpha:0.05),
                          blurRadius: 10,
                          spreadRadius: 2,
                        ),
                      ],
                    ),
                    child: const Icon(
                      Icons.person_outline_rounded,
                      size: 80,
                      color: Color(0xFF42A5F5), // Warna ikon biru muda
                    ),
                  ),
                ),
                const SizedBox(height: 40),

                // List Data Profil dengan Garis Pembatas (Divider)
                Expanded(
                  child: ListView(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    children: [
                      _buildProfileItem(Icons.person_pin_outlined, 'PAB 2026'),
                      _buildProfileItem(Icons.phone_android_rounded, '1462300158'),
                      _buildProfileItem(null, 'agungss@gmail.com', hideIcon: true),
                      _buildProfileItem(Icons.location_on_outlined, 'Surabaya'),
                      _buildProfileItem(Icons.camera_alt_outlined, 'pab2026'),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper Widget untuk membuat baris informasi profil
  Widget _buildProfileItem(IconData? icon, String text, {bool hideIcon = false}) {
    return Container(
      decoration: BoxDecoration(
        border: Border(
          bottom: BorderSide(color: Colors.grey.shade300, width: 1),
        ),
      ),
      child: ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
        leading: hideIcon 
            ? const SizedBox(width: 32) // Memberikan space kosong agar teks sejajar
            : Icon(icon, color: const Color(0xFF42A5F5), size: 32),
        title: Text(
          text,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontFamily: 'Serif',
          ),
        ),
      ),
    );
  }
}