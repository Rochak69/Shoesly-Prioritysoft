// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$ReviewEvent {
  int get productId => throw _privateConstructorUsedError;
  String get selectedFilter => throw _privateConstructorUsedError;
  bool get calculateReview => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int productId, String selectedFilter, bool calculateReview)
        fetchAllReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int productId, String selectedFilter, bool calculateReview)?
        fetchAllReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int productId, String selectedFilter, bool calculateReview)?
        fetchAllReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllReviews value) fetchAllReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllReviews value)? fetchAllReview,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllReviews value)? fetchAllReview,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewEventCopyWith<ReviewEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewEventCopyWith<$Res> {
  factory $ReviewEventCopyWith(
          ReviewEvent value, $Res Function(ReviewEvent) then) =
      _$ReviewEventCopyWithImpl<$Res, ReviewEvent>;
  @useResult
  $Res call({int productId, String selectedFilter, bool calculateReview});
}

/// @nodoc
class _$ReviewEventCopyWithImpl<$Res, $Val extends ReviewEvent>
    implements $ReviewEventCopyWith<$Res> {
  _$ReviewEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? selectedFilter = null,
    Object? calculateReview = null,
  }) {
    return _then(_value.copyWith(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
      calculateReview: null == calculateReview
          ? _value.calculateReview
          : calculateReview // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$FetchAllReviewsImplCopyWith<$Res>
    implements $ReviewEventCopyWith<$Res> {
  factory _$$FetchAllReviewsImplCopyWith(_$FetchAllReviewsImpl value,
          $Res Function(_$FetchAllReviewsImpl) then) =
      __$$FetchAllReviewsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int productId, String selectedFilter, bool calculateReview});
}

/// @nodoc
class __$$FetchAllReviewsImplCopyWithImpl<$Res>
    extends _$ReviewEventCopyWithImpl<$Res, _$FetchAllReviewsImpl>
    implements _$$FetchAllReviewsImplCopyWith<$Res> {
  __$$FetchAllReviewsImplCopyWithImpl(
      _$FetchAllReviewsImpl _value, $Res Function(_$FetchAllReviewsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? productId = null,
    Object? selectedFilter = null,
    Object? calculateReview = null,
  }) {
    return _then(_$FetchAllReviewsImpl(
      productId: null == productId
          ? _value.productId
          : productId // ignore: cast_nullable_to_non_nullable
              as int,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
      calculateReview: null == calculateReview
          ? _value.calculateReview
          : calculateReview // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$FetchAllReviewsImpl implements _FetchAllReviews {
  const _$FetchAllReviewsImpl(
      {required this.productId,
      this.selectedFilter = 'All',
      this.calculateReview = false});

  @override
  final int productId;
  @override
  @JsonKey()
  final String selectedFilter;
  @override
  @JsonKey()
  final bool calculateReview;

  @override
  String toString() {
    return 'ReviewEvent.fetchAllReview(productId: $productId, selectedFilter: $selectedFilter, calculateReview: $calculateReview)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FetchAllReviewsImpl &&
            (identical(other.productId, productId) ||
                other.productId == productId) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter) &&
            (identical(other.calculateReview, calculateReview) ||
                other.calculateReview == calculateReview));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, productId, selectedFilter, calculateReview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$FetchAllReviewsImplCopyWith<_$FetchAllReviewsImpl> get copyWith =>
      __$$FetchAllReviewsImplCopyWithImpl<_$FetchAllReviewsImpl>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            int productId, String selectedFilter, bool calculateReview)
        fetchAllReview,
  }) {
    return fetchAllReview(productId, selectedFilter, calculateReview);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            int productId, String selectedFilter, bool calculateReview)?
        fetchAllReview,
  }) {
    return fetchAllReview?.call(productId, selectedFilter, calculateReview);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            int productId, String selectedFilter, bool calculateReview)?
        fetchAllReview,
    required TResult orElse(),
  }) {
    if (fetchAllReview != null) {
      return fetchAllReview(productId, selectedFilter, calculateReview);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchAllReviews value) fetchAllReview,
  }) {
    return fetchAllReview(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_FetchAllReviews value)? fetchAllReview,
  }) {
    return fetchAllReview?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchAllReviews value)? fetchAllReview,
    required TResult orElse(),
  }) {
    if (fetchAllReview != null) {
      return fetchAllReview(this);
    }
    return orElse();
  }
}

abstract class _FetchAllReviews implements ReviewEvent {
  const factory _FetchAllReviews(
      {required final int productId,
      final String selectedFilter,
      final bool calculateReview}) = _$FetchAllReviewsImpl;

  @override
  int get productId;
  @override
  String get selectedFilter;
  @override
  bool get calculateReview;
  @override
  @JsonKey(ignore: true)
  _$$FetchAllReviewsImplCopyWith<_$FetchAllReviewsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$ReviewState {
  TheStates get theStates => throw _privateConstructorUsedError;
  List<ReviewModel> get reviews => throw _privateConstructorUsedError;
  double? get averageReviews => throw _privateConstructorUsedError;
  String get selectedFilter => throw _privateConstructorUsedError;
  AppError get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ReviewStateCopyWith<ReviewState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ReviewStateCopyWith<$Res> {
  factory $ReviewStateCopyWith(
          ReviewState value, $Res Function(ReviewState) then) =
      _$ReviewStateCopyWithImpl<$Res, ReviewState>;
  @useResult
  $Res call(
      {TheStates theStates,
      List<ReviewModel> reviews,
      double? averageReviews,
      String selectedFilter,
      AppError error});
}

/// @nodoc
class _$ReviewStateCopyWithImpl<$Res, $Val extends ReviewState>
    implements $ReviewStateCopyWith<$Res> {
  _$ReviewStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theStates = null,
    Object? reviews = null,
    Object? averageReviews = freezed,
    Object? selectedFilter = null,
    Object? error = null,
  }) {
    return _then(_value.copyWith(
      theStates: null == theStates
          ? _value.theStates
          : theStates // ignore: cast_nullable_to_non_nullable
              as TheStates,
      reviews: null == reviews
          ? _value.reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      averageReviews: freezed == averageReviews
          ? _value.averageReviews
          : averageReviews // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$ReviewStateImplCopyWith<$Res>
    implements $ReviewStateCopyWith<$Res> {
  factory _$$ReviewStateImplCopyWith(
          _$ReviewStateImpl value, $Res Function(_$ReviewStateImpl) then) =
      __$$ReviewStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {TheStates theStates,
      List<ReviewModel> reviews,
      double? averageReviews,
      String selectedFilter,
      AppError error});
}

/// @nodoc
class __$$ReviewStateImplCopyWithImpl<$Res>
    extends _$ReviewStateCopyWithImpl<$Res, _$ReviewStateImpl>
    implements _$$ReviewStateImplCopyWith<$Res> {
  __$$ReviewStateImplCopyWithImpl(
      _$ReviewStateImpl _value, $Res Function(_$ReviewStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? theStates = null,
    Object? reviews = null,
    Object? averageReviews = freezed,
    Object? selectedFilter = null,
    Object? error = null,
  }) {
    return _then(_$ReviewStateImpl(
      theStates: null == theStates
          ? _value.theStates
          : theStates // ignore: cast_nullable_to_non_nullable
              as TheStates,
      reviews: null == reviews
          ? _value._reviews
          : reviews // ignore: cast_nullable_to_non_nullable
              as List<ReviewModel>,
      averageReviews: freezed == averageReviews
          ? _value.averageReviews
          : averageReviews // ignore: cast_nullable_to_non_nullable
              as double?,
      selectedFilter: null == selectedFilter
          ? _value.selectedFilter
          : selectedFilter // ignore: cast_nullable_to_non_nullable
              as String,
      error: null == error
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as AppError,
    ));
  }
}

/// @nodoc

class _$ReviewStateImpl implements _ReviewState {
  const _$ReviewStateImpl(
      {this.theStates = TheStates.initial,
      final List<ReviewModel> reviews = const [],
      this.averageReviews,
      this.selectedFilter = 'All',
      this.error = const InternalAppError()})
      : _reviews = reviews;

  @override
  @JsonKey()
  final TheStates theStates;
  final List<ReviewModel> _reviews;
  @override
  @JsonKey()
  List<ReviewModel> get reviews {
    if (_reviews is EqualUnmodifiableListView) return _reviews;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_reviews);
  }

  @override
  final double? averageReviews;
  @override
  @JsonKey()
  final String selectedFilter;
  @override
  @JsonKey()
  final AppError error;

  @override
  String toString() {
    return 'ReviewState(theStates: $theStates, reviews: $reviews, averageReviews: $averageReviews, selectedFilter: $selectedFilter, error: $error)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ReviewStateImpl &&
            (identical(other.theStates, theStates) ||
                other.theStates == theStates) &&
            const DeepCollectionEquality().equals(other._reviews, _reviews) &&
            (identical(other.averageReviews, averageReviews) ||
                other.averageReviews == averageReviews) &&
            (identical(other.selectedFilter, selectedFilter) ||
                other.selectedFilter == selectedFilter) &&
            (identical(other.error, error) || other.error == error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      theStates,
      const DeepCollectionEquality().hash(_reviews),
      averageReviews,
      selectedFilter,
      error);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$ReviewStateImplCopyWith<_$ReviewStateImpl> get copyWith =>
      __$$ReviewStateImplCopyWithImpl<_$ReviewStateImpl>(this, _$identity);
}

abstract class _ReviewState implements ReviewState {
  const factory _ReviewState(
      {final TheStates theStates,
      final List<ReviewModel> reviews,
      final double? averageReviews,
      final String selectedFilter,
      final AppError error}) = _$ReviewStateImpl;

  @override
  TheStates get theStates;
  @override
  List<ReviewModel> get reviews;
  @override
  double? get averageReviews;
  @override
  String get selectedFilter;
  @override
  AppError get error;
  @override
  @JsonKey(ignore: true)
  _$$ReviewStateImplCopyWith<_$ReviewStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
