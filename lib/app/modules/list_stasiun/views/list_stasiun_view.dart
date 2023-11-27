import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/list_stasiun_controller.dart';

class ListStasiunView extends GetView<ListStasiunController> {
  const ListStasiunView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final ListStasiunController con = Get.put(ListStasiunController());

    return Scaffold(
      appBar: AppBar(
        title: const Text('ListStasiunView'),
        centerTitle: true,
      ),
      body: Obx(
        () => RefreshIndicator(
          onRefresh: () async {
            await con.fetchData();
          },
          child: ListView.builder(
              itemCount: con.stasiun.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(con.stasiun[index].name ?? ''),
                  subtitle: Text(con.stasiun[index].code ?? ''),
                );
              }),
        ),
      ),
    );
  }
}
