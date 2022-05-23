module models.projects.entities.stage;

@safe:
import models.projects;

class DProjectStageEntity : DOOPEntity {
  mixin(EntityThis!("ProjectStageEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "Language": StringAttribute, //
        "Status": StringAttribute, //
        "Stage": StringAttribute, //
        "BackingTable_ProjStageTableRelationshipId": StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": StringAttribute, //
    ])
      .registerPath("projects_stages");
  }
}
mixin(EntityCalls!("ProjectStageEntity"));

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