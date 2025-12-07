// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cars_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

CarsModel _$CarsModelFromJson(Map<String, dynamic> json) => CarsModel(
  count: (json['count'] as num).toInt(),
  pageCount: (json['pageCount'] as num).toInt(),
  page: (json['page'] as num).toInt(),
  adverts: (json['adverts'] as List<dynamic>)
      .map((e) => Advert.fromJson(e as Map<String, dynamic>))
      .toList(),
  currentSorting: CurrentSorting.fromJson(
    json['currentSorting'] as Map<String, dynamic>,
  ),
  advertsPerPage: (json['advertsPerPage'] as num).toInt(),
  initialValue: json['initialValue'] as String,
  extended: json['extended'] as List<dynamic>,
);

Map<String, dynamic> _$CarsModelToJson(CarsModel instance) => <String, dynamic>{
  'count': instance.count,
  'pageCount': instance.pageCount,
  'page': instance.page,
  'adverts': instance.adverts.map((e) => e.toJson()).toList(),
  'currentSorting': instance.currentSorting.toJson(),
  'advertsPerPage': instance.advertsPerPage,
  'initialValue': instance.initialValue,
  'extended': instance.extended,
};

Advert _$AdvertFromJson(Map<String, dynamic> json) => Advert(
  id: (json['id'] as num).toInt(),
  originalDaysOnSale: (json['originalDaysOnSale'] as num).toInt(),
  advertType: json['advertType'] as String,
  isRent: json['isRent'] as bool,
  status: json['status'] as String,
  publicStatus: PublicStatus.fromJson(
    json['publicStatus'] as Map<String, dynamic>,
  ),
  price: Price.fromJson(json['price'] as Map<String, dynamic>),
  description: json['description'] as String,
  exchange: Exchange.fromJson(json['exchange'] as Map<String, dynamic>),
  version: (json['version'] as num).toInt(),
  publishedAt: json['publishedAt'] as String,
  refreshedAt: json['refreshedAt'] as String,
  indexPromo: json['indexPromo'] as bool,
  top: json['top'] as bool,
  highlight: json['highlight'] as bool,
  autoProlongPublication: json['autoProlongPublication'] as bool,
  autoProlongationTop: json['autoProlongationTop'] as bool,
  autoProlongationHighlight: json['autoProlongationHighlight'] as bool,
  isAutoProlongAvailable: json['isAutoProlongAvailable'] as bool,
  renewedAt: json['renewedAt'] as String?,
  financeAdvertMinMonthlyPayment: json['financeAdvertMinMonthlyPayment'] == null
      ? null
      : FinanceAdvertMinMonthlyPayment.fromJson(
          json['financeAdvertMinMonthlyPayment'] as Map<String, dynamic>,
        ),
  photos: (json['photos'] as List<dynamic>)
      .map((e) => Photo.fromJson(e as Map<String, dynamic>))
      .toList(),
  isPhoto360Paid: json['isPhoto360Paid'] as bool,
  organizationId: (json['organizationId'] as num?)?.toInt(),
  organizationTitle: json['organizationTitle'] as String?,
  sellerName: json['sellerName'] as String,
  questionAllowed: json['questionAllowed'] as bool,
  locationName: json['locationName'] as String,
  shortLocationName: json['shortLocationName'] as String,
  properties: (json['properties'] as List<dynamic>)
      .map((e) => Property.fromJson(e as Map<String, dynamic>))
      .toList(),
  publicUrl: json['publicUrl'] as String,
  year: (json['year'] as num).toInt(),
  metadata: AdvertMetadata.fromJson(json['metadata'] as Map<String, dynamic>),
  foreignIp: json['foreignIp'] as bool,
  isFavorite: json['isFavorite'] as bool,
);

Map<String, dynamic> _$AdvertToJson(Advert instance) => <String, dynamic>{
  'id': instance.id,
  'originalDaysOnSale': instance.originalDaysOnSale,
  'advertType': instance.advertType,
  'isRent': instance.isRent,
  'status': instance.status,
  'publicStatus': instance.publicStatus.toJson(),
  'price': instance.price.toJson(),
  'description': instance.description,
  'exchange': instance.exchange.toJson(),
  'version': instance.version,
  'publishedAt': instance.publishedAt,
  'refreshedAt': instance.refreshedAt,
  'indexPromo': instance.indexPromo,
  'top': instance.top,
  'highlight': instance.highlight,
  'autoProlongPublication': instance.autoProlongPublication,
  'autoProlongationTop': instance.autoProlongationTop,
  'autoProlongationHighlight': instance.autoProlongationHighlight,
  'isAutoProlongAvailable': instance.isAutoProlongAvailable,
  'renewedAt': instance.renewedAt,
  'financeAdvertMinMonthlyPayment': instance.financeAdvertMinMonthlyPayment
      ?.toJson(),
  'photos': instance.photos.map((e) => e.toJson()).toList(),
  'isPhoto360Paid': instance.isPhoto360Paid,
  'organizationId': instance.organizationId,
  'organizationTitle': instance.organizationTitle,
  'sellerName': instance.sellerName,
  'questionAllowed': instance.questionAllowed,
  'locationName': instance.locationName,
  'shortLocationName': instance.shortLocationName,
  'properties': instance.properties.map((e) => e.toJson()).toList(),
  'publicUrl': instance.publicUrl,
  'year': instance.year,
  'metadata': instance.metadata.toJson(),
  'foreignIp': instance.foreignIp,
  'isFavorite': instance.isFavorite,
};

PublicStatus _$PublicStatusFromJson(Map<String, dynamic> json) =>
    PublicStatus(label: json['label'] as String, name: json['name'] as String);

Map<String, dynamic> _$PublicStatusToJson(PublicStatus instance) =>
    <String, dynamic>{'label': instance.label, 'name': instance.name};

Price _$PriceFromJson(Map<String, dynamic> json) => Price(
  usd: CurrencyAmount.fromJson(json['usd'] as Map<String, dynamic>),
  byn: CurrencyAmount.fromJson(json['byn'] as Map<String, dynamic>),
  rub: CurrencyAmount.fromJson(json['rub'] as Map<String, dynamic>),
  eur: CurrencyAmount.fromJson(json['eur'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PriceToJson(Price instance) => <String, dynamic>{
  'usd': instance.usd.toJson(),
  'byn': instance.byn.toJson(),
  'rub': instance.rub.toJson(),
  'eur': instance.eur.toJson(),
};

CurrencyAmount _$CurrencyAmountFromJson(Map<String, dynamic> json) =>
    CurrencyAmount(
      currency: json['currency'] as String,
      amount: (json['amount'] as num).toInt(),
      amountFiat: (json['amountFiat'] as num).toDouble(),
    );

Map<String, dynamic> _$CurrencyAmountToJson(CurrencyAmount instance) =>
    <String, dynamic>{
      'currency': instance.currency,
      'amount': instance.amount,
      'amountFiat': instance.amountFiat,
    };

Exchange _$ExchangeFromJson(Map<String, dynamic> json) => Exchange(
  type: json['type'] as String,
  label: json['label'] as String,
  exchangeAllowed: json['exchangeAllowed'] as String,
);

Map<String, dynamic> _$ExchangeToJson(Exchange instance) => <String, dynamic>{
  'type': instance.type,
  'label': instance.label,
  'exchangeAllowed': instance.exchangeAllowed,
};

FinanceAdvertMinMonthlyPayment _$FinanceAdvertMinMonthlyPaymentFromJson(
  Map<String, dynamic> json,
) => FinanceAdvertMinMonthlyPayment(
  productId: (json['productId'] as num).toInt(),
  minPrice: (json['minPrice'] as num).toInt(),
  types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$FinanceAdvertMinMonthlyPaymentToJson(
  FinanceAdvertMinMonthlyPayment instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'minPrice': instance.minPrice,
  'types': instance.types,
  'currency': instance.currency,
};

Photo _$PhotoFromJson(Map<String, dynamic> json) => Photo(
  id: (json['id'] as num).toInt(),
  main: json['main'] as bool,
  mimeType: json['mimeType'] as String,
  big: PhotoSize.fromJson(json['big'] as Map<String, dynamic>),
  medium: PhotoSize.fromJson(json['medium'] as Map<String, dynamic>),
  small: PhotoSize.fromJson(json['small'] as Map<String, dynamic>),
  extrasmall: PhotoSize.fromJson(json['extrasmall'] as Map<String, dynamic>),
);

Map<String, dynamic> _$PhotoToJson(Photo instance) => <String, dynamic>{
  'id': instance.id,
  'main': instance.main,
  'mimeType': instance.mimeType,
  'big': instance.big.toJson(),
  'medium': instance.medium.toJson(),
  'small': instance.small.toJson(),
  'extrasmall': instance.extrasmall.toJson(),
};

PhotoSize _$PhotoSizeFromJson(Map<String, dynamic> json) => PhotoSize(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic> _$PhotoSizeToJson(PhotoSize instance) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

Property _$PropertyFromJson(Map<String, dynamic> json) => Property(
  fallbackType: json['fallbackType'] as String,
  value: json['value'],
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
);

Map<String, dynamic> _$PropertyToJson(Property instance) => <String, dynamic>{
  'fallbackType': instance.fallbackType,
  'value': instance.value,
  'id': instance.id,
  'name': instance.name,
};

AdvertMetadata _$AdvertMetadataFromJson(Map<String, dynamic> json) =>
    AdvertMetadata(
      vinInfo: json['vinInfo'] == null
          ? null
          : VinInfo.fromJson(json['vinInfo'] as Map<String, dynamic>),
      condition: Condition.fromJson(json['condition'] as Map<String, dynamic>),
      brandId: (json['brandId'] as num).toInt(),
      brandSlug: json['brandSlug'] as String,
      modelId: (json['modelId'] as num).toInt(),
      modelSlug: json['modelSlug'] as String,
      generationId: (json['generationId'] as num).toInt(),
      year: (json['year'] as num).toInt(),
      onOrder: json['onOrder'] as bool,
      options: (json['options'] as List<dynamic>)
          .map((e) => AdvertOption.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$AdvertMetadataToJson(AdvertMetadata instance) =>
    <String, dynamic>{
      'vinInfo': instance.vinInfo?.toJson(),
      'condition': instance.condition.toJson(),
      'brandId': instance.brandId,
      'brandSlug': instance.brandSlug,
      'modelId': instance.modelId,
      'modelSlug': instance.modelSlug,
      'generationId': instance.generationId,
      'year': instance.year,
      'onOrder': instance.onOrder,
      'options': instance.options.map((e) => e.toJson()).toList(),
    };

VinInfo _$VinInfoFromJson(Map<String, dynamic> json) =>
    VinInfo(vin: json['vin'] as String, checked: json['checked'] as bool);

Map<String, dynamic> _$VinInfoToJson(VinInfo instance) => <String, dynamic>{
  'vin': instance.vin,
  'checked': instance.checked,
};

Condition _$ConditionFromJson(Map<String, dynamic> json) =>
    Condition(id: (json['id'] as num).toInt(), label: json['label'] as String);

Map<String, dynamic> _$ConditionToJson(Condition instance) => <String, dynamic>{
  'id': instance.id,
  'label': instance.label,
};

AdvertOption _$AdvertOptionFromJson(Map<String, dynamic> json) => AdvertOption(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  nameBel: json['nameBel'] as String,
  optionGroup: OptionGroup.fromJson(
    json['optionGroup'] as Map<String, dynamic>,
  ),
  orderNumber: (json['orderNumber'] as num).toInt(),
);

Map<String, dynamic> _$AdvertOptionToJson(AdvertOption instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameBel': instance.nameBel,
      'optionGroup': instance.optionGroup.toJson(),
      'orderNumber': instance.orderNumber,
    };

OptionGroup _$OptionGroupFromJson(Map<String, dynamic> json) => OptionGroup(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  nameBel: json['nameBel'] as String,
  orderNumber: (json['orderNumber'] as num).toInt(),
);

Map<String, dynamic> _$OptionGroupToJson(OptionGroup instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'nameBel': instance.nameBel,
      'orderNumber': instance.orderNumber,
    };

CurrentSorting _$CurrentSortingFromJson(Map<String, dynamic> json) =>
    CurrentSorting(
      id: (json['id'] as num).toInt(),
      label: json['label'] as String,
    );

Map<String, dynamic> _$CurrentSortingToJson(CurrentSorting instance) =>
    <String, dynamic>{'id': instance.id, 'label': instance.label};
