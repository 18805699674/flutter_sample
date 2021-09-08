import 'package:flutter/material.dart';
import 'package:flutter_sample/controller/page_sample_a_controller.dart';
import 'package:get/get.dart';

//使用Get你可能不再需要使用StatefulWidget
class PageSampleA extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // 依赖管理   Get.find(); 自动为你的控制器找到你想要的数据
    final PageSampleAController controller = Get.put(PageSampleAController());
    return Scaffold(
      appBar: AppBar(
        // Obx() 相当于Consumer
        title: Obx(() => Text("${controller.count}")),
      ),
      floatingActionButton: FloatingActionButton(
        child: Text("add"),
        onPressed: (){
          controller.increment();
        },
      ),
      body: Container(
        child: GetBuilder<PageSampleAController>(
          init: PageSampleAController(),
          builder: (controller){
            return Center(
              child: Text("GetBuilder ${controller.count}"),
            );
          },
        )
      ),
    );
  }


}