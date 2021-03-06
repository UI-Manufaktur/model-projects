module models.projects.entities.resources.resource;

@safe:
import models.projects;

class DProjectResourceEntity : DOOPEntity {
  mixin(EntityThis!("ProjectResourceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "ProjectId": UUIDAttribute, //
        "PersonnelNumber": StringAttribute, //
        "BackingTable_ProjResourceRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
    ])
      .registerPath("projects_resources");
  }
}
mixin(EntityCalls!("ProjectResourceEntity"));

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