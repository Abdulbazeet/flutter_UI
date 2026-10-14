import 'package:flutter/material.dart';

import 'header_detail.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  bool _isStarted = false;

  static const navy = Color(0xFF101828);
  static const purple = Color(0xFF7357FF);
  static const ink = Color(0xFF172033);
  static const muted = Color(0xFF667085);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.fromLTRB(20, 18, 20, 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildHeader(),
              const SizedBox(height: 24),
              _buildWelcomeCard(),
              const SizedBox(height: 28),
              _buildSectionHeading(),
              const SizedBox(height: 14),
              _buildLearningGrid(),
              const SizedBox(height: 28),
              _buildPreview(),
              const SizedBox(height: 24),
              const Divider(color: Color(0xFFE3E6EE), height: 1),
              const SizedBox(height: 16),
              const Text(
                'Phase 1  •  Flutter Foundations',
                style: TextStyle(
                  color: muted,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                  letterSpacing: 0.2,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Container(
      padding: const EdgeInsets.fromLTRB(20, 20, 18, 18),
      decoration: BoxDecoration(
        color: navy,
        borderRadius: BorderRadius.circular(24),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      'Flutter Foundations',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Learn. Build. Understand.',
                      style: TextStyle(color: Color(0xFFB7C1D6), fontSize: 13),
                    ),
                  ],
                ),
              ),
              // Container(
              //   padding: const EdgeInsets.all(10),
              //   decoration: BoxDecoration(
              //     color: Colors.white.withValues(alpha: 0.1),
              //     borderRadius: BorderRadius.circular(14),
              //   ),
              //   child: const Icon(
              //     Icons.auto_awesome,
              //     color: Color(0xFFB7A7FF),
              //     size: 20,
              //   ),
              // ),
            ],
          ),
          const SizedBox(height: 22),
          Container(height: 1, color: Colors.white.withValues(alpha: 0.12)),
          const SizedBox(height: 14),
          const Row(
            children: [
              HeaderDetail(label: 'NAME', value: 'Your Name'),
              HeaderDetail(label: 'REG. NO.', value: 'REG-000000'),
              HeaderDetail(label: 'DATE', value: '14 Oct 2026'),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildWelcomeCard() {
    return Container(
      height: 220,
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(26),
        gradient: const LinearGradient(
          colors: [Color(0xFF6047D8), Color(0xFF3186E8)],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            right: -34,
            top: -42,
            child: _circle(150, Colors.white.withValues(alpha: 0.08)),
          ),
          Positioned(
            right: 44,
            bottom: -66,
            child: _circle(132, Colors.white.withValues(alpha: 0.08)),
          ),
          Positioned(
            left: 152,
            top: 30,
            child: _circle(18, Colors.white.withValues(alpha: 0.2)),
          ),
          Padding(
            padding: const EdgeInsets.all(22),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 6,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'START HERE',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w800,
                      letterSpacing: 1.1,
                    ),
                  ),
                ),
                const SizedBox(height: 18),
                const Text(
                  'Master Flutter UI',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 25,
                    fontWeight: FontWeight.w800,
                  ),
                ),
                const SizedBox(height: 7),
                const Flexible(
                  child: Text(
                    'Build beautiful interfaces by understanding the layout building blocks.',
                    style: TextStyle(
                      color: Color(0xFFE7E9FF),
                      fontSize: 13,
                      height: 1.4,
                    ),
                  ),
                ),
                const Spacer(),
                FilledButton(
                  onPressed: () => setState(() => _isStarted = true),
                  style: FilledButton.styleFrom(
                    backgroundColor: Colors.white,
                    foregroundColor: purple,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 10,
                    ),
                    minimumSize: const Size(0, 38),
                  ),
                  child: Text(
                    _isStarted ? 'You are ready!' : 'Continue Learning',
                    style: const TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _circle(double size, Color color) => Container(
    width: size,
    height: size,
    decoration: BoxDecoration(shape: BoxShape.circle, color: color),
  );

  Widget _buildSectionHeading() {
    return const Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Expanded(
          child: Text(
            'Core Layout Products',
            style: TextStyle(
              color: ink,
              fontSize: 19,
              fontWeight: FontWeight.w800,
            ),
          ),
        ),
        Text(
          '4 essentials',
          style: TextStyle(
            color: muted,
            fontSize: 11,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }

  Widget _buildLearningGrid() {
    const cards = [
      (
        Icons.crop_square_rounded,
        'Container',
        'Style and position a single child.',
        Color(0xFFECE8FF),
        purple,
      ),
      (
        Icons.view_week_rounded,
        'Row & Column',
        'Arrange elements horizontally or vertically.',
        Color(0xFFE2F1FF),
        Color(0xFF287FD6),
      ),
      (
        Icons.layers_rounded,
        'Stack',
        'Place elements on top of one another.',
        Color(0xFFFFE9DE),
        Color(0xFFDD6B3D),
      ),
      (
        Icons.unfold_more_rounded,
        'Expanded',
        'Share available space along an axis.',
        Color(0xFFE0F6ED),
        Color(0xFF29966A),
      ),
    ];

    return Column(
      children: [
        Row(
          children: [
            Expanded(child: _learningCard(cards[0])),
            const SizedBox(width: 12),
            Expanded(child: _learningCard(cards[1])),
          ],
        ),
        const SizedBox(height: 12),
        Row(
          children: [
            Expanded(child: _learningCard(cards[2])),
            const SizedBox(width: 12),
            Expanded(child: _learningCard(cards[3])),
          ],
        ),
      ],
    );
  }

  Widget _learningCard((IconData, String, String, Color, Color) card) {
    return Container(
      height: 126,
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: const Color(0xFFE8EAF0)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(8),
            decoration: BoxDecoration(
              color: card.$4,
              borderRadius: BorderRadius.circular(11),
            ),
            child: Icon(card.$1, color: card.$5, size: 18),
          ),
          const Spacer(),
          Row(
            children: [
              Expanded(
                child: Text(
                  card.$2,
                  style: const TextStyle(
                    color: ink,
                    fontSize: 13,
                    fontWeight: FontWeight.w800,
                  ),
                ),
              ),
              const Icon(
                Icons.arrow_forward_rounded,
                color: Color(0xFF98A2B3),
                size: 15,
              ),
            ],
          ),
          const SizedBox(height: 4),
          Flexible(
            child: Text(
              card.$3,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: const TextStyle(color: muted, fontSize: 10, height: 1.2),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildPreview() {
    return Container(
      padding: const EdgeInsets.all(18),
      decoration: BoxDecoration(
        color: navy,
        borderRadius: BorderRadius.circular(22),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Row(
            children: [
              Icon(Icons.tune_rounded, color: Color(0xFFB7A7FF), size: 18),
              SizedBox(width: 8),
              Text(
                'Practical demonstration',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          SizedBox(
            height: 72,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: _previewBox(const Color(0xFF7357FF), '2x'),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 4,
                  child: _previewBox(const Color(0xFF3C8DFF), '4x'),
                ),
                const SizedBox(width: 8),
                Expanded(
                  flex: 2,
                  child: _previewBox(const Color(0xFF45C49A), '2x'),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          const Text(
            'See how Flutter arranges products on screen.',
            style: TextStyle(color: Color(0xFFB7C1D6), fontSize: 11),
          ),
        ],
      ),
    );
  }

  Widget _previewBox(Color color, String label) => Container(
    decoration: BoxDecoration(
      color: color,
      borderRadius: BorderRadius.circular(12),
    ),
    child: Center(
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w800,
        ),
      ),
    ),
  );
}
