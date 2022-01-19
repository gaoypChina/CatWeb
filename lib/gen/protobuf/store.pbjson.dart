///
//  Generated code. Do not modify.
//  source: store.proto
//
// @dart = 2.12
// ignore_for_file: annotate_overrides,camel_case_types,unnecessary_const,non_constant_identifier_names,library_prefixes,unused_import,unused_shown_name,return_of_invalid_type,unnecessary_this,prefer_final_fields,deprecated_member_use_from_same_package

import 'dart:core' as $core;
import 'dart:convert' as $convert;
import 'dart:typed_data' as $typed_data;

@$core.Deprecated('Use regFieldDescriptor instead')
const RegField$json = const {
  '1': 'RegField',
  '2': const [
    const {'1': 'reg', '3': 1, '4': 1, '5': 9, '10': 'reg'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
};

/// Descriptor for `RegField`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List regFieldDescriptor = $convert.base64Decode(
    'CghSZWdGaWVsZBIQCgNyZWcYASABKAlSA3JlZxIUCgV2YWx1ZRgCIAEoCVIFdmFsdWU=');
@$core.Deprecated('Use siteConfigDescriptor instead')
const SiteConfig$json = const {
  '1': 'SiteConfig',
  '2': const [
    const {'1': 'name', '3': 1, '4': 1, '5': 9, '10': 'name'},
    const {'1': 'base_url', '3': 2, '4': 1, '5': 9, '10': 'baseUrl'},
    const {'1': 'login_url', '3': 3, '4': 1, '5': 9, '10': 'loginUrl'},
    const {
      '1': 'login_cookie',
      '3': 4,
      '4': 1,
      '5': 11,
      '6': '.RegField',
      '10': 'loginCookie'
    },
    const {'1': 'version', '3': 5, '4': 1, '5': 9, '10': 'version'},
    const {'1': 'upgrade_url', '3': 6, '4': 1, '5': 9, '10': 'upgradeUrl'},
    const {'1': 'flag', '3': 7, '4': 1, '5': 9, '10': 'flag'},
    const {'1': 'readme', '3': 8, '4': 1, '5': 9, '10': 'readme'},
    const {
      '1': 'headers',
      '3': 15,
      '4': 3,
      '5': 11,
      '6': '.RegField',
      '10': 'headers'
    },
    const {
      '1': 'cookies',
      '3': 16,
      '4': 3,
      '5': 11,
      '6': '.RegField',
      '10': 'cookies'
    },
    const {
      '1': 'gallery_parsers',
      '3': 20,
      '4': 3,
      '5': 11,
      '6': '.GalleryParser',
      '10': 'galleryParsers'
    },
    const {
      '1': 'list_view_parsers',
      '3': 21,
      '4': 3,
      '5': 11,
      '6': '.ListViewParser',
      '10': 'listViewParsers'
    },
    const {
      '1': 'image_parsers',
      '3': 22,
      '4': 3,
      '5': 11,
      '6': '.ImageParser',
      '10': 'imageParsers'
    },
    const {
      '1': 'actions',
      '3': 23,
      '4': 3,
      '5': 11,
      '6': '.ActionCombine',
      '10': 'actions'
    },
    const {
      '1': 'pages',
      '3': 24,
      '4': 3,
      '5': 11,
      '6': '.SitePage',
      '10': 'pages'
    },
  ],
};

/// Descriptor for `SiteConfig`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List siteConfigDescriptor = $convert.base64Decode(
    'CgpTaXRlQ29uZmlnEhIKBG5hbWUYASABKAlSBG5hbWUSGQoIYmFzZV91cmwYAiABKAlSB2Jhc2VVcmwSGwoJbG9naW5fdXJsGAMgASgJUghsb2dpblVybBIsCgxsb2dpbl9jb29raWUYBCABKAsyCS5SZWdGaWVsZFILbG9naW5Db29raWUSGAoHdmVyc2lvbhgFIAEoCVIHdmVyc2lvbhIfCgt1cGdyYWRlX3VybBgGIAEoCVIKdXBncmFkZVVybBISCgRmbGFnGAcgASgJUgRmbGFnEhYKBnJlYWRtZRgIIAEoCVIGcmVhZG1lEiMKB2hlYWRlcnMYDyADKAsyCS5SZWdGaWVsZFIHaGVhZGVycxIjCgdjb29raWVzGBAgAygLMgkuUmVnRmllbGRSB2Nvb2tpZXMSNwoPZ2FsbGVyeV9wYXJzZXJzGBQgAygLMg4uR2FsbGVyeVBhcnNlclIOZ2FsbGVyeVBhcnNlcnMSOwoRbGlzdF92aWV3X3BhcnNlcnMYFSADKAsyDy5MaXN0Vmlld1BhcnNlclIPbGlzdFZpZXdQYXJzZXJzEjEKDWltYWdlX3BhcnNlcnMYFiADKAsyDC5JbWFnZVBhcnNlclIMaW1hZ2VQYXJzZXJzEigKB2FjdGlvbnMYFyADKAsyDi5BY3Rpb25Db21iaW5lUgdhY3Rpb25zEh8KBXBhZ2VzGBggAygLMgkuU2l0ZVBhZ2VSBXBhZ2Vz');
@$core.Deprecated('Use envStoreDescriptor instead')
const EnvStore$json = const {
  '1': 'EnvStore',
  '2': const [
    const {
      '1': 'env',
      '3': 1,
      '4': 3,
      '5': 11,
      '6': '.EnvStore.EnvEntry',
      '10': 'env'
    },
  ],
  '3': const [EnvStore_EnvEntry$json],
};

@$core.Deprecated('Use envStoreDescriptor instead')
const EnvStore_EnvEntry$json = const {
  '1': 'EnvEntry',
  '2': const [
    const {'1': 'key', '3': 1, '4': 1, '5': 9, '10': 'key'},
    const {'1': 'value', '3': 2, '4': 1, '5': 9, '10': 'value'},
  ],
  '7': const {'7': true},
};

/// Descriptor for `EnvStore`. Decode as a `google.protobuf.DescriptorProto`.
final $typed_data.Uint8List envStoreDescriptor = $convert.base64Decode(
    'CghFbnZTdG9yZRIkCgNlbnYYASADKAsyEi5FbnZTdG9yZS5FbnZFbnRyeVIDZW52GjYKCEVudkVudHJ5EhAKA2tleRgBIAEoCVIDa2V5EhQKBXZhbHVlGAIgASgJUgV2YWx1ZToCOAE=');
