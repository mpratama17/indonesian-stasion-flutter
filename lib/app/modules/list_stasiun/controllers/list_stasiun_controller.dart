import 'package:get/get.dart';
import 'package:kaistasiunlist/app/data/stasiun.dart';
import 'package:kaistasiunlist/app/data/stasiun_repo.dart';

class ListStasiunController extends GetxController {
  final StasiunRepository _stasiunRepository = StasiunRepository();
  var stasiun = <Stasiun>[].obs;

  Future fetchData() async {
    try {
      List<Stasiun> response = await _stasiunRepository.fetchStasiun();
      if (response == 200) {
        // stasiun.value =
        //     List<Stasiun>.from(data.map((e) => Stasiun.fromJson(e)));
        print(response);
      }
      stasiun.addAll(response);
    } catch (e) {
      print("failde catch: $e");
    }
  }

  Future<void> refreshData() async {
    await fetchData();
  }

  @override
  Future<void> onInit() async {
    super.onInit();
    fetchData();
  }
}
