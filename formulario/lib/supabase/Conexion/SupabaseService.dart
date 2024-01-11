import 'package:supabase_flutter/supabase_flutter.dart';

class SupabaseService {
  static final SupabaseClient _supabaseClient = SupabaseClient(
    'https://docyuyiiucyvthqapuuu.supabase.co',
    'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRvY3l1eWlpdWN5dnRocWFwdXV1Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDI1MjA1NjMsImV4cCI6MjAxODA5NjU2M30.zqJfSuMsR9uHuVo3CbdgMpwd82ic_1sK8jAA13vr9bE',
  );

  static SupabaseClient get supabaseClient => _supabaseClient;
}