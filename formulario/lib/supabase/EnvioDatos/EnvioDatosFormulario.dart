import 'package:supabase_flutter/supabase_flutter.dart';
import 'package:formulario/supabase/Conexion/SupabaseService.dart';
import 'package:formulario/pantallas/funciones/Controladores_Texto.dart';
import 'package:supabase/supabase.dart';

class EnvioDatosFormularioPrincipal {
  final FormData formData = FormData(); // Instancia del Singleton
  static final SupabaseClient _supabaseClient = SupabaseService.supabaseClient;

  Future<void> enviarDatosPersonales() async {
    //Se envian los datos personales a supabase
    var edad = formData.edad_C.text;
    var genero = formData.genero_C.text;
    var altura = formData.altura_C.text;
    var pais = formData.pais_C.text;
    var nombre = formData.nombre_C.text;
    var fecha_nac = formData.fecha_C.text;
    var id_usuario1 = 1; //Es temporal el pasar el id del usuario manualmente

    var response = await _supabaseClient
        .from('informacion_basica_usuario') // nombre de la tabla
        .insert({
      'nombre': nombre,
      'edad': edad,
      'genero': genero,
      'fecha_nacimiento': fecha_nac,
      'altura': altura,
      'nacionalidad': pais,
      'id_usuario': id_usuario1
    });

    if (response != null) {
      if (response.error != null) {
        print("Error al enviar datos: ${response.error!.message}");
      }
    } else {
      print("Exito al enviar datos");
    }
  }

  Future<void> enviarDatosFisicos() async {
    //Se envian los datos fisicos
    var discapacidad = formData.discapacidad_C.text;
    var lesion = formData.lesion_C.text;
    var experiencia = formData.experiencia_C.text;
    var disponibilidad = formData.tiempoEntrenamiento_C.text;
    var hayAlergias = formData.hayAlergias;
    var id_usuario1 = 1; //Es temporal el pasar el id del usuario manualmento

    var response =
        await _supabaseClient.from('informacion_especial_usuario').insert({
      'discapacidad': discapacidad,
      'lesion': lesion,
      'experiencia': experiencia,
      'disponibilidad': disponibilidad,
      'alergias': hayAlergias,
      'id_usuario': id_usuario1
    });

    if (response != null) {
      if (response.error != null) {
        print("Error al enviar datos: ${response.error!.message}");
      }
    } else {
      print("Exito al enviar datos");
    }
  }

  Future<void> enviarDatosAlergias() async {
    //Se envian los datos fisicos
    var lacteos = formData.aLacteos;
    var trigo = formData.aTrigo;
    var soya = formData.aSoya;
    var pescado = formData.aPescado;
    var frutos = formData.aFrutosSecos;
    var mani = formData.aMani;
    var mariscos = formData.aMariscos;
    var huevos = formData.aHuevos;
    var otroTipo = formData.otroAlimento_C.text;
    var id_usuario1 = 1; //Es temporal el pasar el id del usuario manualmento

    var response = await _supabaseClient.from('alergias_usuario').insert({
      'lacteos': lacteos,
      'trigo': trigo,
      'soya': soya,
      'pescado': pescado,
      'fruta_seca': frutos,
      'mani': mani,
      'mariscos': mariscos,
      'huevos': huevos,
      'otro_tipo': otroTipo,
      'id_usuario': id_usuario1
    });

    if (response != null) {
      if (response.error != null) {
        print("Error al enviar datos: ${response.error!.message}");
      }
    } else {
      print("Exito al enviar datos");
    }
  }
}
