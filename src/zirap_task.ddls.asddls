@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface View: Development Task'
define view entity zirap_task
  as select from ztrap_task

  association        to parent zirap_proj as _Project    on $projection.ProjectId = _Project.ProjId
  association [1..1] to zirap_dev         as _Developers on $projection.AssignedDev = _Developers.DevId
{
  key task_id      as TaskId,
      detail       as Detail,
      complexity   as Complexity,
      artifacts    as Artifacts,
      dev_status   as DevStatus,
      start_date   as StartDate,
      end_date     as EndDate,
      assigned_dev as AssignedDev,
      project_id   as ProjectId,

      _Project,
      _Developers
}
