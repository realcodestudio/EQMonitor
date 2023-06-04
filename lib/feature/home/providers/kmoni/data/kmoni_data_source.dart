import 'package:dio/dio.dart';
import 'package:eqmonitor/common/provider/dio_provider.dart';
import 'package:eqmonitor/feature/home/providers/kmoni/model/kmoni_maintenance_message_model.dart';
import 'package:eqmonitor/feature/home/providers/kmoni/util/kmoni_web_api_url_generator.dart';
import 'package:eqmonitor/feature/home/providers/kmoni/util/realtime_data_type.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:socket_io_client/socket_io_client.dart';

part 'kmoni_data_source.g.dart';

@Riverpod(dependencies: [dio], keepAlive: true)
KmoniDataSource kmoniDataSource(KmoniDataSourceRef ref) =>
    KmoniDataSource(Dio());

class KmoniDataSource {
  KmoniDataSource(this.dio);
  final Dio dio;

  final _urlGenerator = KmoniWebApiUrlGenerator();

  Future<Response<List<int>>> fetchRealtimeImage({
    required DateTime dateTime,
    required RealtimeDataType dataType,
    required GroundType groundType,
  }) async {
    final url = _urlGenerator.realtimeBase(
      dateTime: dateTime,
      dataType: dataType,
      groundType: groundType,
    );

    final res = await dio.get<List<int>>(
      url,
      options: Options(
        responseType: ResponseType.bytes,
      ),
    );
    return res;
  }

  Future<DateTime> getLatestDataTime() async {
    final url = _urlGenerator.latestDataTime();
    final res = await dio.get<Map<String, dynamic>>(
      url,
      options: Options(
        responseType: ResponseType.json,
      ),
    );
    final latestDataTime = DateTime.tryParse(
      res.data!['latest_time'].toString().replaceAll('/', '-'),
    );
    if (latestDataTime == null) {
      throw Exception('latestDataTime was null');
    }
    return latestDataTime;
  }

  Future<KmoniMaintenanceMessageModel> getMaintenanceMessage() async {
    final url = _urlGenerator.maintenanceMessage();
    final res = await dio.get<KmoniMaintenanceMessageModel>(
      url,
      options: Options(
        responseType: ResponseType.json,
      ),
    );
    final data = res.data;
    if (data == null) {
      throw Exception('data was null');
    }
    return data;
  }
}
