module models.projects.entities.controls.costgroup;

@safe:
import models.projects;

class DProjectControlCostGroupEntity : DOOPEntity {
  mixin(EntityThis!("ProjectControlCostGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "mandatoryCostLine": StringAttribute, //
        "percentageOfCompletion": StringAttribute, //
        "costTemplateId": UUIDAttribute, //
        "costLineId": UUIDAttribute, //
        "transactionType": StringAttribute, //
        "costToCompleteMethod": StringAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjControlCostGroupRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_controls.costgroups");
  }
}
mixin(EntityCalls!("ProjectControlCostGroupEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectControlCostGroupEntity);
  
  auto entity = ProjectControlCostGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}