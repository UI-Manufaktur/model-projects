module models.projects.entities.validations.projects.categories.setup;

@safe:
import models.projects;

class DProjectValidationProjectCategorySetupEntity : DOOPEntity {
  mixin(EntityThis!("ProjectValidationProjectCategorySetupEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "categoryId": UUIDAttribute, //
        "groupId": UUIDAttribute, //
        "projectId": UUIDAttribute, //
        "backingTable_ProjValProjCategorySetUpRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
      ])
      .registerPath("projects_validations.projects.category.setups");
  }
}
mixin(EntityCalls!("ProjectValidationProjectCategorySetupEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectValidationProjectCategorySetupEntity);
  
  auto entity = ProjectValidationProjectCategorySetupEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}