import 'package:flutter/material.dart';
import 'package:virunga/utils/Field.dart';
import 'package:line_icons/line_icons.dart';

class ModalPaiement extends StatefulWidget {
  const ModalPaiement({super.key});

  @override
  State<ModalPaiement> createState() => _ModalPaiementState();
}

class _ModalPaiementState extends State<ModalPaiement> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.all(40.0),
        child: Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height * .25,
          margin: MediaQuery.of(context).viewInsets,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(0),
          ),
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.all(8.0),
                child: Text(
                  "FAIT UNE CONTRIBUTION",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    fontFamily: "roboto",
                  ),
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: buildTextField(
                            lineIcons: const Icon(LineIcons.moneyBill),
                            name: "Entrée le montant Ex: (10 USD)",
                            textInputType: TextInputType.number,
                            controller: null),
                      ),
                      GestureDetector(
                        onTap: (() {}),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width * 0.12,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Center(
                              child: Text(
                                "USD",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
