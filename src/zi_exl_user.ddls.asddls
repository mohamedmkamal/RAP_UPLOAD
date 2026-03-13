@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Basic view for excel user'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZI_EXL_USER as select from zdt_exl_user
composition[0..*] of  ZI_EXL_DATA as _EXLDATA 
{
    key end_user as EndUser,
    key file_id as FileId,
    file_status as FileStatus,
    attachment as Attachment,
    @Semantics.mimeType: true
    mimetype as Mimetype,
    filename as Filename,
    @Semantics.user.createdBy: true
    local_created_by as LocalCreatedBy,
    @Semantics.systemDateTime.createdAt: true
    local_created_at as LocalCreatedAt,
    @Semantics.user.lastChangedBy: true
    local_last_changed_by as LocalLastChangedBy,
     @Semantics.systemDateTime.localInstanceLastChangedAt: true
    local_last_changed_at as LocalLastChangedAt,
    @Semantics.systemDateTime.lastChangedAt: true
    last_changed_at as LastChangedAt,
    
    _EXLDATA // Make association public
}
