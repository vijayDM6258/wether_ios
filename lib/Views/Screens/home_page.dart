import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../Providers/api_helper.dart';
import '../../Providers/theme_provider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var AP = Provider.of<ApiProvider>(context);
    var prvd = Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            image: AssetImage('assets/images/backgroung.jpg'),
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    iconSize: 30,
                    onPressed: () {
                      prvd.Changetheme();

                      // Provider.of<ThemeProvider>(context, listen: false)
                      //     .Changetheme();
                    },
                    icon: (Provider.of<ThemeProvider>(context)
                                .themeModel
                                .islight ==
                            false)
                        ? Icon(Icons.light_mode_outlined)
                        : Icon(Icons.dark_mode_outlined),
                  ),
                ],
              ),
              Container(
                height: 82,
                width: 100,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image:
                        NetworkImage("http:${AP.current['condition']['icon']}"),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Container(
                height: 150,
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    (AP == null)
                        ? CircularProgressIndicator()
                        : Text(
                            "${AP.location['name']}",
                            style: TextStyle(
                                fontWeight: FontWeight.w500,
                                fontSize: 35,
                                color: Colors.white),
                          ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "${AP.current['temp_c']}",
                        style: TextStyle(
                            fontSize: 28, fontWeight: FontWeight.w300),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Container(
                  height: 150,
                  width: double.infinity,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                        Colors.lightBlueAccent,
                        Colors.blueAccent.shade200,
                      ]),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.all(8.0),
                        child: Text(
                          'Partly CLoudy condution expected around 9pm.',
                          style: TextStyle(
                              fontWeight: FontWeight.w500, color: Colors.white),
                        ),
                      ),
                      Divider(
                        height: 5,
                        color: Colors.black,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  "Now",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.cloud),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(""),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.cloud),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('28'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.cloud),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('28'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.cloud),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('28'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.cloud),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('28'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.cloud),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('28'),
                              )
                            ],
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text(
                                  'now',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Icon(Icons.cloud),
                              ),
                              Padding(
                                padding: EdgeInsets.all(8.0),
                                child: Text('28'),
                              )
                            ],
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Expanded(
                  child: Container(
                    height: 250,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(colors: [
                          Colors.lightBlueAccent,
                          Colors.blueAccent.shade200,
                        ]),
                        borderRadius: BorderRadius.circular(10)),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Row(
                            children: [
                              Icon(Icons.calendar_month),
                              SizedBox(width: 10),
                              Text(
                                '10-DAY FORECAST',
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ],
                          ),
                        ),
                        Expanded(
                          child: Container(
                            height: 280,
                            width: double.infinity,
                            decoration: BoxDecoration(),
                            child: ListView.builder(
                              itemCount: AP.forecastday.length,
                              itemBuilder: (context, index) {
                                AP.indexforecast(index);
                                return ListTile(
                                  title: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                            "${AP.forecastday[index]['date']}"),
                                      ),
                                      Expanded(
                                        child: Text(
                                            "${AP.forday[index]['temp_c']}"),
                                      ),
                                    ],
                                  ),
                                  subtitle: Row(
                                    children: [
                                      Expanded(
                                        child: Text(
                                            "Sunrise - ${AP.forastro['sunrise']}",
                                            style: TextStyle(fontSize: 16)),
                                      ),
                                      Expanded(
                                        child: Text(
                                            "Sunset - ${AP.forastro['sunset']}",
                                            style: TextStyle(fontSize: 16)),
                                      ),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
