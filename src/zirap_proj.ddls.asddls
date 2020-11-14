@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Interface View: Project'
define root view entity zirap_proj
  as select from zrap_tsk_proj

  composition [0..*] of zirap_task as _Tasks
{
  key proj_id         as ProjId,
      detail          as Detail,
      total_artifacts as TotalArtifacts,
      project_code    as ProjectCode,

      _Tasks
}
