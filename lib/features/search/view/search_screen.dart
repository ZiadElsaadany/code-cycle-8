
import 'package:flower_code_cycle_8/features/home/data/models/sweet_model.dart';
import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {

List<SweetModel> searchList = [ ];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [


              Row(
                children: [
                  Expanded(child: TextFormField(
                          onChanged: (value) {
                            // Donuts
setState(() {              //D
  searchList = bestSelling.where((element) =>element.title.toLowerCase().contains(value.toLowerCase())).toList();

});


                  print(searchList.toList());



                          },
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30)
                      )
                    ) ,
                  )) ,
                  Icon(Icons.search)
                ],
              ) ,
              Divider(),
              Expanded(
                child: ListView.builder(
                    itemCount: searchList.isEmpty ?  bestSelling.length :searchList.length,
                    itemBuilder: (c,index) {
                  return Text(  searchList.isEmpty ?  bestSelling[index].title: searchList[index].title);
                }),
              )



            ],
          ),
        ),
      ),
    );
  }
}
