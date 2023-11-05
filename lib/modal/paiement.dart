import 'package:flutter/material.dart';
import 'package:line_icons/line_icon.dart';
import 'package:virunga/utils/Field.dart';
import 'package:line_icons/line_icons.dart';

class ModalPaiement extends StatefulWidget {
  const ModalPaiement({super.key});

  @override
  State<ModalPaiement> createState() => _ModalPaiementState();
}

class _ModalPaiementState extends State<ModalPaiement> {
  bool isChecked = true;
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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: buildTextField(
                              lineIcons: const Icon(LineIcons.moneyBill),
                              name:
                                  "Entrée le montant Ex:${isChecked ? " (10 USD)" : " (1000 CDF)"}",
                              textInputType: TextInputType.number,
                              controller: null),
                          //  (10 USD)
                        ),
                        GestureDetector(
                          onTap: (() {
                            setState(() {
                              isChecked = !isChecked;
                            });
                          }),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Container(
                              height: 60,
                              width: MediaQuery.of(context).size.width * 0.12,
                              decoration: BoxDecoration(
                                  color: isChecked ? Colors.green : Colors.teal,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Center(
                                child: Text(
                                  isChecked ? "USD" : "CDF",
                                  textAlign: TextAlign.center,
                                  style: const TextStyle(
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
                    InkWell(
                      onTap: (() {}),
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Container(
                            height: 40,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                color: Colors.green,
                                borderRadius: BorderRadius.circular(5)),
                            child: const Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                LineIcon(LineIcons.donate,
                                    color: Colors.white, size: 25),
                                Text(
                                  "Transaction",
                                  style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            )),
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
