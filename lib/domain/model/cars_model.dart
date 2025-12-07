import 'package:equatable/equatable.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:json_annotation/json_annotation.dart';

part 'cars_model.g.dart';

@JsonSerializable()
class CarsModel {
  final int count;
  final int pageCount;
  final int page;
  final List<Advert> adverts;
  final CurrentSorting currentSorting;
  final int advertsPerPage;
  final String initialValue;
  final List<dynamic> extended;

  CarsModel({
    required this.count,
    required this.pageCount,
    required this.page,
    required this.adverts,
    required this.currentSorting,
    required this.advertsPerPage,
    required this.initialValue,
    required this.extended,
  });

  factory CarsModel.fromJson(Map<String, dynamic> json) => _$CarsModelFromJson(json);

  Map<String, dynamic> toJson() => _$CarsModelToJson(this);
}

@JsonSerializable()
class Advert extends Equatable {
  final int id;
  final int originalDaysOnSale;
  final String advertType;
  final bool isRent;
  final String status;
  final PublicStatus publicStatus;
  final Price price;
  final String description;
  final Exchange exchange;
  final int version;
  final String publishedAt;
  final String refreshedAt;
  final bool indexPromo;
  final bool top;
  final bool highlight;
  final bool autoProlongPublication;
  final bool autoProlongationTop;
  final bool autoProlongationHighlight;
  final bool isAutoProlongAvailable;
  final String? renewedAt;
  final FinanceAdvertMinMonthlyPayment? financeAdvertMinMonthlyPayment;
  final List<Photo> photos;
  final bool isPhoto360Paid;
  final int? organizationId;
  final String? organizationTitle;
  final String sellerName;
  final bool questionAllowed;
  final String locationName;
  final String shortLocationName;
  final List<Property> properties;
  final String publicUrl;
  final int year;
  final AdvertMetadata metadata;
  final bool foreignIp;
  bool isFavorite;

  Advert({
    required this.id,
    required this.originalDaysOnSale,
    required this.advertType,
    required this.isRent,
    required this.status,
    required this.publicStatus,
    required this.price,
    required this.description,
    required this.exchange,
    required this.version,
    required this.publishedAt,
    required this.refreshedAt,
    required this.indexPromo,
    required this.top,
    required this.highlight,
    required this.autoProlongPublication,
    required this.autoProlongationTop,
    required this.autoProlongationHighlight,
    required this.isAutoProlongAvailable,
    required this.renewedAt,
    required this.financeAdvertMinMonthlyPayment,
    required this.photos,
    required this.isPhoto360Paid,
    required this.organizationId,
    required this.organizationTitle,
    required this.sellerName,
    required this.questionAllowed,
    required this.locationName,
    required this.shortLocationName,
    required this.properties,
    required this.publicUrl,
    required this.year,
    required this.metadata,
    required this.foreignIp,
    required this.isFavorite,
  });

  factory Advert.fromJson(Map<String, dynamic> json) => _$AdvertFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertToJson(this);

  @override
  List<Object?> get props => [
    id,
    originalDaysOnSale,
    advertType,
    isRent,
    status,
    publicStatus,
    price,
    description,
    exchange,
    version,
    publishedAt,
    refreshedAt,
    indexPromo,
    top,
    highlight,
    autoProlongPublication,
    autoProlongationTop,
    autoProlongationHighlight,
    isAutoProlongAvailable,
    renewedAt,
    financeAdvertMinMonthlyPayment,
    photos,
    isPhoto360Paid,
    organizationId,
    organizationTitle,
    sellerName,
    questionAllowed,
    locationName,
    shortLocationName,
    properties,
    publicUrl,
    year,
    metadata,
    foreignIp,
    isFavorite,
  ];
}

@JsonSerializable()
class PublicStatus {
  final String label;
  final String name;

  PublicStatus({required this.label, required this.name});

  factory PublicStatus.fromJson(Map<String, dynamic> json) => _$PublicStatusFromJson(json);

  Map<String, dynamic> toJson() => _$PublicStatusToJson(this);
}

@JsonSerializable()
class Price {
  final CurrencyAmount usd;
  final CurrencyAmount byn;
  final CurrencyAmount rub;
  final CurrencyAmount eur;

  Price({required this.usd, required this.byn, required this.rub, required this.eur});

  factory Price.fromJson(Map<String, dynamic> json) => _$PriceFromJson(json);

  Map<String, dynamic> toJson() => _$PriceToJson(this);
}

@JsonSerializable()
class CurrencyAmount {
  final String currency;
  final int amount;
  final double amountFiat;

  CurrencyAmount({required this.currency, required this.amount, required this.amountFiat});

  factory CurrencyAmount.fromJson(Map<String, dynamic> json) => _$CurrencyAmountFromJson(json);

  Map<String, dynamic> toJson() => _$CurrencyAmountToJson(this);
}

@JsonSerializable()
class Exchange {
  final String type;
  final String label;
  final String exchangeAllowed;

  Exchange({required this.type, required this.label, required this.exchangeAllowed});

  factory Exchange.fromJson(Map<String, dynamic> json) => _$ExchangeFromJson(json);

  Map<String, dynamic> toJson() => _$ExchangeToJson(this);
}

@JsonSerializable()
class FinanceAdvertMinMonthlyPayment {
  final int productId;
  final int minPrice;
  final List<String> types;
  final String currency;

  FinanceAdvertMinMonthlyPayment({
    required this.productId,
    required this.minPrice,
    required this.types,
    required this.currency,
  });

  factory FinanceAdvertMinMonthlyPayment.fromJson(Map<String, dynamic> json) =>
      _$FinanceAdvertMinMonthlyPaymentFromJson(json);

  Map<String, dynamic> toJson() => _$FinanceAdvertMinMonthlyPaymentToJson(this);
}

@JsonSerializable()
class Photo {
  final int id;
  final bool main;
  final String mimeType;
  final PhotoSize big;
  final PhotoSize medium;
  final PhotoSize small;
  final PhotoSize extrasmall;

  Photo({
    required this.id,
    required this.main,
    required this.mimeType,
    required this.big,
    required this.medium,
    required this.small,
    required this.extrasmall,
  });

  factory Photo.fromJson(Map<String, dynamic> json) => _$PhotoFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoToJson(this);
}

@JsonSerializable()
class PhotoSize {
  final int width;
  final int height;
  final String url;

  PhotoSize({required this.width, required this.height, required this.url});

  factory PhotoSize.fromJson(Map<String, dynamic> json) => _$PhotoSizeFromJson(json);

  Map<String, dynamic> toJson() => _$PhotoSizeToJson(this);
}

@JsonSerializable()
class Property {
  final String fallbackType;
  final dynamic value;
  final int id;
  final String name;

  Property({required this.fallbackType, required this.value, required this.id, required this.name});

  factory Property.fromJson(Map<String, dynamic> json) => _$PropertyFromJson(json);

  Map<String, dynamic> toJson() => _$PropertyToJson(this);
}

@JsonSerializable()
class AdvertMetadata {
  final VinInfo? vinInfo;
  final Condition condition;
  final int brandId;
  final String brandSlug;
  final int modelId;
  final String modelSlug;
  final int generationId;
  final int year;
  final bool onOrder;
  final List<AdvertOption> options;

  AdvertMetadata({
    required this.vinInfo,
    required this.condition,
    required this.brandId,
    required this.brandSlug,
    required this.modelId,
    required this.modelSlug,
    required this.generationId,
    required this.year,
    required this.onOrder,
    required this.options,
  });

  factory AdvertMetadata.fromJson(Map<String, dynamic> json) => _$AdvertMetadataFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertMetadataToJson(this);
}

@JsonSerializable()
class VinInfo {
  final String vin;
  final bool checked;

  VinInfo({required this.vin, required this.checked});

  factory VinInfo.fromJson(Map<String, dynamic> json) => _$VinInfoFromJson(json);

  Map<String, dynamic> toJson() => _$VinInfoToJson(this);
}

@JsonSerializable()
class Condition {
  final int id;
  final String label;

  Condition({required this.id, required this.label});

  factory Condition.fromJson(Map<String, dynamic> json) => _$ConditionFromJson(json);

  Map<String, dynamic> toJson() => _$ConditionToJson(this);
}

@JsonSerializable()
class AdvertOption {
  final int id;
  final String name;
  final String nameBel;
  final OptionGroup optionGroup;
  final int orderNumber;

  AdvertOption({
    required this.id,
    required this.name,
    required this.nameBel,
    required this.optionGroup,
    required this.orderNumber,
  });

  factory AdvertOption.fromJson(Map<String, dynamic> json) => _$AdvertOptionFromJson(json);

  Map<String, dynamic> toJson() => _$AdvertOptionToJson(this);
}

@JsonSerializable()
class OptionGroup {
  final int id;
  final String name;
  final String nameBel;
  final int orderNumber;

  OptionGroup({
    required this.id,
    required this.name,
    required this.nameBel,
    required this.orderNumber,
  });

  factory OptionGroup.fromJson(Map<String, dynamic> json) => _$OptionGroupFromJson(json);

  Map<String, dynamic> toJson() => _$OptionGroupToJson(this);
}

@JsonSerializable()
class CurrentSorting {
  final int id;
  final String label;

  CurrentSorting({required this.id, required this.label});

  factory CurrentSorting.fromJson(Map<String, dynamic> json) => _$CurrentSortingFromJson(json);

  Map<String, dynamic> toJson() => _$CurrentSortingToJson(this);
}

class AdvertAdapter extends TypeAdapter<Advert> {
  @override
  final typeId = 1;

  @override
  Advert read(BinaryReader reader) {
    final resultMap = _deepCastMap(reader.readMap());
    return Advert.fromJson(resultMap);
  }

  Map<String, dynamic> _deepCastMap(dynamic value) {
    if (value is Map) {
      return value.map((k, v) => MapEntry(k.toString(), _deepCastValue(v)));
    }
    return {};
  }

  dynamic _deepCastValue(dynamic value) {
    if (value is Map) {
      return value.map((k, v) => MapEntry(k.toString(), _deepCastValue(v)));
    } else if (value is List) {
      return value.map((e) => _deepCastValue(e)).toList();
    }
    return value;
  }

  @override
  void write(BinaryWriter writer, Advert obj) {
    writer.writeMap(obj.toJson());
  }
}
