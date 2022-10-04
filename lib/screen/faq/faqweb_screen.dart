import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/question_model.dart';
import '../component/floatingbutton.dart';
import '../component/footer.dart';
import '../component/sliverappbar.dart';
import 'faq_view_model.dart';

class FaqWebScreen extends StatefulWidget {
  const FaqWebScreen({Key? key}) : super(key: key);

  @override
  State<FaqWebScreen> createState() => _FaqWebScreenState();
}

class _FaqWebScreenState extends State<FaqWebScreen> {
  ScrollController scrollController = ScrollController();
  bool status = false;

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async {
      var viewModel = Provider.of<FaqViewModel>(context, listen: false);

      await viewModel.getData().then(
          (_) => viewModel.listDataQuestionModel = viewModel.listQuestions);
    });
  }

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<FaqViewModel>(context);
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return Scaffold(
      backgroundColor: const Color(0xFFDDDDDD),
      body: Stack(
        children: [
          ScrollConfiguration(
            behavior: ScrollConfiguration.of(context).copyWith(
              dragDevices: {
                PointerDeviceKind.touch,
                PointerDeviceKind.mouse,
              },
            ),
            child: CustomScrollView(
              shrinkWrap: true,
              slivers: [
                const SliverAppbarCustom(),
                SliverList(
                  delegate: SliverChildListDelegate(
                    [
                      Container(
                        padding: EdgeInsets.only(
                          left: width * 0.1,
                          right: width * 0.2,
                          top: height * 0.05,
                          bottom: height * 0.05,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              width: width < 980
                                  ? width < 654
                                      ? width * 0.4
                                      : width * 0.3
                                  : width * 0.2,
                              child: const Text(
                                'Frequently Asked Questions',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 28,
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 15.0,
                              ),
                              color: Colors.white,
                              width: width < 980
                                  ? width < 654
                                      ? width * 0.8
                                      : width * 0.6
                                  : width * 0.4,
                              child: TextField(
                                onChanged: (dataSearch) {
                                  controller.listDataQuestionModel =
                                      controller.listQuestions.where(
                                    (dataPertanyaan) {
                                      return (dataPertanyaan.answer!
                                              .toLowerCase()
                                              .contains(
                                                  dataSearch.toLowerCase()) ||
                                          dataPertanyaan.question!
                                              .toLowerCase()
                                              .contains(
                                                  dataSearch.toLowerCase()));
                                    },
                                  ).toList();
                                },
                                decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  suffixIcon: Icon(
                                    Icons.search,
                                  ),
                                  hintText: 'Search your questions, answer etc',
                                ),
                              ),
                            ),
                            Container(
                              margin: const EdgeInsets.only(
                                top: 50.0,
                                bottom: 50.0,
                              ),
                              child: ExpansionPanelList(
                                expansionCallback: (panelIndex, isExpanded) {
                                  setState(() {
                                    controller.listDataQuestion[panelIndex]
                                        .isExpand = !isExpanded;
                                  });
                                },
                                children: controller.listDataQuestion
                                    .map<ExpansionPanel>(
                                  (QuestionModel questionModel) {
                                    return ExpansionPanel(
                                      headerBuilder: (context, isExpanded) {
                                        return ListTile(
                                          title: Padding(
                                            padding: const EdgeInsets.all(8.0),
                                            child: Text(
                                              questionModel.question!,
                                              style: const TextStyle(
                                                color: Colors.black,
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                      body: ListTile(
                                        title: Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: Text(
                                            questionModel.answer!,
                                            style: const TextStyle(
                                              color: Colors.grey,
                                              fontSize: 16,
                                            ),
                                          ),
                                        ),
                                      ),
                                      isExpanded: questionModel.isExpand,
                                    );
                                  },
                                ).toList(),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const Footer(),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const FloatingButton(),
        ],
      ),
    );
  }
}
