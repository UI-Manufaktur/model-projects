module models.projects.entities.psa.indirects.costcomponent;

@safe:
import models.projects;

class DPSAIndirectCostComponentEntity : DOOPEntity {
  mixin(EntityThis!("PSAIndirectCostComponentEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "category": StringAttribute, //
        "componentId": UUIDAttribute, //
        "name": StringAttribute, //
        "backingTable_PSAIndirectComponentRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_psa.indirects.costcomponents");
  }
}
mixin(EntityCalls!("PSAIndirectCostComponentEntity"));

version(test_model_portals) {
  unittest {
    assert(PSAIndirectCostComponentEntity);
  
  auto entity = PSAIndirectCostComponentEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}