library otter.fuzzer;

import 'dart:io';
import 'package:unittest/unittest.dart';
import 'package:mersenne/mersenne.dart';

part 'src/fuzzer.dart';
part 'src/fuzzer_impl.dart';
part 'src/random_utils.dart';


abstract class OTType<T, E> {
  String get name;
  String get uri;

  T create([initial]);
  T apply(T doc, E op);
  E transform(E op, E otherOp, String side);
  E invert(E op);
  E compose(E op1, E op2);
}