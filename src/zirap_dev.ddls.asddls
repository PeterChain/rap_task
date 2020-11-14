@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface View: Developers'
define view entity zirap_dev
  as select from ztrap_dev

  association [0..*] to zirap_task as _Tasks on $projection.DevId = _Tasks.AssignedDev

{
  key dev_id   as DevId,
      name     as Name,
      devlevel as Devlevel,

      _Tasks
}
