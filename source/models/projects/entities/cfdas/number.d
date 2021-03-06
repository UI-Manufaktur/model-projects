module models.projects.entities.cfdas.number;

@safe:
import models.projects;

class DProjectCFDANumberEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCFDANumberEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "cfdaClusterName": StringAttribute, //
        "cfdaId": UUIDAttribute, //
        "description": StringAttribute, //
        "backingTable_ProjCFDANumberRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cfda.numbers");
  }
}
mixin(EntityCalls!("ProjectCFDANumberEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCFDANumberEntity);
  
  auto entity = ProjectCFDANumberEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}