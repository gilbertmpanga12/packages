// Autogenerated from Pigeon (v0.1.0-experimental.10), do not edit directly.
// See also: https://pub.dev/packages/pigeon
// ignore_for_file: public_member_api_docs, non_constant_identifier_names, avoid_as, unused_import
import 'dart:async';
import 'package:flutter/services.dart';

class SearchReply {
  String result;
  String error;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['result'] = result;
    pigeonMap['error'] = error;
    return pigeonMap;
  }

  // ignore: unused_element
  static SearchReply _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final SearchReply result = SearchReply();
    result.result = pigeonMap['result'];
    result.error = pigeonMap['error'];
    return result;
  }
}

class SearchRequest {
  String query;
  int anInt;
  bool aBool;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['query'] = query;
    pigeonMap['anInt'] = anInt;
    pigeonMap['aBool'] = aBool;
    return pigeonMap;
  }

  // ignore: unused_element
  static SearchRequest _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final SearchRequest result = SearchRequest();
    result.query = pigeonMap['query'];
    result.anInt = pigeonMap['anInt'];
    result.aBool = pigeonMap['aBool'];
    return result;
  }
}

class Nested {
  SearchRequest request;
  // ignore: unused_element
  Map<dynamic, dynamic> _toMap() {
    final Map<dynamic, dynamic> pigeonMap = <dynamic, dynamic>{};
    pigeonMap['request'] = request._toMap();
    return pigeonMap;
  }

  // ignore: unused_element
  static Nested _fromMap(Map<dynamic, dynamic> pigeonMap) {
    final Nested result = Nested();
    result.request = SearchRequest._fromMap(pigeonMap['request']);
    return result;
  }
}

abstract class FlutterSearchApi {
  SearchReply search(SearchRequest arg);
}

void FlutterSearchApiSetup(FlutterSearchApi api) {
  {
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.FlutterSearchApi.search', StandardMessageCodec());
    channel.setMessageHandler((dynamic message) async {
      final Map<dynamic, dynamic> mapMessage = message as Map<dynamic, dynamic>;
      final SearchRequest input = SearchRequest._fromMap(mapMessage);
      final SearchReply output = api.search(input);
      return output._toMap();
    });
  }
}

class NestedApi {
  Future<SearchReply> search(Nested arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.NestedApi.search', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      return SearchReply._fromMap(replyMap['result']);
    }
  }
}

class Api {
  Future<SearchReply> search(SearchRequest arg) async {
    final Map<dynamic, dynamic> requestMap = arg._toMap();
    const BasicMessageChannel<dynamic> channel = BasicMessageChannel<dynamic>(
        'dev.flutter.pigeon.Api.search', StandardMessageCodec());

    final Map<dynamic, dynamic> replyMap = await channel.send(requestMap);
    if (replyMap == null) {
      throw PlatformException(
          code: 'channel-error',
          message: 'Unable to establish connection on channel.',
          details: null);
    } else if (replyMap['error'] != null) {
      final Map<dynamic, dynamic> error = replyMap['error'];
      throw PlatformException(
          code: error['code'],
          message: error['message'],
          details: error['details']);
    } else {
      return SearchReply._fromMap(replyMap['result']);
    }
  }
}
