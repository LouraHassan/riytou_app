import 'package:flutter/material.dart';
import 'package:quantity_input/quantity_input.dart';
import 'package:riytou_app/mainpagesEN/planlist.dart';

class CreatePlanPage extends StatefulWidget {
  const CreatePlanPage({super.key});

  @override
  State<CreatePlanPage> createState() => _CreatePlanPageState();
}

class _CreatePlanPageState extends State<CreatePlanPage> {
  int simpleIntInput = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 60,
        backgroundColor: const Color.fromRGBO(40, 87, 69, 1),
        elevation: 0,
        centerTitle: true,
        title: const Text(
          "Plan Your Trip",
          style: TextStyle(fontSize: 30, color: Colors.white),
        ),
        automaticallyImplyLeading: false,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              const SizedBox(
                height: 100,
              ),
              const Text(
                "How Many Days Are You Stying?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w900,
                  color: Color.fromRGBO(40, 87, 69, 1),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              QuantityInput(
                  buttonColor: const Color.fromRGBO(40, 87, 69, 1),
                  acceptsZero: false,
                  maxValue: 7,
                  value: simpleIntInput,
                  onChanged: (value) => setState(() =>
                      simpleIntInput = int.parse(value.replaceAll(',', '')))),
              Text('Value: $simpleIntInput',
                  style: const TextStyle(
                      color: Colors.black, fontWeight: FontWeight.bold)),
              const SizedBox(
                height: 20,
              ),
              GestureDetector(
                onTap: () {
                  if (simpleIntInput == 1) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList1(),
                      ),
                    );
                  } else if (simpleIntInput == 2) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList2(),
                      ),
                    );
                  } else if (simpleIntInput == 3) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList3(),
                      ),
                    );
                  } else if (simpleIntInput == 4) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList4(),
                      ),
                    );
                  } else if (simpleIntInput == 5) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList5(),
                      ),
                    );
                  } else if (simpleIntInput == 6) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList6(),
                      ),
                    );
                  } else if (simpleIntInput == 7) {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PlanList7(),
                      ),
                    );
                  }
                },
                child: Container(
                  height: 60,
                  width: 250,
                  decoration: BoxDecoration(
                      color: const Color.fromRGBO(40, 87, 69, 1),
                      borderRadius: BorderRadius.circular(20)),
                  child: const Center(
                      child: Text(
                    "Show My Plan",
                    style: TextStyle(
                        fontSize: 23,
                        color: Colors.white,
                        fontWeight: FontWeight.w500),
                  )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
