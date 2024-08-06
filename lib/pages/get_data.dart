import 'package:flutter/material.dart';
import 'package:flutter_course/model/bahanbaku.dart';
import 'package:flutter_course/service/api_service.dart';

// link
// https://jsonplaceholder.typicode.com/posts

class GetDataPage extends StatefulWidget {
  const GetDataPage({super.key});

  @override
  State<GetDataPage> createState() => _GetDataPageState();
}

class _GetDataPageState extends State<GetDataPage> {
  late Future<List<BahanBaku>> futureBahanBaku;
  final ApiService apiService = ApiService();

  @override
  void initState() {
    super.initState();
    futureBahanBaku = apiService.fetchBahanBaku();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Get Data Page'),
      ),
      body: Center(
        child: FutureBuilder<List<BahanBaku>>(
          future: futureBahanBaku,
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return CircularProgressIndicator();
            } else if (snapshot.hasError) {
              return Text('Error: ${snapshot.error}');
            } else if (snapshot.hasData) {
              List<BahanBaku>? materials = snapshot.data;
              return ListView.builder(
                itemCount: materials?.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(materials![index].name),
                    subtitle: Text(materials[index].code),
                  );
                },
              );
            } else {
              return Text('No materials found');
            }
          },
        ),
      ),
    );
  }
}
