@AbapCatalog.viewEnhancementCategory: [#NONE]
@VDM.viewType: #CONSUMPTION
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Travel teck table'
@Metadata.ignorePropagatedAnnotations: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}
@Metadata.allowExtensions: true
define view entity
   z991_travel_tech_m
   as select from
      ytravel_tech_m
      {
         key travel_id       as TravelId,
             agency_id       as AgencyId,
             customer_id     as CustomerId,
             begin_date      as BeginDate,
             end_date        as EndDate,
             @Semantics.amount.currencyCode: 'CurrencyCode'
             booking_fee     as BookingFee,
             @Semantics.amount.currencyCode: 'CurrencyCode'
             total_price     as TotalPrice,
             currency_code   as CurrencyCode,
             description     as Description,
             overall_status  as OverallStatus,
             created_by      as CreatedBy,
             created_at      as CreatedAt,
             last_changed_by as LastChangedBy,
             last_changed_at as LastChangedAt
      }
