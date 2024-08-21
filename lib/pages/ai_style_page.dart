import 'package:ai_style_project/widget/select_option_container.dart';
import 'package:flutter/material.dart';
import '../widget/edit_main_container.dart';
import '../widget/custom_tab_bar.dart';
import '../widget/generate_button_container.dart';

class AiStylePage extends StatefulWidget {
  const AiStylePage({super.key});

  @override
  State<AiStylePage> createState() => _AiStylePageState();
}

class _AiStylePageState extends State<AiStylePage> with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: AppBar(
            backgroundColor: Colors.black,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.zero,
          child: Column(
            children: [
              const Expanded(
                flex: 2,
                child: EditMainContainer(),
              ),
              const SizedBox(height: 16),
              Expanded(
                flex: 0,
                child: CustomTabBar(tabController: _tabController),
              ),
              const SizedBox(height: 16),
              Expanded(
                flex: 0,
                child: SelectOptionContainer(width: width),
              ),
              const SizedBox(height: 16),
              const Expanded(
                flex: 0,
                child: GenerateButtonContainer(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

