import 'package:flutter/material.dart';

class ShopeeHomePage extends StatefulWidget {
  const ShopeeHomePage({super.key});

  @override
  State<ShopeeHomePage> createState() => _ShopeeHomePageState();
}

class _ShopeeHomePageState extends State<ShopeeHomePage> {
  int _selectedIndex = 0;

  final List<String> categories = [
    'Elektronik',
    'Fashion',
    'Kecantikan',
    'Rumah & Living',
    'Olahraga',
    'Gaming',
    'Shopee Mart',
    'Voucher'
  ];

  final List<Map<String, String>> flashDeals = List.generate(6, (i) => {
        'title': 'Deal ${i + 1}',
        'price': 'Rp ${(i + 1) * 20000}',
        'oldPrice': 'Rp ${(i + 1) * 40000}',
        'image': 'https://picsum.photos/seed/flash$i/200/200',
      });

  final List<Map<String, String>> recommended = List.generate(10, (i) => {
        'title': 'Produk ${i + 1}',
        'price': 'Rp ${(i + 1) * 30000}',
        'image': 'https://picsum.photos/seed/prod$i/300/300',
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: _buildAppBar(),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildPromoCarousel(),
              const SizedBox(height: 12),
              _buildCategoryRow(),
              const SizedBox(height: 12),
              _buildFlashDealSection(),
              const SizedBox(height: 12),
              _buildRecommendationSection(),
              const SizedBox(height: 80),
            ],
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNav(),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      title: Row(
        children: [
          Expanded(
            child: Container(
              height: 40,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              decoration: BoxDecoration(
                color: const Color(0xFFF5F5F5),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: const [
                  Icon(Icons.search, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    'Cari di Shopee',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(width: 12),
          Icon(Icons.notifications_none, color: Colors.black54),
        ],
      ),
    );
  }

  Widget _buildPromoCarousel() {
    return SizedBox(
      height: 150,
      child: PageView(
        children: List.generate(3, (i) {
          return Container(
            margin: const EdgeInsets.symmetric(horizontal: 8),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              image: DecorationImage(
                image: NetworkImage('https://picsum.photos/seed/banner$i/800/400'),
                fit: BoxFit.cover,
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _buildCategoryRow() {
    return SizedBox(
      height: 100,
      child: ListView.separated(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        scrollDirection: Axis.horizontal,
        itemCount: categories.length,
        separatorBuilder: (_, __) => const SizedBox(width: 12),
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: 60,
                height: 60,
                decoration: BoxDecoration(
                  color: const Color(0xFFFFF3E0),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Icon(Icons.category, color: Colors.deepOrange[400]),
              ),
              const SizedBox(height: 6),
              SizedBox(
                width: 70,
                child: Text(
                  categories[index],
                  textAlign: TextAlign.center,
                  style: const TextStyle(fontSize: 12),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
            ],
          );
        },
      ),
    );
  }

  Widget _buildFlashDealSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 12),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text('Flash Sale', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
              Text('Lihat semua', style: TextStyle(color: Colors.orange)),
            ],
          ),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 220,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: 12),
            itemCount: flashDeals.length,
            separatorBuilder: (_, __) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              final item = flashDeals[index];
              return _buildFlashDealCard(item);
            },
          ),
        ),
      ],
    );
  }

  Widget _buildFlashDealCard(Map<String, String> item) {
    return Container(
      width: 140,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade200),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
            child: Image.network(item['image']!, width: 140, height: 100, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(item['title']!, style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(
                  item['oldPrice']!,
                  style: const TextStyle(fontSize: 12, decoration: TextDecoration.lineThrough, color: Colors.grey),
                ),
                const SizedBox(height: 2),
                Text(item['price']!, style: const TextStyle(fontSize: 14, color: Colors.red)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildRecommendationSection() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Rekomendasi untukmu', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
          const SizedBox(height: 8),
          GridView.builder(
            itemCount: recommended.length,
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              mainAxisExtent: 250,
            ),
            itemBuilder: (context, index) {
              final p = recommended[index];
              return _buildProductCard(p['image']!, p['title']!, p['price']!);
            },
          ),
        ],
      ),
    );
  }

  Widget _buildProductCard(String image, String title, String price) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
              child: Image.network(image, fit: BoxFit.cover, width: double.infinity),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, maxLines: 1, overflow: TextOverflow.ellipsis, style: const TextStyle(fontWeight: FontWeight.w600)),
                const SizedBox(height: 6),
                Text(price, style: const TextStyle(color: Colors.orange, fontWeight: FontWeight.bold)),
              ],
            ),
          ),
        ],
      ),
    );
  }

  BottomNavigationBar _buildBottomNav() {
    return BottomNavigationBar(
      currentIndex: _selectedIndex,
      onTap: (i) => setState(() => _selectedIndex = i),
      selectedItemColor: const Color(0xFFFF6F00),
      unselectedItemColor: Colors.grey,
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.grid_view), label: 'Kategori'),
        BottomNavigationBarItem(icon: Icon(Icons.local_offer), label: 'Voucher'),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Saya'),
      ],
    );
  }
}
