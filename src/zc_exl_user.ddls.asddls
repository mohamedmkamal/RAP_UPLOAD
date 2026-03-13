@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Projection view for excl user'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZC_EXL_USER as projection on ZI_EXL_USER as user
{
    key EndUser,
    key FileId,
    FileStatus,
    @Semantics.largeObject:{mimeType: 'Mimetype',
    fileName: 'Filename',
    acceptableMimeTypes: [ 'application/vnd.ms-excel','application/vnd.openxmlformats-officedocument.spreadsheetml.sheet' ],
    contentDispositionPreference: #INLINE   }
    Attachment,
    Mimetype,
    Filename,
    LocalCreatedBy,
    LocalCreatedAt,
    LocalLastChangedBy,
    LocalLastChangedAt,
    LastChangedAt,
    /* Associations */
    _EXLDATA :redirected to composition child  ZC_EXL_DATA
}
