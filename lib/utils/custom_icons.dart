import 'importer.dart';

class ShipIcon extends StatelessWidget {
  final double size;
  final Color color;

  const ShipIcon({super.key, this.size = 24.0, this.color = Colors.blue});

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: ShipPainter(color),
    );
  }
}

class ShipPainter extends CustomPainter {
  final Color color;

  ShipPainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    // ... (same as previous implementation)
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return false;
  }
}
