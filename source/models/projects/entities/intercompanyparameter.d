module models.projects.entities.intercompanyparameter;

@safe:
import models.projects;

class DProjectIntercompanyParameterEntity : DOOPEntity {
  mixin(EntityThis!("ProjectIntercompanyParameterEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "borrowingLegalEntity": StringAttribute, //
        "defaultExpenseCategory": StringAttribute, //
        "defaultTimesheetCategory": StringAttribute, //
        "accrueRevenue": StringAttribute, //
        "backingTable_ProjIntercompanyParametersRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_intercompanyparameters");
  }
}
mixin(EntityCalls!("ProjectIntercompanyParameterEntity"));

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