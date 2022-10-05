import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../model/question_model.dart';
import '../component/drawer.dart';
import '../component/footer.dart';
import '../home/home_screen.dart';
import 'faq_view_model.dart';

class FaqMobileScreen extends StatefulWidget {
  const FaqMobileScreen({Key? key}) : super(key: key);

  @override
  State<FaqMobileScreen> createState() => _FaqMobileScreenState();
}

class _FaqMobileScreenState extends State<FaqMobileScreen> {
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
      drawer: const DrawerScreen(),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.grey.shade800,
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
        actions: [
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(HomeScreen.route);
            },
            child: Container(
              width: 120,
              height: 100,
              margin: const EdgeInsets.only(
                right: 15,
              ),
              decoration: const BoxDecoration(
                shape: BoxShape.rectangle,
                image: DecorationImage(
                  fit: BoxFit.contain,
                  image: AssetImage(
                    'assets/hexa/logoHexa_tulisa.png',
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
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
                                  .contains(dataSearch.toLowerCase()) ||
                              dataPertanyaan.question!
                                  .toLowerCase()
                                  .contains(dataSearch.toLowerCase()));
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
                        controller.listDataQuestion[panelIndex].isExpand =
                            !isExpanded;
                      });
                    },
                    children: controller.listDataQuestion.map<ExpansionPanel>(
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
    );
  }
}
