import 'package:responsive_sizer/responsive_sizer.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';

import '../text.dart';
import '../textfield.dart';
class ChartData {
  final String x;
  final int y;
  final Color color;

  ChartData(this.x, this.y, this.color);
}

class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> { 
  @override
  Widget build(BuildContext context) {

    //pass fail thing goes here
        final List<ChartData> chartData = [
              ChartData('Pass', 3,  Color.fromRGBO(14, 76, 161, 1)),   
      ChartData('Fail', 1, Color.fromRGBO(237, 27, 36, 1)),
        ];


    return Scaffold(
         backgroundColor: Color.fromRGBO(14, 76, 161, 1),
         body: Stack(
          children: [

         Image.asset('assets/red.png'),
          Center(
            child: Padding(
                padding:  EdgeInsets.only(top:4.h ),
              child: Container(
                width: 78.w,
                    height: 78.h,
                        decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.sp),
                        color: Colors.white,
                      ),
                      child: Padding(
                         padding:  EdgeInsets.symmetric(horizontal:4.w,vertical: 3.h),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                               Textt(
                                          text: 'User Name',
                                          color: Colors.black,
                                          weight: FontWeight.w500,
                                          fontSize: 20.sp,
                                        ),
                        SizedBox(height: 3.h,),
                                MytextField(text: 'No. of Tests Taken',suffix: '3',), 
                                SizedBox(height: 2.h,),
                                MytextField(text: 'No. of Tests Passed',suffix: '2',),
                                SizedBox(height: 2.h,),
                                MytextField(text: 'No. of Tests Failed',suffix: '1',),
                                SizedBox(height:2.h),

                                Center(
                child:  SizedBox(
                  height: 28.h,
                  width: 55.w,
                  child: SfCartesianChart(
                          primaryYAxis: NumericAxis(
                             
                              interval: 1
                          ),
                            primaryXAxis: CategoryAxis(), // Use CategoryAxis for string values on X-axis
          series: <ChartSeries<ChartData, String>>[ // Change ChartSeries to use String as x-value type
            ColumnSeries<ChartData, String>( // Change ColumnSeries to use String as x-value type
              dataSource: chartData,
              xValueMapper: (ChartData data, _) => data.x,
              yValueMapper: (ChartData data, _) => data.y,
              pointColorMapper: (ChartData data, _) => data.color,
              borderWidth: 0.25.w,
            ),
          ],
                      ),
                ),
                
            ),

            SizedBox(height: 1.5.h,),

          Container(
            width: 40.w,
            height: 9.5.h,
decoration: BoxDecoration(

  borderRadius: BorderRadius.circular(20.sp),
  border: Border.all(color:Color.fromRGBO(143, 139, 139, 0.9)),
  color: Color.fromRGBO(247, 247, 247, 1)
),
child: Padding(
  padding: EdgeInsets.symmetric(vertical:1.5.h,horizontal: 2.w),
  child:   Column(
  
    children: [
  
      Row(
  
        mainAxisAlignment: MainAxisAlignment.spaceAround,
  
        children: [
  
        Textt(
  
                                            text: 'Test Passed',
  
                                            color: Colors.black,
  
                                            weight: FontWeight.w400,
  
                                            fontSize: 16.sp,
  
                                          ),
  
  
  
                                          Container(
  
                                            width: 5.w,
  
                                            height: 1.h,
  
                                            color: Color.fromRGBO(14, 76, 161, 1),
  
                                          )  
  
        ],
  
      ),
SizedBox(height: 1.h,),
       Row(
  
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
  
        children: [
  
        Textt(
  
                                            text: 'Test Failed',
  
                                            color: Colors.black,
  
                                            weight: FontWeight.w400,
  
                                            fontSize: 16.sp,
  
                                          ),
  
  SizedBox(width:1.w),
  
                                          Container(
  
                                            width: 5.w,
  
                                            height: 1.h,
  
                                            color: Color.fromRGBO(237, 27, 36, 1),
  
                                          )  
  
        ],
  
      ),
  
    ],
  
  ),
),
          )  
                                
                            
                                     
                            ],
                          ),
                        ),
                      ),
              ),
            
            ),
          )
          ],
         ),
    );
  }
}
