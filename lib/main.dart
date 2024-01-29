import 'package:dropdown_textfield/dropdown_textfield.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      themeMode: ThemeMode.dark,
      home: const DropDownButton(),
    );
  }
}

class DropDownButton extends StatefulWidget {
  const DropDownButton({Key? key}) : super(key: key);

  @override
  State<DropDownButton> createState() => _DropDownButtonState();
}

class _DropDownButtonState extends State<DropDownButton> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              const Color.fromARGB(255, 113, 30, 208).withOpacity(.5),
              const Color.fromARGB(255, 152, 211, 232).withOpacity(.8),
            ]),
          ),
        ),
        title: const Text(
          'DropDown Flutter',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontFamily: 'EideticNeoRegular',
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const SizedBox(
            height: 30,
          ),
          Column(
            children: [
              Image.asset(
                'assets/images/flutter.png',
                height: 200,
                width: 200,
              ),
              const SizedBox(
                height: 40,
              ),
              Text(
                'Searchable Dropdown Flutter',
                style: GoogleFonts.lato(
                    textStyle: Theme.of(context).textTheme.displayLarge,
                    fontSize: 22,
                    fontWeight: FontWeight.w700,
                    fontStyle: FontStyle.italic,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 30,
              ),
              Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    padding: const EdgeInsets.only(left: 25, right: 25),
                    width: size.width * 0.9,
                    height: size.height * 0.05,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        const Color.fromARGB(255, 219, 194, 248)
                            .withOpacity(.5),
                        const Color.fromARGB(255, 124, 216, 249)
                            .withOpacity(.8),
                      ]),
                      borderRadius: const BorderRadius.all(Radius.circular(10)),
                    ),
                    child: DropDownTextField(
                      dropdownRadius: BorderSide.strokeAlignInside,
                      textFieldDecoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 231, 237, 237),
                        border: InputBorder.none,
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        hintText: 'Select Here..',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: Colors.black45),
                      ),
                      clearOption: false,
                      searchDecoration: InputDecoration(
                        fillColor: const Color.fromARGB(255, 135, 236, 236),
                        contentPadding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 10),
                        hintText: 'Select Here..',
                        hintStyle: GoogleFonts.poppins(
                            fontSize: 18,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      searchAutofocus: true,
                      dropDownItemCount: 8,
                      searchShowCursor: false,
                      enableSearch: true,
                      searchKeyboardType: TextInputType.number,
                      dropDownList: const [
                        DropDownValueModel(name: 'Flutter', value: "flutter"),
                        DropDownValueModel(
                          name: 'Java',
                          value: "java",
                        ),
                        DropDownValueModel(name: 'HTML', value: "html"),
                        DropDownValueModel(
                          name: 'CSS',
                          value: "css",
                        ),
                        DropDownValueModel(name: 'PHP', value: "php"),
                      ],
                      onChanged: (val) {},
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
