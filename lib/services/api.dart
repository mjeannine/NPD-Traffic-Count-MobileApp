import 'dart:convert';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:provider/provider.dart';
import 'package:npd_traffic_count_app/services/models/auth_account.dart';
import 'package:npd_traffic_count_app/services/models/counting.dart';
import 'package:npd_traffic_count_app/services/models/phase.dart';
import 'package:npd_traffic_count_app/services/models/spots.dart';
import 'package:npd_traffic_count_app/services/models/vehicles.dart';
import 'package:npd_traffic_count_app/services/models/token_provider.dart';

String token = 'e1b3922370f0b65a29ce7cdf57898c2098c8fe8b';


class GetPhases {


  // a service to load phases
  Future<List> fetchPhase() async {
    // String token = context.watch<TokenProvider>().token;
    final response = await http.get(
      Uri.parse(
          'https://npdtcss.azurewebsites.net/appapi/phase/{id}/'),
      headers: {
        HttpHeaders.authorizationHeader: 'Token $token',
      },
    );

    List<Phase> phase = [];

    if (response.statusCode == 200) {
      // If the server did return a 200 OK response,
      // then parse the JSON.
      for (var s in jsonDecode(response.body)) {
        phase.add(Phase.fromJson(s));
      }
      return phase;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load phases');
    }
  }

// a service to load the roads

  Future<List> fetchSpot() async {
    final response = await http.get(
      Uri.parse('https://npdtcss.azurewebsites.net/appapi/road/'),
      headers: {
        HttpHeaders.authorizationHeader:
            'Token e1b3922370f0b65a29ce7cdf57898c2098c8fe8b',
      },
    );

    List<Spot> spots = [];

    if (response.statusCode == 200) {
      
      for (var s in jsonDecode(response.body)) {
        spots.add(Spot.fromJson(s));
      }
      return spots;
    } else {
      // If the server did not return a 200 OK response,
      // then throw an exception.
      throw Exception('Failed to load spots');
    }
  }

// a service to load vehicles
  Future<Vehicle> fetchVehicles() async {
    final response = await http.get(
      Uri.parse('https://npdtcss.azurewebsites.net/appapi/vehicles-detail/'),
      headers: {
        HttpHeaders.authorizationHeader:
            'Token e1b3922370f0b65a29ce7cdf57898c2098c8fe8b',
      },
    );
    if (response.statusCode == 200) {
    

      return Vehicle.fromJson(jsonDecode(response.body));
    } else {
   
      throw Exception('Failed to load vehicles');
    }
  }
}

// filtering class services
Future<Account> createAccount(
    String firstName,
    String lastName,
    String gender,
    String phone,
    String identity,
    String spot,
    String email,   
    String password,
    String password2) async {
  final response = await http.post(
    Uri.parse('https://npdtcss.azurewebsites.net/appapi/account/register/'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    // Converting string to json before posting
    body: jsonEncode(<String, String>{
      'first_name': firstName,
      'last_name': lastName,
      'gender': gender,
      'telephone': phone,
      'Id_number': identity,
      'spot': spot,
      'email': email,
      'password': password,
      'password2': password2
    }),
  );

  if (response.statusCode == 201) {
    return Account.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Failed to create account.');
  }
}

Future<LoginResponse> login(LoginRequest loginRequest) async {
  final response = await http.post(
      Uri.parse('https://npdtcss.azurewebsites.net/appapi/account/'),
      body: loginRequest.toJson());
  if (response.statusCode == 200 || response.statusCode == 400) {
 
    return LoginResponse.fromJson(jsonDecode(response.body));
  } else {

    throw Exception('Failed to sign in.');
  }
}



// class Filtering {
//   // future function for filtering approved species
//   static Future<List<Specie>> fetchSpecies(String query) async {
//     final url =
//         Uri.parse('https://rbis.azurewebsites.net/api/list/approved-species/');
//     final response = await http.get(
//       url,
//       headers: {
//         HttpHeaders.authorizationHeader:
//             'Token 07be7ff03998acd9aae83a1413e962d6b9a38c58',
//       },
//     );

//     if (response.statusCode == 200) {
//       final List books = json.decode(response.body);

//       return books.map((json) => Specie.fromJson(json)).where((specie) {
//         final specieLower = specie.specieName.toLowerCase();
//         final statusLower = specie.status.toLowerCase();
//         final searchLower = query.toLowerCase();

//         return specieLower.contains(searchLower) ||
//             statusLower.contains(searchLower);
//       }).toList();
//     } else {
//       throw Exception();
//     }
//   }

//   // future function for filtering Non approved species

//   static Future<List<Specie>> filterNonApproved(String query) async {
//     final url = Uri.parse(
//         'https://rbis.azurewebsites.net/api/list/non-approved-species/');
//     final response = await http.get(
//       url,
//       headers: {
//         HttpHeaders.authorizationHeader:
//             'Token 07be7ff03998acd9aae83a1413e962d6b9a38c58',
//       },
//     );

//     if (response.statusCode == 200) {
//       final List books = json.decode(response.body);

//       return books.map((json) => Specie.fromJson(json)).where((specie) {
//         final specieLower = specie.specieName.toLowerCase();
//         final statusLower = specie.status.toLowerCase();
//         final searchLower = query.toLowerCase();

//         return specieLower.contains(searchLower) ||
//             statusLower.contains(searchLower);
//       }).toList();
//     } else {
//       throw Exception();
//     }
//   }
//   // future function for filtering Non approved species

//   static Future<List<Specie>> filterSpecie(String query) async {
//     final url =
//         Uri.parse('https://rbis.azurewebsites.net/api/list/approved-species/');
//     final response = await http.get(
//       url,
//       headers: {
//         HttpHeaders.authorizationHeader:
//             'Token 07be7ff03998acd9aae83a1413e962d6b9a38c58',
//       },
//     );

//     if (response.statusCode == 200) {
//       final List books = json.decode(response.body);

//       return books.map((json) => Specie.fromJson(json)).where((specie) {
//         final specieLower = specie.specieName.toLowerCase();
//         final statusLower = specie.status.toLowerCase();
//         final searchLower = query.toLowerCase();

//         return specieLower.contains(searchLower) ||
//             statusLower.contains(searchLower);
//       }).toList();
//     } else {
//       throw Exception();
//     }
//   }
// }

// class ProfileStatistic{
//     Future<List> fetchAmphibiansStatistic() async {
//     // String token = context.watch<TokenProvider>().token;
//     final response = await http.get(
//       Uri.parse(
//           'https://rbis.azurewebsites.net/api/list/non-approved-species/'),
//       headers: {
//         HttpHeaders.authorizationHeader: 'Token $token',
//       },
//     );

//     List<Specie> specie = [];

//     if (response.statusCode == 200) {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//       for (var s in jsonDecode(response.body)) {
//         specie.add(Specie.fromJson(s));
//       }
//       return specie;
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to load amphibians statistics');
//     }
//   }
// Future<List> fetchFishesStatistic() async {
//     // String token = context.watch<TokenProvider>().token;
//     final response = await http.get(
//       Uri.parse(
//           'https://rbis.azurewebsites.net/api/list/non-approved-species/'),
//       headers: {
//         HttpHeaders.authorizationHeader: 'Token $token',
//       },
//     );

//     List<Specie> specie = [];

//     if (response.statusCode == 200) {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//       for (var s in jsonDecode(response.body)) {
//         specie.add(Specie.fromJson(s));
//       }
//       return specie;
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to load amphibians statistics');
//     }
//   }

// Future<List> fetchInvertablateStatistic() async {
//     // String token = context.watch<TokenProvider>().token;
//     final response = await http.get(
//       Uri.parse(
//           'https://rbis.azurewebsites.net/api/list/non-approved-species/'),
//       headers: {
//         HttpHeaders.authorizationHeader: 'Token $token',
//       },
//     );

//     List<Specie> specie = [];

//     if (response.statusCode == 200) {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//       for (var s in jsonDecode(response.body)) {
//         specie.add(Specie.fromJson(s));
//       }
//       return specie;
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to load amphibians statistics');
//     }
//   }
// Future<List> fetchBirdStatistic() async {
//     // String token = context.watch<TokenProvider>().token;
//     final response = await http.get(
//       Uri.parse(
//           'https://rbis.azurewebsites.net/api/list/non-approved-species/'),
//       headers: {
//         HttpHeaders.authorizationHeader: 'Token $token',
//       },
//     );

//     List<Specie> specie = [];

//     if (response.statusCode == 200) {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//       for (var s in jsonDecode(response.body)) {
//         specie.add(Specie.fromJson(s));
//       }
//       return specie;
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to load amphibians statistics');
//     }
//   }
// Future<List> fetchPlantStatistic() async {
//     // String token = context.watch<TokenProvider>().token;
//     final response = await http.get(
//       Uri.parse(
//           'https://rbis.azurewebsites.net/api/list/non-approved-species/'),
//       headers: {
//         HttpHeaders.authorizationHeader: 'Token $token',
//       },
//     );

//     List<Specie> specie = [];

//     if (response.statusCode == 200) {
//       // If the server did return a 200 OK response,
//       // then parse the JSON.
//       for (var s in jsonDecode(response.body)) {
//         specie.add(Specie.fromJson(s));
//       }
//       return specie;
//     } else {
//       // If the server did not return a 200 OK response,
//       // then throw an exception.
//       throw Exception('Failed to load amphibians statistics');
//     }
//   }

// }
// Footer
// © 2023 GitHub, Inc.