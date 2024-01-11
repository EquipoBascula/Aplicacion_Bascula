//Importación de la biblioteca Supabase Flutter
import 'package:supabase_flutter/supabase_flutter.dart';
//Definición de la clase SupabaseService
class SupabaseService {
  //Creación de una instancia de SupabaseClient
  static final SupabaseClient _supabaseClient = SupabaseClient(
    'https://docyuyiiucyvthqapuuu.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRvY3l1eWlpdWN5dnRocWFwdXV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI1MjA1NjMsImV4cCI6MjAxODA5NjU2M30.zqJfSuMsR9uHuVo3CbdgMpwd82ic_1sK8jAA13vr9bE',
  );
//Esta línea proporciona un método para obtener la instancia de SupabaseClient.
//El método se llama supabaseClient y devuelve la instancia _supabaseClient.
  static SupabaseClient get supabaseClient => _supabaseClient;
}
