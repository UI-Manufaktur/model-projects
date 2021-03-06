module models.projects.entities.cds.category;

@safe:
import models.projects;

class DProjectCDSCategoryEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSCategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "categoryId": UUIDAttribute, //
        "sharedCategory": StringAttribute, //
        "integrationId": UUIDAttribute, //
        "backingTable_CategoryTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cds.categories");
  }
}
mixin(EntityCalls!("ProjectCDSCategoryEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCDSCategoryEntity);
  
  auto entity = ProjectCDSCategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}