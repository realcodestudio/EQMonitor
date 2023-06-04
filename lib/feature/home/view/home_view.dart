import 'dart:convert';

import 'package:eqapi_schema/model/lat_lng.dart';
import 'package:eqmonitor/common/component/map/map.dart';
import 'package:eqmonitor/common/component/map/view_model/map_viemwodel.dart';
import 'package:eqmonitor/common/component/sheet/basic_modal_sheet.dart';
import 'package:eqmonitor/common/component/sheet/sheet_floating_action_buttons.dart';
import 'package:eqmonitor/common/component/sheet/sheet_item.dart';
import 'package:eqmonitor/common/feature/map/provider/map_data_provider.dart';
import 'package:eqmonitor/common/hook/use_sheet_controller.dart';
import 'package:eqmonitor/common/provider/log/talker.dart';
import 'package:eqmonitor/feature/home/component/kmoni/kmoni_settings_dialog.dart';
import 'package:eqmonitor/feature/home/component/map/kmoni_map_widget.dart';
import 'package:eqmonitor/feature/home/component/sheet/status_widget.dart';
import 'package:eqmonitor/feature/home/providers/kmoni/viewmodel/kmoni_view_model.dart';
import 'package:eqmonitor/feature/home/providers/telegram_ws/provider/eew_telegram_provider.dart';
import 'package:eqmonitor/feature/home/providers/telegram_ws/provider/telegram_provider.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:talker_flutter/talker_flutter.dart';

class HomeView extends HookConsumerWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final mapKey = useMemoized(() => GlobalKey(debugLabel: 'HomeView'));
    final state = ref.watch(mapDataProvider);
    useEffect(
      () {
        WidgetsBinding.instance.endOfFrame.then((_) {
          ref.read(mapDataProvider.notifier).initialize();
          ref.read(kmoniViewModelProvider.notifier).initialize();
        });
        return null;
      },
      [],
    );
    // デバッグ用
    // EEW WSが来た時にダイアログを表示
    if (kDebugMode) {
      ref.listen(eewWsTelegramProvider, (previous, next) {
        final data = next.value;
        if (data != null) {
          // show dialog
          showDialog<void>(
            context: context,
            builder: (context) {
              return AlertDialog(
                title: const Text('電文を受信しました'),
                content: SingleChildScrollView(
                  child: Text(
                    const JsonEncoder.withIndent(' ').convert(data.toJson()),
                  ),
                ),
                actions: [
                  TextButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    child: const Text('OK'),
                  ),
                ],
              );
            },
          );
        }
      });
    }
    useEffect(
      () {
        WidgetsBinding.instance.endOfFrame.then((_) {
          ref.read(mapDataProvider.notifier).initialize();
          ref.read(kmoniViewModelProvider.notifier).initialize();
        });
        return null;
      },
      [mapKey],
    );
    // * 地図データが読み込まれるまでローディングを表示
    if (state.projectedData == null) {
      return const Scaffold(
        body: Center(
          child: CircularProgressIndicator.adaptive(),
        ),
      );
    }

    return TalkerWrapper(
      talker: ref.watch(talkerProvider),
      child: Scaffold(
        appBar: AppBar(
          title: const Text('EQMonitor'),
        ),
        body: _HomeBodyWidget(mapKey: mapKey),
      ),
    );
  }
}

class _HomeBodyWidget extends HookConsumerWidget {
  const _HomeBodyWidget({
    required this.mapKey,
  });

  final GlobalKey<State<StatefulWidget>> mapKey;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final brightness = MediaQuery.of(context).platformBrightness;
    final moveController = useAnimationController();
    final scaleController = useAnimationController();
    // * mapViewModelへWidgetの各情報を登録しながら 初期化
    useEffect(
      () {
        WidgetsBinding.instance.endOfFrame.then((_) {
          // Widgetのサイズを登録
          final renderBox =
              mapKey.currentContext!.findRenderObject()! as RenderBox;
          ref.read(mapViewModelProvider(mapKey).notifier)
            ..registerRenderBox(
              renderBox,
            )
            ..registerAnimationControllers(
              moveController: moveController,
              scaleController: scaleController,
            )
            ..fitBounds([
              const LatLng(45.8, 145.1),
              const LatLng(30, 128.8),
            ]);
        });
        return null;
      },
      [mapKey],
    );
    final sheetController = useSheetController();
    return Stack(
      children: [
        // background
        Container(
          color: Color.lerp(
            Theme.of(context).colorScheme.background,
            Colors.blueAccent,
            brightness == Brightness.light ? 0.3 : 0.15,
          ),
        ),
        ClipRRect(
          key: mapKey,
          child: Stack(
            children: [
              BaseMapWidget(mapKey: mapKey),
              KmoniMapWidget(mapKey: mapKey),
              MapTouchHandlerWidget(mapKey: mapKey),
            ],
          ),
        ),
        SafeArea(
          child: ElevatedButton.icon(
            onPressed: () {
              ref.read(telegramWsProvider.notifier).requestSample();
            },
            label: const Text('request Sample Telegram'),
            icon: const Icon(Icons.send),
          ),
        ),
        SheetFloatingActionButtons(
          controller: sheetController,
          fab: [
            FloatingActionButton.small(
              onPressed: () {
                ref.read(mapViewModelProvider(mapKey).notifier).animatedBounds([
                  const LatLng(45.8, 145.1),
                  const LatLng(30, 128.8),
                ]);
              },
              backgroundColor: Colors.blueGrey,
              child: const Icon(Icons.home),
            ),
          ],
        ),
        // Sheet
        BasicModalSheet(
          controller: sheetController,
          children: [
            const SheetStatusWidget(),
            const SizedBox(height: 4),
            SheetItem(
              child: ListTile(
                title: const Text('強震モニタ設定'),
                onTap: () {
                  showDialog<void>(
                    context: context,
                    builder: (context) => const KmoniSettingsDialogWidget(),
                  );
                },
              ),
            )
          ],
        ),
      ],
    );
  }
}
