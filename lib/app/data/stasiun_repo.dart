import 'package:get/get.dart';
import 'package:kaistasiunlist/app/data/stasiun.dart';

class StasiunRepository extends GetConnect {
  final String _baseUrl = "https://booking.kai.id/api/stations2";

  Future<List<Stasiun>> fetchStasiun() async {
    final response = await get(_baseUrl);
    final data = response.body;
    return List<Stasiun>.from(data.map((e) => Stasiun.fromJson(e)));
  }
}
