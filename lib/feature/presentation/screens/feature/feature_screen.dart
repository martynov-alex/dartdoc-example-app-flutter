import 'package:dartdoc_example_flutter/feature/domain/entities/feature_data_entity.dart';
import 'package:dartdoc_example_flutter/feature/presentation/screens/feature/feature_wm.dart';
import 'package:dartdoc_example_flutter/feature/presentation/widgets/icon_widget.dart';
import 'package:dartdoc_example_flutter/feature/presentation/widgets/text_widget.dart';
import 'package:elementary/elementary.dart';
import 'package:elementary_helper/elementary_helper.dart';
import 'package:flutter/material.dart';

/// Экран фичи.
///
/// Можно вставить HTML код, например, картинку:
/// <br><image width='200' src='/assets/feature_screen.png'>
/// <br><p>Или добавить скринкаст:</p>
/// <video width="200" controls autoplay><source src='/assets/feature_screencast.mov' type="video/mp4"></video>
/// <br><p>Или видео с Youtube:</p>
/// <iframe width="480" height="270" src="https://www.youtube.com/embed/YYb3KBXa624"/>
/// {@category Фича}
/// {@category Elementary}
class FeatureScreen extends ElementaryWidget<IFeatureWM> {
  /// @nodoc
  const FeatureScreen({
    Key? key,
    WidgetModelFactory wmFactory = featureWMFactory,
  }) : super(wmFactory, key: key);

  @override
  Widget build(IFeatureWM wm) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: wm.back,
          icon: const Icon(Icons.arrow_back_outlined),
        ),
        title: Text(wm.screenTitle),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 200,
            child: Center(
              child: EntityStateNotifierBuilder<FeatureDataEntity>(
                listenableEntityState: wm.featureDataState,
                loadingBuilder: (_, __) => const CircularProgressIndicator(),
                errorBuilder: (_, __, ___) => const Text(
                  '‼️ Ошибка ‼️',
                  style: TextStyle(color: Colors.red),
                ),
                builder: (_, data) => Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      data?.dataType.typeName ?? '',
                      style: const TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Text(data?.data ?? ''),
                    const SizedBox(height: 10),
                    const TextWidget(),
                    const IconWidget(),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(height: 50),
          ElevatedButton(
            onPressed: wm.fetch,
            child: const Text('Получить данные'),
          ),
        ],
      ),
    );
  }
}
