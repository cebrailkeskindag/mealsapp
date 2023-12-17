import 'package:flutter/material.dart';

class CekeMe extends StatelessWidget {
  const CekeMe({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Geliştirici"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(18),
        child: Center(
          child: Center(
            child: Column(
              children: [
                const Text(
                  """Cebrail Keskindağ
                      """,
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                const Text(
                  "Junior Flutter Developer",
                  style: TextStyle(color: Colors.black, fontSize: 20),
                ),
                SizedBox(
                  width: double.infinity,
                  child: Image.network(
                      "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT9NNoU91dgcnpfjiH1WXVV9nCu9GvB-7OpUg&usqp=CAU"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
