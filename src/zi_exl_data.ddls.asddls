@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic view for excel data'
@Metadata.ignorePropagatedAnnotations: false
define view entity ZI_EXL_DATA as select from zdt_exl_data
association to parent ZI_EXL_USER as _EXLUSR on 
$projection.EndUser = _EXLUSR.EndUser and
$projection.FileId = _EXLUSR.FileId 
{
    key end_user as EndUser,
    key file_id as FileId,
    key line_id as LId,
    key line_no as LNo,
    supplier as Supplier,
    purchasingorganization as Purchasingorganization,
    purchasinggroup as Purchasinggroup,
    companycode as Companycode,
    purchaseorderitem as Purchaseorderitem,
    purchaseorderitemtext as Purchaseorderitemtext,
    material as Material,
    materialgroup as Materialgroup,
    po_quantity as PoQuantity,
    po_unit as PoUnit,
    plant as Plant,
    accountassignmentcategory as Accountassignmentcategory,
    purchaserequisition as Purchaserequisition,
    purchaserequisitionitem as Purchaserequisitionitem,
    amount as Amount,
    currency as Currency,
    _EXLUSR
}
