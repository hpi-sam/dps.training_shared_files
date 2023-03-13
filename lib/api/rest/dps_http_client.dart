// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:dps.training_shared_files/api/core/urls.dart';

/// HttpClient to handle all the communication to the backend DPS server
///
/// All of our server requests use the methods provided by
/// this class instead of the default [http] package methods.
class DpsHttpClient {
  static final BaseOptions _dioBaseOptions = BaseOptions(
    baseUrl: baseUri.toString(),
  );
  final Dio _dioClient;

  final String token;

  DpsHttpClient._internal({
    required Dio dioClient,
    required this.token,
  }) : _dioClient = dioClient;

  static Map<String, String> _constructAuthHeader({required String token}) {
    return {'Authorization': 'Token $token'};
  }

  static Future<DpsHttpClient> _sendAuthRequest({
    required Uri uri,
    Map<String, dynamic>? json,
  }) async {
    final dio = Dio(_dioBaseOptions);

    final Response response = await dio.postUri<Map<String, dynamic>>(
      uri,
      data: json,
    );

    final Map<String, dynamic> jsonResponse = response.data;
    final String token = jsonResponse['token'];

    dio.options.headers.addAll(_constructAuthHeader(token: token));

    return DpsHttpClient._internal(
      dioClient: dio,
      token: token,
    );
  }

  static Future<DpsHttpClient> trainerLogIn({
    required String username,
    required String password,
  }) async {
    final Map<String, dynamic> json = {
      'username': username,
      'password': password,
    };

    final DpsHttpClient client = await _sendAuthRequest(
      uri: trainerLogInUrl(),
      json: json,
    );

    return client;
  }

  static Future<DpsHttpClient> trainerSignUp({
    required String username,
    required String password,
    required String email,
  }) async {
    Map<String, dynamic> json = {
      'username': username,
      'password1': password,
      'password2': password,
      'email': email,
    };

    final DpsHttpClient client = await _sendAuthRequest(
      uri: trainerSignUpUrl(),
      json: json,
    );

    return client;
  }

  static Future<DpsHttpClient> playerSignUp({String? username}) async {
    Map<String, dynamic>? json;
    if (username != null) {
      json = {'username': username};
    }

    final DpsHttpClient client = await _sendAuthRequest(
      uri: playersSignUpUrl(),
      json: json,
    );

    return client;
  }

  static DpsHttpClient restore({required String token}) {
    final Dio dio = Dio(_dioBaseOptions);
    dio.options.headers.addAll(_constructAuthHeader(token: token));
    
    return DpsHttpClient._internal(
      dioClient: dio,
      token: token,
    );
  }

  Future<Response> get<T>({required Uri uri}) {
    return _dioClient.getUri<T>(uri);
  }

  Future<Response> post<T>({required Uri uri, Object? data}) {
    return _dioClient.postUri<T>(uri, data: data);
  }
}





























// abstract class Session {
//   static String? _token;
//   static String? _invitationCode;

//   /// Deletes the currently saved session from the [SharedPreferences]
//   static void deleteSession() async {
//     final prefs = await SharedPreferences.getInstance();
//     prefs.remove("token");
//     prefs.remove("invitationCode");
//   }

//   /// Tries to restore the token and session by loading them from the [SharedPreferences].
//   /// Returns true on success and false on failure.
//   static Future<bool> restore() async {
//     final prefs = await SharedPreferences.getInstance();
//     String? token = prefs.getString("token");
//     String? invitationCode = prefs.getString("invitationCode");
//     if (token != null && invitationCode != null) {
//       _token = token;
//       _invitationCode = invitationCode;
//       return Future.value(true);
//     }
//     return Future.value(false);
//   }

//   /// GET request without session information in its header.
//   static Future<http.Response> getWithoutAuth(Uri url) async {
//     http.Response response = await http.get(url);
//     return response;
//   }

//   /// GET request that includes session information in its header.
//   static Future<http.Response> get(Uri url) async {
//     http.Response response = await http.get(url, headers: buildHeaders());
//     return response;
//   }

//   /// POST request that includes session information in its header.
//   static Future<http.Response> post(Uri url, dynamic data) async {
//     http.Response response =
//         await http.post(url, body: data, headers: buildHeaders());
//     return response;
//   }

//   /// POST request that updates session and token.
//   ///
//   /// Usually only needed to be called once to start a new session.
//   static Future<http.Response> postLogin(Uri url, dynamic data) async {
//     http.Response response =
//         await http.post(url, body: data, headers: _baseHeaders);
//     _updateCookie(response);
//     return response;
//   }

//   /// Parses token and session data to a Map that can be sent in the header of
//   /// a Request.
//   static Map<String, String> buildHeaders() {
//     Map<String, String> headers = {};
//     headers.addAll(_baseHeaders);
//     String? token = _token;
//     if (token == null) {
//       throw Exception(
//           "Unauthorized request - fetch authorization cookies by calling a postLogin request once before calling any post requests");
//     } else {
//       headers['Authorization'] = 'Token ' + _token!;
//       return headers;
//     }
//   }

//   ///Saves invitationCode. Needed for reconnecting Websocket
//   static Future<void> updateInvitationCode(String? invitationCode) async {
//     if (invitationCode != null) {
//       final prefs = await SharedPreferences.getInstance();
//       _invitationCode = invitationCode;
//       prefs.setString("invitationCode", _invitationCode!);
//       print("Updated Invitationcode: " + invitationCode);
//     } else {
//       throw Exception("No invitationCode given");
//     }
//   }

//   static String? getInvitationCode() {
//     return _invitationCode;
//   }

//   /// Parses token and session from the cookie included in [response] header.
//   static void _updateCookie(http.Response response) async {
//     var rawCookie = jsonDecode(utf8.decode(response.bodyBytes));
//     if (rawCookie != null) {
//       _token = rawCookie["token"];

//       // save token and session on disk
//       if (_token != null) {
//         final prefs = await SharedPreferences.getInstance();
//         prefs.setString("token", _token!);
//       }
//     } else {
//       throw Exception("No token given in Login body");
//     }
//   }
// }
