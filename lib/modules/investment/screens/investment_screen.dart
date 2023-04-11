import 'package:cic_mobile/constants/color_app/color_app.dart';
import 'package:cic_mobile/widgets/custom_appbar_blue_bg.dart';
import 'package:flutter/material.dart';

class InvestmentScreen extends StatefulWidget {
  const InvestmentScreen({super.key});

  @override
  State<InvestmentScreen> createState() => _InvestmentScreenState();
}

class _InvestmentScreenState extends State<InvestmentScreen>
    with SingleTickerProviderStateMixin {
  final List<String> _tabs = <String>['Personal Profile', 'Company Profile '];
  final TextEditingController emailController = TextEditingController();
  final bool onError = false;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: customAppBar(
          centerTitle: false,
          context: context,
          title: 'My Investment',
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                  padding: const EdgeInsets.only(left: 30, right: 35, top: 10),
                  child: TextFormField(
                    controller: emailController,
                    decoration: InputDecoration(
                      fillColor: Colors.white,
                      filled: true,
                      prefixIcon: InkWell(
                          child: const Padding(
                            padding: EdgeInsets.all(5.0),
                            child: SizedBox(
                              height: 20,
                            ),
                          ),
                          onTap: () {}),
                      alignLabelWithHint: true,
                      floatingLabelBehavior: FloatingLabelBehavior.never,
                      contentPadding: const EdgeInsets.fromLTRB(8, 5, 10, 5),
                      labelText: "Your Email",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(2.0),
                      ),
                      labelStyle:
                          TextStyle(color: AppColor.mainColor, fontSize: 16),
                    ),
                    // inputFormatters: [new LengthLimitingTextInputFormatter(10)],
                    validator: (value) => (value),
                  )),
              onError
                  ? const Positioned(
                      bottom: 0,
                      child: Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: Text('', style: TextStyle(color: Colors.red)),
                      ))
                  : Container(),
              ElevatedButton(onPressed: () {}, child: const Text('Sumit'))
            ],
          ),
        ),
      ),
    );
  }
}
