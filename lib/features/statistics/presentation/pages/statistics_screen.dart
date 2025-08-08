import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:ostad_expense_tracker_project/features/common/presentation/widgets/custom_app_bar.dart';
import 'package:ostad_expense_tracker_project/features/home/presentation/widgets/transaction_widget.dart';
import 'package:ostad_expense_tracker_project/features/statistics/presentation/widgets/white_background_custom_app_bar.dart';

class StatisticsScreen extends StatefulWidget {
  const StatisticsScreen({super.key});

  static const String name = "statistics-screen";

  @override
  State<StatisticsScreen> createState() => _StatisticsScreenState();
}

class _StatisticsScreenState extends State<StatisticsScreen> {
  final List<String> options = ['Day', 'Week', 'Month', 'Year'];
  int selectedIndex = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          WhiteBackgroundCustomAppBar(
            labelText: "Statistics",
            trailingIcon: GestureDetector(
              onTap: (){
                print("clicked");
              },
              child: Image.asset(
                "asset/images/statistics_action_button.png",
                width: 23,
                height: 21,
                color: Colors.black,
              ),
            ),
          ),
      SizedBox(
        height: 350,
        // Wrap in horizontal scroll view
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: SizedBox(
            // Width > screen width so it can scroll
            width: 900, // adjust as needed for 12 months
            child: Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 20),
              child: LineChart(
                LineChartData(
                  clipData: FlClipData.none(),
                  gridData: FlGridData(show: false),

                  // === Tooltip on tap ===
                  lineTouchData: LineTouchData(
                    handleBuiltInTouches: true, // keep// built-in touch handling (tooltip + indicator)
                    touchTooltipData: LineTouchTooltipData(
                      // appearance
                      tooltipBorderRadius: BorderRadius.circular(8),
                      tooltipPadding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
                      tooltipMargin: 6,
                      tooltipBorder: BorderSide(color: Colors.grey.shade300),

                      // <-- set background color here (function returning a Color) -->
                      getTooltipColor: (LineBarSpot touchedSpot) => Colors.white,

                      // content builder for the tooltip
                      getTooltipItems: (List<LineBarSpot> touchedSpots) {
                        return touchedSpots.map((barSpot) {
                          return LineTooltipItem(
                            '\$${barSpot.y.toInt()}',
                            const TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                            ),
                          );
                        }).toList();
                      },
                    ),
                  ),

                  // === Axis labels ===
                  titlesData: FlTitlesData(
                    leftTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    topTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    rightTitles: AxisTitles(
                      sideTitles: SideTitles(showTitles: false),
                    ),
                    bottomTitles: AxisTitles(
                      sideTitles: SideTitles(
                        interval: 1,
                        showTitles: true,
                        reservedSize: 42,
                        getTitlesWidget: (value, meta) {
                          const months = [
                            'Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun',
                            'Jul', 'Aug', 'Sep', 'Oct', 'Nov', 'Dec'
                          ];
                          // Show label only if value is integer and within range
                          if (value % 1 == 0 && value.toInt() >= 0 && value.toInt() < months.length) {
                            return Padding(
                              padding: const EdgeInsets.only(top: 10),
                              child: Text(
                                months[value.toInt()],
                                style: const TextStyle(color: Colors.grey),
                              ),
                            );
                          }
                          return const SizedBox.shrink();
                        },
                      ),
                    ),
                  ),

                  borderData: FlBorderData(show: false),

                  // === Full range for 12 months ===
                  minX: 0,
                  maxX: 11, // index 0 to 11 for 12 months
                  minY: 0,
                  maxY: 2000,

                  // === Data ===
                  lineBarsData: [
                    LineChartBarData(
                      spots: const [
                        FlSpot(0, 800),
                        FlSpot(1, 950),
                        FlSpot(2, 1230),
                        FlSpot(3, 1100),
                        FlSpot(4, 1400),
                        FlSpot(5, 900),
                        FlSpot(6, 1700),
                        FlSpot(7, 1500),
                        FlSpot(8, 1300),
                        FlSpot(9, 1800),
                        FlSpot(10, 1600),
                        FlSpot(11, 1800),
                      ],
                      isCurved: true,
                      color: Colors.blue,
                      barWidth: 3,
                      belowBarData: BarAreaData(
                        show: true,
                        gradient: LinearGradient(
                          colors: [
                            Colors.blue.withOpacity(0.3),
                            Colors.blue.withOpacity(0.0),
                          ],
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                        ),
                      ),
                      dotData: FlDotData(show: true),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
          Flexible(
            child: Padding(
              padding: EdgeInsets.all(12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Top Spending",style: TextStyle(
                      fontFamily: "Inter",
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                    ),),
                    GestureDetector(onTap: (){
                      print("Clicked");
                    },child: Image.asset("asset/images/top_spending_filter.png",height: 21,width: 21,)),
                  ],
                ),
                SizedBox(height: 15,),
                Expanded(
                  child: MediaQuery.removePadding(
                    context: context,
                    removeTop: true,
                    child: ListView(
                      children: [
                        Transaction_widget(amount: '- \$ 150.00', date: 'Jan 12, 2022', imagePath: "asset/images/starbucks.png", transactionName: "Starbucks"),
                        SizedBox(height: 10,),
                        Transaction_widget(amount: '- \$ 85.00', date: 'Yesterday', imagePath: "asset/images/people.jpg", transactionName: "Transfer"),
                        SizedBox(height: 10,),
                        Transaction_widget(amount: '- \$ 11.99', date: 'Jan 16, 2022', imagePath: "asset/images/Youtube_logo.png", transactionName: "Youtube"),
                      ],
                    ),
                  ),
                ),
              ],
            ),),
          )
        ],
      ),
    );
  }
}
