import 'dart:convert';

import 'package:data_kontakkk/service/kontak_service.dart';

class KontakController {
  final kontakService = KontakService();

  Future<Map<String, dynamic>> addPerson(Kontak person, File? file) async {
    Map<String, String> data = {
      'nama' : person.nama,
      'email' : person.email,
      'alamat': person.alamat,
      'no_telepon': person.noTelepon,
    };

    try{
      var response = await kontakService.addPerson(data, file);

      if (response.statusCode == 201){
        return {
          'success': true,
          'message': 'Data berhasil disimpan',
        };
      }else{
        if (response.headers['content-type']!.contains('application/json')){
          var decodedJson = jsonDecode(response.body);
          return {
            'success': false,
            'message': decodedJson['message']??'Terjadi kesalahan',
          };
        }
        
      }
    }
  }
}