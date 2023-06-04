import 'package:eqapi_schema/model/lat_lng.dart';
import 'package:eqmonitor/common/component/map/model/map_state.dart';
import 'package:eqmonitor/common/component/map/view_model/map_viewmodel.dart';
import 'package:eqmonitor/common/feature/map/provider/map_data_provider.dart';
import 'package:eqmonitor/common/feature/map/utils/web_mercator_projection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class EarthquakeHypocenterMapWidget extends HookConsumerWidget {
  const EarthquakeHypocenterMapWidget({
    super.key,
    required this.latLng,
    required this.mapKey,
  });
  final Key mapKey;
  final LatLng latLng;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(
      () {
        ref.read(mapDataProvider.notifier).initialize();
        return null;
      },
      [],
    );
    final state = ref.watch(MapViewModelProvider(mapKey));
    final mapData =
        ref.watch(mapDataProvider.select((value) => value.projectedData));
    if (mapData == null) {
      debugPrint('mapData is null');
      return const SizedBox.shrink();
    }
    return CustomPaint(
      painter: _HypocenterPainter(
        state: state,
        latLng: latLng,
      ),
      size: Size.infinite,
    );
  }
}

class _HypocenterPainter extends CustomPainter {
  _HypocenterPainter({
    required this.state,
    required this.latLng,
  });

  final MapState state;
  final LatLng latLng;

  @override
  void paint(Canvas canvas, Size size) {
    final projected = state.globalPointToOffset(
      WebMercatorProjection().project(latLng),
    );
    final offset = Offset(projected.dx, projected.dy);
    // ×印を描く

    canvas
      ..drawLine(
        Offset(offset.dx - 10, offset.dy - 10),
        Offset(offset.dx + 10, offset.dy + 10),
        Paint()
          ..color = const Color.fromARGB(255, 0, 0, 0)
          ..isAntiAlias = true
          ..strokeCap = StrokeCap.square
          ..style = PaintingStyle.stroke
          ..strokeWidth = 12,
      )
      ..drawLine(
        Offset(offset.dx + 10, offset.dy - 10),
        Offset(offset.dx - 10, offset.dy + 10),
        Paint()
          ..color = const Color.fromARGB(255, 0, 0, 0)
          ..isAntiAlias = true
          ..strokeCap = StrokeCap.square
          ..style = PaintingStyle.stroke
          ..strokeWidth = 12,
      )
      ..drawLine(
        Offset(offset.dx - 10, offset.dy - 10),
        Offset(offset.dx + 10, offset.dy + 10),
        Paint()
          ..color = const Color.fromARGB(255, 255, 255, 255)
          ..isAntiAlias = true
          ..strokeCap = StrokeCap.square
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10,
      )
      ..drawLine(
        Offset(offset.dx + 10, offset.dy - 10),
        Offset(offset.dx - 10, offset.dy + 10),
        Paint()
          ..color = const Color.fromARGB(255, 255, 255, 255)
          ..isAntiAlias = true
          ..strokeCap = StrokeCap.square
          ..style = PaintingStyle.stroke
          ..strokeWidth = 10,
      )
      ..drawLine(
        Offset(offset.dx - 10, offset.dy - 10),
        Offset(offset.dx + 10, offset.dy + 10),
        Paint()
          ..color = const Color.fromARGB(255, 255, 0, 0)
          ..isAntiAlias = true
          ..strokeCap = StrokeCap.square
          ..style = PaintingStyle.stroke
          ..strokeWidth = 7,
      )
      ..drawLine(
        Offset(offset.dx + 10, offset.dy - 10),
        Offset(offset.dx - 10, offset.dy + 10),
        Paint()
          ..color = const Color.fromARGB(255, 255, 0, 0)
          ..isAntiAlias = true
          ..strokeCap = StrokeCap.square
          ..style = PaintingStyle.stroke
          ..strokeWidth = 7,
      );
  }

  @override
  bool shouldRepaint(covariant _HypocenterPainter oldDelegate) => true;
}
