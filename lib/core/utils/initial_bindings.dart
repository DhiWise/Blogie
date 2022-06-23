import 'package:blogie/core/app_export.dart';
import 'package:blogie/data/apiClient/api_client.dart';
import 'package:supabase/supabase.dart';
import 'package:supabase/supabase.dart';
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class InitialBindings extends Bindings {
  var supabaseUrl = 'https://gkalwmigqafmhdyxuawi.supabase.co';

  var supabasePublicKey =
      'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImdrYWx3bWlncWFmbWhkeXh1YXdpIiwicm9sZSI6ImFub24iLCJpYXQiOjE2NTU4MTg1MTMsImV4cCI6MTk3MTM5NDUxM30.tyPUGioOpgI9vb5UFr145aEtGBc38UvQxYX-rPNvxzY';

  @override
  void dependencies() {
    Get.put(PrefUtils());
    Get.put(ApiClient());
    Connectivity connectivity = Connectivity();
    Get.put(NetworkInfo(connectivity));
    var supabaseClient = SupabaseClient(supabaseUrl, supabasePublicKey);
    Get.put(supabaseClient);
  }
}
