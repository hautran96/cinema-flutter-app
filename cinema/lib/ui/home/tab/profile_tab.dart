import 'package:cinema/ui/home/widget/login_page.dart';
import 'package:cinema/utils/constants.dart';
import 'package:flutter/material.dart';

class ProfileTab extends StatefulWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  _ProfileTabState createState() => _ProfileTabState();
}

class _ProfileTabState extends State<ProfileTab> {
  @override
  Widget build(BuildContext context) {
    final formKey = GlobalKey<FormState>();

    TextEditingController edtEmailSignin = new TextEditingController();
    TextEditingController edtPasswordSignin = new TextEditingController();

    double statusBar = MediaQuery.of(context).padding.top + 10;

    return LoginPage(
        statusBar: statusBar,
        edtEmailSignin: edtEmailSignin,
        edtPasswordSignin: edtPasswordSignin);
  }
}
