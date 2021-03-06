module models.projects.entities.customers.retentions.terms.term;

@safe:
import models.projects;

class DProjectCustomerRetentionTermEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCustomerRetentionTermEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "billingRule": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "customerAccount": StringAttribute, //
        "description": StringAttribute, //
        "projectId": UUIDAttribute, //
        "retentionTerm": StringAttribute, //
        "effectiveDate": StringAttribute, //
        "backingTable_PSACustomerRetentionTermTableRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_customers.retentions.terms");
  }
}
mixin(EntityCalls!("ProjectCustomerRetentionTermEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCustomerRetentionTermEntity);
  
  auto entity = ProjectCustomerRetentionTermEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}