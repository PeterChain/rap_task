@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View: Project'
@Search.searchable: true
@Metadata.allowExtensions: true
define root view entity zcrap_proj
  as projection on zirap_proj
{
  key ProjId,
      Detail,
      TotalArtifacts,
      @Search.defaultSearchElement: true
      ProjectCode,

      /* Associations */
      _Tasks : redirected to composition child zcrap_task
}
