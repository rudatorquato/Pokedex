// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pokemon.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$PokemonStore on _PokemonStore, Store {
  Computed<List<Pokemon>?>? _$pokemonsComputed;

  @override
  List<Pokemon>? get pokemons =>
      (_$pokemonsComputed ??= Computed<List<Pokemon>?>(
        () => super.pokemons,
        name: '_PokemonStore.pokemons',
      )).value;

  late final _$pokemonModelAtom = Atom(
    name: '_PokemonStore.pokemonModel',
    context: context,
  );

  @override
  PokemonModel? get pokemonModel {
    _$pokemonModelAtom.reportRead();
    return super.pokemonModel;
  }

  @override
  set pokemonModel(PokemonModel? value) {
    _$pokemonModelAtom.reportWrite(value, super.pokemonModel, () {
      super.pokemonModel = value;
    });
  }

  late final _$isLoadingAtom = Atom(
    name: '_PokemonStore.isLoading',
    context: context,
  );

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$errorMessageAtom = Atom(
    name: '_PokemonStore.errorMessage',
    context: context,
  );

  @override
  String get errorMessage {
    _$errorMessageAtom.reportRead();
    return super.errorMessage;
  }

  @override
  set errorMessage(String value) {
    _$errorMessageAtom.reportWrite(value, super.errorMessage, () {
      super.errorMessage = value;
    });
  }

  late final _$getPokemonsAsyncAction = AsyncAction(
    '_PokemonStore.getPokemons',
    context: context,
  );

  @override
  Future<void> getPokemons() {
    return _$getPokemonsAsyncAction.run(() => super.getPokemons());
  }

  @override
  String toString() {
    return '''
pokemonModel: ${pokemonModel},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
pokemons: ${pokemons}
    ''';
  }
}
