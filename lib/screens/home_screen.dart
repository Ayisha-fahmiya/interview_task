import 'package:flutter/material.dart';
import 'package:interview_task/api%20services/api_services.dart';
import 'package:interview_task/responsive/responsive.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    ApiServives apiServives = ApiServives();
    return Scaffold(
      body: FutureBuilder(
        future: apiServives.getApi(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SingleChildScrollView(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  vertical: R.sh(12, context),
                ),
                child: Column(
                  children: [
                    Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: R.sh(18, context)),
                      child: Text(
                        snapshot.data!.first.companyProfileName.toString(),
                        style: TextStyle(
                          fontSize: R.sw(28, context),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: DataTable(
                        columns: const [
                          DataColumn(label: Text('Company Profile Id')),
                          DataColumn(label: Text('Company Name')),
                          DataColumn(label: Text('Address')),
                          DataColumn(label: Text('District')),
                          DataColumn(label: Text('City')),
                          DataColumn(label: Text('Street')),
                          DataColumn(label: Text('Contact')),
                          DataColumn(label: Text('Mobile')),
                          DataColumn(label: Text('Email')),
                        ],
                        rows: List.generate(
                          snapshot.data!.length,
                          (int index) => DataRow(
                            cells: [
                              DataCell(Text(
                                  '${snapshot.data!.first.companyProfileId}')),
                              DataCell(Text(
                                  '${snapshot.data!.first.companyProfileName}')),
                              DataCell(Text(
                                  '${snapshot.data!.first.companyProfileAddress1}')),
                              DataCell(
                                  Text('${snapshot.data!.first.district}')),
                              DataCell(Text('${snapshot.data!.first.city}')),
                              DataCell(
                                  Text('${snapshot.data!.first.streetName}')),
                              DataCell(Text(
                                  '${snapshot.data!.first.companyProfileContact}')),
                              DataCell(Text(
                                  '${snapshot.data!.first.companyProfileMobile}')),
                              DataCell(Text(
                                  '${snapshot.data!.first.companyProfileEmail}')),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else {
            return const Center(
              child: CircularProgressIndicator(),
            );
          }
        },
      ),
    );
  }
}

class DetailStyle extends StatelessWidget {
  final String keys;
  final String values;
  const DetailStyle({
    super.key,
    required this.keys,
    required this.values,
  });

  @override
  Widget build(BuildContext context) {
    ApiServives apiServives = ApiServives();
    return FutureBuilder(
      future: apiServives.getApi(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          return SizedBox(
            height: R.sh(200, context),
            child: Column(
              children: [
                SizedBox(
                  height: R.sw(50, context),
                  child: Text(
                    keys,
                    style: TextStyle(
                      fontSize: R.sw(20, context),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                Text(
                  values,
                  style: TextStyle(
                    fontSize: R.sw(14, context),
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          );
        } else {
          return Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
