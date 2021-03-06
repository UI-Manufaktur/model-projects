module models.projects.entities.categories.group;

@safe:
import models.projects;

class DProjectCategoryGroupEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCategoryGroupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "categoryGroupId": UUIDAttribute, //
        "categoryType": StringAttribute, //
        "name": StringAttribute, //
        "backingTable_ProjCategoryGroupRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_categories");
  }
}
mixin(EntityCalls!("ProjectCategoryGroupEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCategoryGroupEntity);
  
  auto entity = ProjectCategoryGroupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}