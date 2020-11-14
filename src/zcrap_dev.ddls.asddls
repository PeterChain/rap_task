@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Consumption View: Developers'
@Metadata.allowExtensions: true
define view entity zcrap_dev
  as select from zirap_dev
{
  key DevId,
      Name,
      Devlevel,

      /* Associations */
      _Tasks
}
