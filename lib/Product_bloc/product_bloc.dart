import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloccccc/wrebbb/ApiService.dart';
import 'package:meta/meta.dart';

import '../model/Products.dart';

part 'product_event.dart';
part 'product_state.dart';

class ProductBloc extends Bloc<ProductEvent, ProductState> {
  ProductBloc() : super(ProductInitial(plist: [])) {
    ApiService apiService=ApiService();
    on<fetchproducts>((event, emit) async {

       var list=await apiService.fetchdata();

       emit(ProductState(plist: list!));

    });
    on<delete>((event, emit) async {

      event!.i;

     // emit(ProductState(plist: list!));

    });
  }
}
