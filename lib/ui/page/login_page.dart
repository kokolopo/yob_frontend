import 'package:flutter/material.dart';
import 'package:yob/ui/page/main_page.dart';
import 'package:yob/ui/page/register_page.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController _pass = TextEditingController();
  final TextEditingController _noTlp = TextEditingController();

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0XFF27A797),
              Color(0XFF0A81AB),
            ]),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 55),
                  child: Center(
                    child: Column(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(50),
                          child: Container(
                            width: 80,
                            height: 80,
                            color: Colors.blue,
                            child: Image.asset(
                              'assets/icons/yob_logo.png',
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const Text(
                          'Yuk Olahraga Bareng!',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                        )
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(15),
                          child: const Text(
                            'Masuk',
                            style: TextStyle(
                                fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(horizontal: 15),
                          child: Column(
                            children: [
                              _detailFiled(
                                  'No. Telpon',
                                  const Icon(Icons.person),
                                  TextInputType.name,
                                  _noTlp,
                                  false),
                              _detailFiled('Sandi', const Icon(Icons.password),
                                  TextInputType.name, _pass, true),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text(''),
                                  InkWell(
                                    onTap: () {},
                                    child: const Text(
                                      'Lupa Sandi',
                                      style: TextStyle(color: Colors.blue),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Container(
                          margin: const EdgeInsets.symmetric(vertical: 30),
                          width: size.width * 0.8,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(50),
                            child: ElevatedButton(
                              child: const Text(
                                'Masuk',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 16),
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => const MainPage(),
                                  ),
                                );
                              },
                              style: ElevatedButton.styleFrom(
                                primary: const Color(0XFFFF9900),
                                padding:
                                    const EdgeInsets.symmetric(vertical: 20),
                                textStyle: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontWeight: FontWeight.w500),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                footer()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container _detailFiled(String tittle, Icon icon, TextInputType keyType,
      TextEditingController controller, bool isPassword) {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(vertical: 15),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blueGrey),
          borderRadius: BorderRadius.circular(13)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextField(
            controller: controller,
            obscureText: isPassword,
            decoration: InputDecoration(
              hintText: tittle,
              suffixIcon: icon,
              border: InputBorder.none,
              contentPadding: const EdgeInsets.only(top: 15, left: 8),
            ),
            keyboardType: keyType,
          ),
        ],
      ),
    );
  }

  Widget footer() {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Belum memiliki akun? ',
            // style: subtitleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => const RegisPage()),
              );
            },
            child: const Text(
              'Daftar',
              // style: purpleTextStyle.copyWith(fontSize: 12, fontWeight: medium),
            ),
          )
        ],
      ),
    );
  }
}

class RoundedButton extends StatelessWidget {
  final String text;
  const RoundedButton({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 30),
      width: size.width * 0.8,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(50),
        child: newElevatedButton(),
      ),
    );
  }

  Widget newElevatedButton() {
    return ElevatedButton(
      child: Text(
        text,
        style: const TextStyle(color: Colors.white, fontSize: 16),
      ),
      onPressed: () {},
      style: ElevatedButton.styleFrom(
        primary: const Color(0XFFFF9900),
        padding: const EdgeInsets.symmetric(vertical: 20),
        textStyle: const TextStyle(
            color: Colors.white, fontSize: 14, fontWeight: FontWeight.w500),
      ),
    );
  }
}
