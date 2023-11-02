import 'package:flutter/material.dart';
import 'package:pie_chart/pie_chart.dart';

final dataMap = <String, double>{
  "Bitcoin": 25,
  "Ethereum": 50,
  "Ripley": 10,
  "Ruble": 15,
};
final colorList = <Color>[
  const Color.fromARGB(255, 231, 240, 105),
  const Color.fromARGB(255, 179, 105, 240),
  const Color.fromARGB(255, 235, 133, 226),
  const Color.fromARGB(255, 64, 161, 240),
];

class TopContent extends StatelessWidget {
  const TopContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
        color: const Color.fromARGB(255, 0, 2, 44),
        child: Container(
          height: 150,
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: PieChart(
                  dataMap: dataMap,
                  chartType: ChartType.ring,
                  baseChartColor: Colors.grey[50]!.withOpacity(0.15),
                  colorList: colorList,
                  chartValuesOptions: const ChartValuesOptions(
                    showChartValues: false,
                  ),
                  totalValue: 100,
                ),
              ),
            ],
          ),
        ));
  }
}
