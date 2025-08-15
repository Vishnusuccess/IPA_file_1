import 'dart:math';

import 'package:flutter/widgets.dart';

class Particle {

  Particle(this.baseOffset, this.speed, this.color, this.size);
  Offset baseOffset;
  double speed;
  Color color;
  double size;
}

class StarPlasma extends StatefulWidget {
  const StarPlasma({super.key});

  @override
  State<StarPlasma> createState() => _StarPlasmaState();
}

class _StarPlasmaState extends State<StarPlasma>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  final List<Particle> _particles = [];
  final Random _random = Random();

  @override
  void initState() {
    super.initState();
    _generateParticles();

    _controller = AnimationController(
      vsync: this,
      duration: const Duration(days: 365),
    )..repeat();
  }

  void _generateParticles() {
    const count = 3500;
    const double maxRadius = 280;

    for (var i = 0; i < count; i++) {
      final radius = pow(_random.nextDouble(), 1.5) * maxRadius;
      final angle = _random.nextDouble() * 2 * pi;

      final dx = cos(angle) * radius;
      final dy = sin(angle) * radius;

      final brightness = (1 - radius / maxRadius) * 0.9 + 0.1;

      final isAccent = _random.nextDouble() < 0.3;

      final color = isAccent
          ? const Color(0xFFC8BFFF).withValues(alpha: brightness)
          : const Color(0xFF7E75F8).withValues(alpha: brightness);

      final speed = 0.2 + _random.nextDouble() * 0.2;
      final size = 1.0 + _random.nextDouble() * 1.5;

      _particles.add(Particle(Offset(dx, dy), speed, color, size));
    }
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: _controller,
      builder: (_, __) {
        final elapsed = _controller.lastElapsedDuration ?? Duration.zero;
        return CustomPaint(
          painter: StarPlasmaPainter(_particles, elapsed),
          size: const Size(380, 380),
        );
      },
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class StarPlasmaPainter extends CustomPainter {

  StarPlasmaPainter(this.particles, this.time);
  final List<Particle> particles;
  final Duration time;

  @override
  void paint(Canvas canvas, Size size) {
    final center = size.center(Offset.zero);
    final paint = Paint();

    final seconds = time.inMilliseconds / 1000.0;
    final rotation = seconds * 0.05; // stała rotacja

    for (final p in particles) {
      final dx =
          p.baseOffset.dx * cos(rotation) - p.baseOffset.dy * sin(rotation);
      final dy =
          p.baseOffset.dx * sin(rotation) + p.baseOffset.dy * cos(rotation);

      final jitterX = dx * (1 + 0.01 * sin(seconds * p.speed));
      final jitterY = dy * (1 + 0.01 * cos(seconds * p.speed));

      paint.color = p.color;
      final offset = center + Offset(jitterX, jitterY);
      final squareSize = p.size;
      canvas.drawRect(
        Rect.fromCenter(center: offset, width: squareSize, height: squareSize),
        paint,
      );
    }
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => true;
}
