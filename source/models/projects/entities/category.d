module models.projects.entities.category;

@safe:
import models.projects;

class DCategoryEntity : DOOPEntity {
  mixin(EntityThis!("CategoryEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "categoryId": UUIDAttribute, //
        "categoryName": StringAttribute, //
        "sharedCategory": StringAttribute, //
        "useInExpense": StringAttribute, //
        "useInProduction": StringAttribute, //
        "useInProject": StringAttribute, //
        "sharedCategoryId": UUIDAttribute, //
        "relationship_SharedCategoryRelationshipId": UUIDAttribute, //
        "backingTable_CategoryTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("categories");
  }
}
mixin(EntityCalls!("CategoryEntity"));

version(test_model_portals) {
  unittest {
    assert(CategoryEntity);
  
  auto entity = CategoryEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}