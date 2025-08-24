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
  Computed<List<PokemonGen>?>? _$pokemonsGenComputed;

  @override
  List<PokemonGen>? get pokemonsGen =>
      (_$pokemonsGenComputed ??= Computed<List<PokemonGen>?>(
        () => super.pokemonsGen,
        name: '_PokemonStore.pokemonsGen',
      )).value;
  Computed<PokemonImage?>? _$pokemonImageComputed;

  @override
  PokemonImage? get pokemonImage =>
      (_$pokemonImageComputed ??= Computed<PokemonImage?>(
        () => super.pokemonImage,
        name: '_PokemonStore.pokemonImage',
      )).value;
  Computed<PokemonBasicInformation?>? _$pokemonBasicInformationComputed;

  @override
  PokemonBasicInformation? get pokemonBasicInformation =>
      (_$pokemonBasicInformationComputed ??= Computed<PokemonBasicInformation?>(
        () => super.pokemonBasicInformation,
        name: '_PokemonStore.pokemonBasicInformation',
      )).value;
  Computed<List<Pokemon>?>? _$currentPokemonsComputed;

  @override
  List<Pokemon>? get currentPokemons =>
      (_$currentPokemonsComputed ??= Computed<List<Pokemon>?>(
        () => super.currentPokemons,
        name: '_PokemonStore.currentPokemons',
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

  late final _$pokemonGenModelAtom = Atom(
    name: '_PokemonStore.pokemonGenModel',
    context: context,
  );

  @override
  PokemonGenModel? get pokemonGenModel {
    _$pokemonGenModelAtom.reportRead();
    return super.pokemonGenModel;
  }

  @override
  set pokemonGenModel(PokemonGenModel? value) {
    _$pokemonGenModelAtom.reportWrite(value, super.pokemonGenModel, () {
      super.pokemonGenModel = value;
    });
  }

  late final _$pokemonInformationModelAtom = Atom(
    name: '_PokemonStore.pokemonInformationModel',
    context: context,
  );

  @override
  PokemonInformationModel? get pokemonInformationModel {
    _$pokemonInformationModelAtom.reportRead();
    return super.pokemonInformationModel;
  }

  @override
  set pokemonInformationModel(PokemonInformationModel? value) {
    _$pokemonInformationModelAtom.reportWrite(
      value,
      super.pokemonInformationModel,
      () {
        super.pokemonInformationModel = value;
      },
    );
  }

  late final _$filteredPokemonsAtom = Atom(
    name: '_PokemonStore.filteredPokemons',
    context: context,
  );

  @override
  List<Pokemon>? get filteredPokemons {
    _$filteredPokemonsAtom.reportRead();
    return super.filteredPokemons;
  }

  @override
  set filteredPokemons(List<Pokemon>? value) {
    _$filteredPokemonsAtom.reportWrite(value, super.filteredPokemons, () {
      super.filteredPokemons = value;
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

  late final _$getPokemonsGenerationsAsyncAction = AsyncAction(
    '_PokemonStore.getPokemonsGenerations',
    context: context,
  );

  @override
  Future<void> getPokemonsGenerations(String gen) {
    return _$getPokemonsGenerationsAsyncAction.run(
      () => super.getPokemonsGenerations(gen),
    );
  }

  late final _$getPokemonInformationAsyncAction = AsyncAction(
    '_PokemonStore.getPokemonInformation',
    context: context,
  );

  @override
  Future<void> getPokemonInformation(String pokemonName) {
    return _$getPokemonInformationAsyncAction.run(
      () => super.getPokemonInformation(pokemonName),
    );
  }

  late final _$_PokemonStoreActionController = ActionController(
    name: '_PokemonStore',
    context: context,
  );

  @override
  void filterPokemons(String query) {
    final _$actionInfo = _$_PokemonStoreActionController.startAction(
      name: '_PokemonStore.filterPokemons',
    );
    try {
      return super.filterPokemons(query);
    } finally {
      _$_PokemonStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
pokemonModel: ${pokemonModel},
isLoading: ${isLoading},
errorMessage: ${errorMessage},
pokemonGenModel: ${pokemonGenModel},
pokemonInformationModel: ${pokemonInformationModel},
filteredPokemons: ${filteredPokemons},
pokemons: ${pokemons},
pokemonsGen: ${pokemonsGen},
pokemonImage: ${pokemonImage},
pokemonBasicInformation: ${pokemonBasicInformation},
currentPokemons: ${currentPokemons}
    ''';
  }
}
