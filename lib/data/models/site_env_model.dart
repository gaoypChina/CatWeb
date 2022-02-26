import 'dart:typed_data';

import 'package:catweb/data/controller/site_controller.dart';
import 'package:catweb/gen/protobuf/store.pbserver.dart';
import 'package:get/get.dart';

abstract class EnvMargeAble {
  Map<String, String> get env;
}

abstract class HasEnv {
  SiteEnvModel get envModel;
}

class SiteEnvModel implements EnvMargeAble {
  SiteEnvModel([Map<String, String>? env]) : _env = env ?? {};
  final Map<String, String> _env;

  factory SiteEnvModel.fromBuffer(List<int> buffer) =>
      SiteEnvModel(EnvStore.fromBuffer(buffer).env);

  Uint8List writeToBuffer() => EnvStore(env: _env).writeToBuffer();

  @override
  Map<String, String> get env => _env;

  SiteEnvModel copy() => SiteEnvModel({..._env});

  SiteEnvModel merge(EnvMargeAble envModel) {
    _env.addAll(envModel.env);
    return this;
  }

  SiteEnvModel mergeMap(Map<String, String> map) {
    _env.addAll(map);
    return this;
  }

  SiteEnvModel create(EnvMargeAble envModel) {
    return SiteEnvModel({..._env, ...envModel.env});
  }

  String? resolve(String? input) {
    if (input == null) return null;
    return replace(input);
  }

  String replace(String input) {
    final exp = RegExp(r'\$\{(?<var>\w+):(?<context>[^:]*):?(?<default>.*)\}');
    final matches = exp.allMatches(input);
    for (final match in matches) {
      final varName = match.namedGroup('var')!;
      final context = match.namedGroup('context')!;
      final defaultValue = match.namedGroup('default');
      if (_env.containsKey(varName) && _env[varName]!.isNotEmpty) {
        input = input.replaceAll(match.group(0)!, context);
      } else {
        input = input.replaceAll(match.group(0)!, defaultValue ?? '');
      }
    }
    for (final entity in _env.entries) {
      input = input.replaceAll('{${entity.key}}', entity.value);
    }
    return input;
  }

  void removeKeys(Iterable<String> keys) {
    _env.removeWhere((key, value) => keys.contains(key));
  }

  void set(String key, String value) => _env[key] = value;

  void clear() => _env.clear();

  @override
  String toString() => '<Env> $_env';
}

extension EnvString on String {
  String env(SiteEnvModel env) => env.replace(this);

  String globalEnv() =>
      Get.find<GlobalController>().website.globalEnv.replace(this);
}
