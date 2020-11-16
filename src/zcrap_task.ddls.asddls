@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View: Task'
@Metadata.allowExtensions: true
define view entity zcrap_task
  as projection on zirap_task
{
  key TaskId,
      Detail,
      Complexity,
      Artifacts,
      DevStatus,
      StartDate,
      EndDate,
      @Consumption.valueHelpDefinition: [{
        entity: {
          name: 'zirap_dev',
          element: 'DevId'
        }
      }]
      @ObjectModel.text.element: ['DevName']
      AssignedDev,
      _Developers.Name     as DevName,
      ProjectId,
      @Consumption.valueHelpDefinition: [{
        entity: {
          name: 'zirap_proj',
          element: 'ProjId'
        }
      }]
      @ObjectModel.text.element: ['ProjectCode']
      _Project.ProjectCode as ProjectCode,

      /* Associations */
      _Developers,
      _Project : redirected to parent zcrap_proj
}
