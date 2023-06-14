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
                child: SingleChildScrollView(
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
                          DataCell(
                            Text('${snapshot.data![index].companyProfileId}'),
                          ),
                          DataCell(
                            Text('${snapshot.data![index].companyProfileName}'),
                          ),
                          DataCell(
                            Text(
                                '${snapshot.data![index].companyProfileAddress1}'),
                          ),
                          DataCell(
                            Text('${snapshot.data![index].district}'),
                          ),
                          DataCell(
                            Text('${snapshot.data![index].city}'),
                          ),
                          DataCell(
                            Text('${snapshot.data![index].streetName}'),
                          ),
                          DataCell(
                            Text(
                                '${snapshot.data![index].companyProfileContact}'),
                          ),
                          DataCell(
                            Text(
                                '${snapshot.data![index].companyProfileMobile}'),
                          ),
                          DataCell(
                            Text(
                                '${snapshot.data![index].companyProfileEmail}'),
                          ),
                        ],
                      ),
                    ),
                  ),
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
