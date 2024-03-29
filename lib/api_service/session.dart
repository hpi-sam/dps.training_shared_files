// Package imports:
import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:shared_preferences/shared_preferences.dart';

/// [http.dart] wrapper that handles session and token management.
///
/// All of our server requests should use the get & post methods provided by
/// this class instead of the default [http] methods.
abstract class Session {
  static final Map<String, String> _baseHeaders = {
    "Accept": "application/json",
    "content-type": "application/json"
  };
  static String? _token;

  /// Deletes the currently saved session from the [SharedPreferences]
  static void deleteSession() async {
    final prefs = await SharedPreferences.getInstance();
    prefs.remove("token");
  }

  /// Tries to restore the token and session by loading them from the [SharedPreferences].
  /// Returns true on success and false on failure.
  static Future<bool> restore() async {
    final prefs = await SharedPreferences.getInstance();
    String? token = prefs.getString("token");
    if (token != null) {
      _token = token;
      return true;
    }
    return false;
  }

  /// GET request without session information in its header.
  static Future<http.Response> getWithoutAuth(String url) async {
    http.Response response = await http.get(Uri.parse(url));
    return response;
  }

  /// GET request that includes session information in its header.
  static Future<http.Response> get(String url) async {
    http.Response response =
        await http.get(Uri.parse(url), headers: _buildHeaders());
    return response;
  }

  /// POST request that includes session information in its header.
  static Future<http.Response> post(String url, dynamic data) async {
    http.Response response =
        await http.post(Uri.parse(url), body: data, headers: _buildHeaders());
    return response;
  }

  /// POST request that updates session and token.
  ///
  /// Usually only needed to be called once to start a new session.
  static Future<http.Response> postLogin(String url, dynamic data) async {
    http.Response response =
        await http.post(Uri.parse(url), body: data, headers: _baseHeaders);
    _updateCookie(response);
    return response;
  }

  /// Parses token and session data to a Map that can be sent in the header of
  /// a Request.
  static Map<String, String> _buildHeaders() {
    Map<String, String> headers = {};
    headers.addAll(_baseHeaders);
    String? token = _token;
    if (token == null) {
      throw Exception(
          "Unauthorized request - fetch authorization cookies by calling a postLogin request once before calling any post requests");
    } else {
      headers['Authorization'] = 'Token ' + _token!;
      return headers;
    }
  }

  /// Parses token and session from the cookie included in [response] header.
  static void _updateCookie(http.Response response) async {
    var rawCookie = jsonDecode(utf8.decode(response.bodyBytes));
    if (rawCookie != null) {
      _token = rawCookie["token"];

      // save token and session on disk
      if (_token != null) {
        final prefs = await SharedPreferences.getInstance();
        prefs.setString("token", _token!);
      }
    } else {
      throw Exception("No token given in Login body");
    }
  }
}
