module models.projects.entities.task;

@safe:
import models.projects;

class DProjectTaskEntity : DOOPEntity {
  mixin(EntityThis!("ProjectTaskEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "taskElementId": StringAttribute, //
        "taskHierarchyId": StringAttribute, //
        "taskOutlineLevel": StringAttribute, //
        "taskName": StringAttribute, //
        "parentTaskElementId": StringAttribute, //
        "taskNumberRecordId": StringAttribute, //
        "taskDisplaySequence": StringAttribute, //
        "taskId": StringAttribute, //
        "taskTimeType": StringAttribute, //
        "taskStatus": StringAttribute, //
        "taskOwningCompany": StringAttribute, //
        "taskSubject": StringAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
     ])
      .registerPath("projects_tasks");
  }
}
mixin(EntityCalls!("ProjectTaskEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectIntercompanyParametersEntity);
  
  auto entity = ProjectIntercompanyParametersEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}