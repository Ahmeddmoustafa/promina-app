import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;

class PropertyRemoteSource {
  // Render URL SERVER
  final String baseUrl = 'https://property-manager-backend-z2yr.onrender.com';

// get all properties in the remote DB
  // Future<List<PropertyModel>> getProperties() async {
  //   try {
  //     print("GETTING DATA FROM REMOTE DB....");
  //     final String token = await AppPreferences.getToken();
  //     final String refreshToken = await AppPreferences.getRefreshToken();
  //     final response = await http.get(
  //       Uri.parse("$baseUrl/properties/all"),
  //       headers: {
  //         'Content-Type': 'application/json',
  //         'Authorization': token,
  //         'Refresh_Token': refreshToken
  //       },
  //     );

  //     final List<PropertyModel> properties = [];
  //     // print(" no of properties ${snapshot.docs.length}");
  //     // print(" no of properties ${snapshot.docs.last.data()}");
  //     print(response.body);
  //     final List<dynamic> bodyJson = json.decode(response.body);

  //     print("Initializing the Property Models....");

  //     if (response.statusCode == 200) {
  //       await AppPreferences.setToken(response.headers['authorization'] ?? "");

  //       bodyJson.forEach((propertyJson) {
  //         // print("${propertyJson.data()}");
  //         return properties.add(
  //           PropertyModel.fromJson(
  //             propertyJson as Map<String, dynamic>,
  //           ),
  //         );
  //       });
  //       return properties;
  //     }
  //     throw Exception("INVALID REQUEST");
  //   } catch (err) {
  //     throw Exception(err.toString());
  //   }
  // }
}
