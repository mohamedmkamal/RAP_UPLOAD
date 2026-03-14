@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for excl data'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define view entity ZC_EXL_DATA as projection on ZI_EXL_DATA as XDATA
{
    key EndUser,
    key FileId,
    key LId,
    key LNo,
    Supplier,
    Purchasingorganization,
    Purchasinggroup,
    Companycode,
    Purchaseorderitem,
    Purchaseorderitemtext,
    Material,
    Materialgroup,
    @Semantics.quantity.unitOfMeasure : 'PoUnit'
    PoQuantity,
    PoUnit,
    Plant,
    Accountassignmentcategory,
    Purchaserequisition,
    Purchaserequisitionitem,
    @Semantics.amount.currencyCode: 'Currency'
    Amount,
    Currency,
    /* Associations */
    _EXLUSR : redirected to parent ZC_EXL_USER
    
}
