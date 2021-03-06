module models.projects.entities.hcmpersonprojectrole;

@safe:
import models.projects;

class DHcmPersonProjectRoleEntity : DOOPEntity {
  mixin(EntityThis!("HcmPersonProjectRoleEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "legalEntity": StringAttribute, //
        "dataArea": StringAttribute, //
        "nullableDataArea": StringAttribute, //
        "person": StringAttribute, //
        "partyNumber": StringAttribute, //
        "projectId": UUIDAttribute, //
        "projectName": StringAttribute, //
        "role": StringAttribute, //
        "endDate": StringAttribute, //
        "startDate": StringAttribute, //
        "relationship_PersonRelationshipId": UUIDAttribute, //
        "relationship_ProjTableRelationshipId": UUIDAttribute, //
        "backingTable_HcmPersonProjectRoleRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_hcmpersonprojectroles");
  }
}
mixin(EntityCalls!("HcmPersonProjectRoleEntity"));

version(test_model_portals) {
  unittest {
    assert(HcmPersonProjectRoleEntity);
  
  auto entity = HcmPersonProjectRoleEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}