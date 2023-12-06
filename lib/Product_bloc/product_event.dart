part of 'product_bloc.dart';

abstract class ProductEvent {}
class fetchproducts extends ProductEvent{}
class delete extends ProductEvent{
int i;
  delete({required this.i});
}