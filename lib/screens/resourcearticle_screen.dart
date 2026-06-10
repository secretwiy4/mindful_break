import 'package:flutter/material.dart';

class ResourceArticleScreen extends StatelessWidget {
  const ResourceArticleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Definisi Warna Tema (Aesthetic Pastel Green)
    const colorBg = Color(0xffE8F7F2);
    const colorTextPrimary = Color(0xff1A3B32);
    const colorTextSecondary = Color(0xff3A5A50);
    const colorButton = Color(0xff0D5C46);
    const colorCardBorder = Color(0xffD1EAE2);

    return Scaffold(
      backgroundColor: colorBg,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // --- 1. HEADER (Butang Back Bulat & Info Masa) ---
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Butang Back Jenis Floating Circle
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          shape: BoxShape.circle,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black,
                              blurRadius: 10,
                              offset: const Offset(0, 2),
                            ),
                          ],
                        ),
                        child: const Icon(Icons.arrow_back, color: colorTextPrimary, size: 20),
                      ),
                    ),
                    // Reading Time & Tag Info
                    const Row(
                      children: [
                        Icon(Icons.access_time_filled, color: colorTextSecondary, size: 16),
                        SizedBox(width: 4),
                        Text(
                          "3 min read",
                          style: TextStyle(color: colorTextSecondary, fontSize: 13, fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // --- 2. TAJUK UTAMA ---
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 24.0),
                child: Text(
                  "Understanding Stress",
                  style: TextStyle(
                    color: colorTextPrimary,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: -0.5,
                  ),
                ),
              ),
              const SizedBox(height: 16),

              // --- 3. GAMBAR HERO (Hutan Berkabut Unsplash) ---
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.network(
                    'https://images.unsplash.com/photo-1506744038136-46273834b3fb?q=80&w=600&auto=format&fit=crop',
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) {
                      // Jika tiada internet, pamerkan kotak hijau sebagai placeholder
                      return Container(height: 180, color: colorCardBorder);
                    },
                  ),
                ),
              ),
              const SizedBox(height: 24),

              // --- 4. KAD KANDUNGAN PUTIH (The Container Card) ---
              Container(
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(32),
                    topRight: Radius.circular(32),
                  ),
                ),
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "What is stress?",
                      style: TextStyle(color: colorTextPrimary, fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Stress is the body’s physical and emotional response to challenges, pressure, or demands. It can happen when you face situations that feel difficult, threatening, or overwhelming.",
                      style: TextStyle(
                        color: colorTextSecondary,
                        fontSize: 14,
                        height: 1.5, // Line height bernafas (150%)
                      ),
                    ),
                    const SizedBox(height: 24),

                    const Text(
                      "🚨 Signs of excessive stress",
                      style: TextStyle(color: colorTextPrimary, fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 16),

                    // --- 5. GRID KOTAK KECIL (Card Grid 2x2) ---
                    GridView.count(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(), // Supaya scroll diuruskan oleh SingleChildScrollView
                      crossAxisCount: 2,
                      crossAxisSpacing: 12,
                      mainAxisSpacing: 12,
                      childAspectRatio: 160 / 64, // Memastikan nisbah W:160 dan H:64 dikekalkan
                      children: [
                        _buildGridCard("🧠", "Feeling Anxious", colorTextPrimary, colorCardBorder),
                        _buildGridCard("⚡", "Muscle Tension", colorTextPrimary, colorCardBorder),
                        _buildGridCard("😴", "Sleep Trouble", colorTextPrimary, colorCardBorder),
                        _buildGridCard("💔", "Fast Heartbeat", colorTextPrimary, colorCardBorder),
                      ],
                    ),
                    const SizedBox(height: 32),

                    // --- 6. BUTTON CALL-TO-ACTION (CTA) ---
                    SizedBox(
                      width: double.infinity,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: colorButton,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(16),
                          ),
                          elevation: 0,
                        ),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Try Breathing Exercise Now",
                              style: TextStyle(color: Colors.white, fontSize: 15, fontWeight: FontWeight.w600),
                            ),
                            SizedBox(width: 8),
                            Icon(Icons.arrow_forward, color: Colors.white, size: 18),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 16),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  // --- WIDGET FUNGSI UNTUK BINA KOTAK KECIL (Grid Items) ---
  Widget _buildGridCard(String emoji, String text, Color textColor, Color borderColor) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        color: const Color(0xffF0FAF6), // Hijau tersangat lembut
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: borderColor, width: 1),
      ),
      child: Row(
        children: [
          Text(emoji, style: const TextStyle(fontSize: 20)),
          const SizedBox(width: 8),
          Expanded(
            child: Text(
              text,
              style: TextStyle(color: textColor, fontSize: 13, fontWeight: FontWeight.w600),
              maxLines: 2,
              overflow: TextOverflow.ellipsis, // Elak teks terkeluar kotak kalau panjang
            ),
          ),
        ],
      ),
    );
  }
}