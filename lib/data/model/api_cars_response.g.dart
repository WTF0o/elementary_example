// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'api_cars_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ApiCarsResponse _$ApiCarsResponseFromJson(Map<String, dynamic> json) =>
    ApiCarsResponse(
      count: (json['count'] as num).toInt(),
      pageCount: (json['pageCount'] as num).toInt(),
      page: (json['page'] as num).toInt(),
      adverts: (json['adverts'] as List<dynamic>)
          .map((e) => ApiAdvertResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      currentSorting: ApiCurrentSortingResponse.fromJson(
        json['currentSorting'] as Map<String, dynamic>,
      ),
      advertsPerPage: (json['advertsPerPage'] as num).toInt(),
      initialValue: json['initialValue'] as String,
      extended: json['extended'] as List<dynamic>,
    );

Map<String, dynamic> _$ApiCarsResponseToJson(ApiCarsResponse instance) =>
    <String, dynamic>{
      'count': instance.count,
      'pageCount': instance.pageCount,
      'page': instance.page,
      'adverts': instance.adverts.map((e) => e.toJson()).toList(),
      'currentSorting': instance.currentSorting.toJson(),
      'advertsPerPage': instance.advertsPerPage,
      'initialValue': instance.initialValue,
      'extended': instance.extended,
    };

ApiAdvertResponse _$ApiAdvertResponseFromJson(Map<String, dynamic> json) =>
    ApiAdvertResponse(
      id: (json['id'] as num).toInt(),
      originalDaysOnSale: (json['originalDaysOnSale'] as num).toInt(),
      advertType: json['advertType'] as String,
      isRent: json['isRent'] as bool,
      status: json['status'] as String,
      publicStatus: ApiPublicStatusResponse.fromJson(
        json['publicStatus'] as Map<String, dynamic>,
      ),
      price: ApiPriceResponse.fromJson(json['price'] as Map<String, dynamic>),
      description: json['description'] as String,
      exchange: ApiExchangeResponse.fromJson(
        json['exchange'] as Map<String, dynamic>,
      ),
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
      financeAdvertMinMonthlyPayment:
          json['financeAdvertMinMonthlyPayment'] == null
          ? null
          : ApiFinanceAdvertMinMonthlyPaymentResponse.fromJson(
              json['financeAdvertMinMonthlyPayment'] as Map<String, dynamic>,
            ),
      photos: (json['photos'] as List<dynamic>)
          .map((e) => ApiPhotoResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      isPhoto360Paid: json['isPhoto360Paid'] as bool,
      organizationId: (json['organizationId'] as num?)?.toInt(),
      organizationTitle: json['organizationTitle'] as String?,
      sellerName: json['sellerName'] as String,
      questionAllowed: json['questionAllowed'] as bool,
      locationName: json['locationName'] as String,
      shortLocationName: json['shortLocationName'] as String,
      properties: (json['properties'] as List<dynamic>)
          .map((e) => ApiPropertyResponse.fromJson(e as Map<String, dynamic>))
          .toList(),
      publicUrl: json['publicUrl'] as String,
      year: (json['year'] as num).toInt(),
      metadata: ApiAdvertMetadataResponse.fromJson(
        json['metadata'] as Map<String, dynamic>,
      ),
      foreignIp: json['foreignIp'] as bool,
      isFavorite: json['isFavorite'] as bool? ?? false,
    );

Map<String, dynamic> _$ApiAdvertResponseToJson(ApiAdvertResponse instance) =>
    <String, dynamic>{
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

ApiPublicStatusResponse _$ApiPublicStatusResponseFromJson(
  Map<String, dynamic> json,
) => ApiPublicStatusResponse(
  label: json['label'] as String,
  name: json['name'] as String,
);

Map<String, dynamic> _$ApiPublicStatusResponseToJson(
  ApiPublicStatusResponse instance,
) => <String, dynamic>{'label': instance.label, 'name': instance.name};

ApiPriceResponse _$ApiPriceResponseFromJson(
  Map<String, dynamic> json,
) => ApiPriceResponse(
  usd: ApiCurrencyAmountResponse.fromJson(json['usd'] as Map<String, dynamic>),
  byn: ApiCurrencyAmountResponse.fromJson(json['byn'] as Map<String, dynamic>),
  rub: ApiCurrencyAmountResponse.fromJson(json['rub'] as Map<String, dynamic>),
  eur: ApiCurrencyAmountResponse.fromJson(json['eur'] as Map<String, dynamic>),
);

Map<String, dynamic> _$ApiPriceResponseToJson(ApiPriceResponse instance) =>
    <String, dynamic>{
      'usd': instance.usd.toJson(),
      'byn': instance.byn.toJson(),
      'rub': instance.rub.toJson(),
      'eur': instance.eur.toJson(),
    };

ApiCurrencyAmountResponse _$ApiCurrencyAmountResponseFromJson(
  Map<String, dynamic> json,
) => ApiCurrencyAmountResponse(
  currency: json['currency'] as String,
  amount: (json['amount'] as num).toInt(),
  amountFiat: (json['amountFiat'] as num).toDouble(),
);

Map<String, dynamic> _$ApiCurrencyAmountResponseToJson(
  ApiCurrencyAmountResponse instance,
) => <String, dynamic>{
  'currency': instance.currency,
  'amount': instance.amount,
  'amountFiat': instance.amountFiat,
};

ApiExchangeResponse _$ApiExchangeResponseFromJson(Map<String, dynamic> json) =>
    ApiExchangeResponse(
      type: json['type'] as String,
      label: json['label'] as String,
      exchangeAllowed: json['exchangeAllowed'] as String,
    );

Map<String, dynamic> _$ApiExchangeResponseToJson(
  ApiExchangeResponse instance,
) => <String, dynamic>{
  'type': instance.type,
  'label': instance.label,
  'exchangeAllowed': instance.exchangeAllowed,
};

ApiFinanceAdvertMinMonthlyPaymentResponse
_$ApiFinanceAdvertMinMonthlyPaymentResponseFromJson(
  Map<String, dynamic> json,
) => ApiFinanceAdvertMinMonthlyPaymentResponse(
  productId: (json['productId'] as num).toInt(),
  minPrice: (json['minPrice'] as num).toInt(),
  types: (json['types'] as List<dynamic>).map((e) => e as String).toList(),
  currency: json['currency'] as String,
);

Map<String, dynamic> _$ApiFinanceAdvertMinMonthlyPaymentResponseToJson(
  ApiFinanceAdvertMinMonthlyPaymentResponse instance,
) => <String, dynamic>{
  'productId': instance.productId,
  'minPrice': instance.minPrice,
  'types': instance.types,
  'currency': instance.currency,
};

ApiPhotoResponse _$ApiPhotoResponseFromJson(
  Map<String, dynamic> json,
) => ApiPhotoResponse(
  id: (json['id'] as num).toInt(),
  main: json['main'] as bool,
  mimeType: json['mimeType'] as String,
  big: ApiPhotoSizeResponse.fromJson(json['big'] as Map<String, dynamic>),
  medium: ApiPhotoSizeResponse.fromJson(json['medium'] as Map<String, dynamic>),
  small: ApiPhotoSizeResponse.fromJson(json['small'] as Map<String, dynamic>),
  extrasmall: ApiPhotoSizeResponse.fromJson(
    json['extrasmall'] as Map<String, dynamic>,
  ),
);

Map<String, dynamic> _$ApiPhotoResponseToJson(ApiPhotoResponse instance) =>
    <String, dynamic>{
      'id': instance.id,
      'main': instance.main,
      'mimeType': instance.mimeType,
      'big': instance.big.toJson(),
      'medium': instance.medium.toJson(),
      'small': instance.small.toJson(),
      'extrasmall': instance.extrasmall.toJson(),
    };

ApiPhotoSizeResponse _$ApiPhotoSizeResponseFromJson(
  Map<String, dynamic> json,
) => ApiPhotoSizeResponse(
  width: (json['width'] as num).toInt(),
  height: (json['height'] as num).toInt(),
  url: json['url'] as String,
);

Map<String, dynamic> _$ApiPhotoSizeResponseToJson(
  ApiPhotoSizeResponse instance,
) => <String, dynamic>{
  'width': instance.width,
  'height': instance.height,
  'url': instance.url,
};

ApiPropertyResponse _$ApiPropertyResponseFromJson(Map<String, dynamic> json) =>
    ApiPropertyResponse(
      fallbackType: json['fallbackType'] as String,
      value: json['value'],
      id: (json['id'] as num).toInt(),
      name: json['name'] as String,
    );

Map<String, dynamic> _$ApiPropertyResponseToJson(
  ApiPropertyResponse instance,
) => <String, dynamic>{
  'fallbackType': instance.fallbackType,
  'value': instance.value,
  'id': instance.id,
  'name': instance.name,
};

ApiAdvertMetadataResponse _$ApiAdvertMetadataResponseFromJson(
  Map<String, dynamic> json,
) => ApiAdvertMetadataResponse(
  vinInfo: json['vinInfo'] == null
      ? null
      : ApiVinInfoResponse.fromJson(json['vinInfo'] as Map<String, dynamic>),
  condition: ApiConditionResponse.fromJson(
    json['condition'] as Map<String, dynamic>,
  ),
  brandId: (json['brandId'] as num).toInt(),
  brandSlug: json['brandSlug'] as String,
  modelId: (json['modelId'] as num).toInt(),
  modelSlug: json['modelSlug'] as String,
  generationId: (json['generationId'] as num).toInt(),
  year: (json['year'] as num).toInt(),
  onOrder: json['onOrder'] as bool,
  options: (json['options'] as List<dynamic>)
      .map((e) => ApiAdvertOptionResponse.fromJson(e as Map<String, dynamic>))
      .toList(),
);

Map<String, dynamic> _$ApiAdvertMetadataResponseToJson(
  ApiAdvertMetadataResponse instance,
) => <String, dynamic>{
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

ApiVinInfoResponse _$ApiVinInfoResponseFromJson(Map<String, dynamic> json) =>
    ApiVinInfoResponse(
      vin: json['vin'] as String,
      checked: json['checked'] as bool,
    );

Map<String, dynamic> _$ApiVinInfoResponseToJson(ApiVinInfoResponse instance) =>
    <String, dynamic>{'vin': instance.vin, 'checked': instance.checked};

ApiConditionResponse _$ApiConditionResponseFromJson(
  Map<String, dynamic> json,
) => ApiConditionResponse(
  id: (json['id'] as num).toInt(),
  label: json['label'] as String,
);

Map<String, dynamic> _$ApiConditionResponseToJson(
  ApiConditionResponse instance,
) => <String, dynamic>{'id': instance.id, 'label': instance.label};

ApiAdvertOptionResponse _$ApiAdvertOptionResponseFromJson(
  Map<String, dynamic> json,
) => ApiAdvertOptionResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  nameBel: json['nameBel'] as String,
  optionGroup: ApiOptionGroupResponse.fromJson(
    json['optionGroup'] as Map<String, dynamic>,
  ),
  orderNumber: (json['orderNumber'] as num).toInt(),
);

Map<String, dynamic> _$ApiAdvertOptionResponseToJson(
  ApiAdvertOptionResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'nameBel': instance.nameBel,
  'optionGroup': instance.optionGroup.toJson(),
  'orderNumber': instance.orderNumber,
};

ApiOptionGroupResponse _$ApiOptionGroupResponseFromJson(
  Map<String, dynamic> json,
) => ApiOptionGroupResponse(
  id: (json['id'] as num).toInt(),
  name: json['name'] as String,
  nameBel: json['nameBel'] as String,
  orderNumber: (json['orderNumber'] as num).toInt(),
);

Map<String, dynamic> _$ApiOptionGroupResponseToJson(
  ApiOptionGroupResponse instance,
) => <String, dynamic>{
  'id': instance.id,
  'name': instance.name,
  'nameBel': instance.nameBel,
  'orderNumber': instance.orderNumber,
};

ApiCurrentSortingResponse _$ApiCurrentSortingResponseFromJson(
  Map<String, dynamic> json,
) => ApiCurrentSortingResponse(
  id: (json['id'] as num).toInt(),
  label: json['label'] as String,
);

Map<String, dynamic> _$ApiCurrentSortingResponseToJson(
  ApiCurrentSortingResponse instance,
) => <String, dynamic>{'id': instance.id, 'label': instance.label};
