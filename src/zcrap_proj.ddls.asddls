@EndUserText.label: 'Consumption View: Project'
@Metadata.allowExtensions: true
@Search.searchable: true
@UI: {
  headerInfo: { typeName: 'Project',
                typeNamePlural: 'Projects',
                title: { type: #STANDARD, label: 'Project', value: 'ProjId' } },
  presentationVariant: [{ sortOrder: [{ by: 'ProjectCode', direction:  #ASC }], visualizations: [{type: #AS_LINEITEM}] }]
}
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
