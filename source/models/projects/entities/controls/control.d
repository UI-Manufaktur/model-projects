module models.projects.entities.controls.control;

@safe:
import models.projects;

class DProjectControlEntity : DOOPEntity {
  mixin(EntityThis!("ProjectControlEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "completionBasedOn": StringAttribute, //
        "completionMethod": StringAttribute, //
        "costTemplateId": UUIDAttribute, //
        "expenseCostLineId": UUIDAttribute, //
        "hourCostLineId": UUIDAttribute, //
        "itemCostLineId": UUIDAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjControlRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_contracts.lines");
  }
}
mixin(EntityCalls!("ProjectControlEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectControlEntity);
  
  auto entity = ProjectControlEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}