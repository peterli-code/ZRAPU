@EndUserText.label: 'Travel Data ProjectionView'
@AccessControl.authorizationCheck: #CHECK
@Search.searchable: true

@Metadata.allowExtensions: true
define root view entity ZC_RAP_Travel_U_PLYH 
    as projection on ZI_RAP_Travel_U_PLYH {
    //ZI_RAP_TRAVEL_U_PLYH
    key TravelID,
    @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Agency', element: 'AgencyID' } } ]
    @Search.defaultSearchElement: true    
    AgencyID,
    @Consumption.valueHelpDefinition: [ { entity: { name: '/DMO/I_Customer', element: 'CustomerID' } } ]
    @Search.defaultSearchElement: true
    CustomerID,
    BeginDate,
    EndDate,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    BookingFee,
    @Semantics.amount.currencyCode: 'CurrencyCode'
    TotalPrice,
    @Consumption.valueHelpDefinition: [ { entity: { name: 'I_Currency', element: 'Currency' } } ]
    CurrencyCode,
    Description,
    Status,
    Createdby,
    Createdat,
    Lastchangedby,
    Lastchangedat,
    /* Associations */
    //ZI_RAP_TRAVEL_U_PLYH
    _Agency,
    _Booking : redirected to composition child ZC_RAP_BOOKING_U_PLYH,
    _Currency,
    _Customer
}
