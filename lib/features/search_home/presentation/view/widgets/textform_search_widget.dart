import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:mvvm_revirpoid/features/search_home/presentation/view_model/featch_search.dart';

class TextFormSearch extends StatelessWidget {
  const TextFormSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer(builder: (BuildContext context, WidgetRef ref, Widget? child) {
      final item=ref.watch(fetchSearchRiverpod);
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30.0),
        child: TextFormField(
          onChanged: (value){
            item.changesearch(value);
          },
          decoration: InputDecoration(
              suffixIcon: const Icon(Icons.search),
              border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Colors.blue
                  )
              ),
              labelText: 'Search',
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: const BorderSide(
                      color: Colors.white
                  )
              ),
              constraints: const BoxConstraints.expand(height: 45)
          ) ,
        ),
      );
    },);
  }
}
