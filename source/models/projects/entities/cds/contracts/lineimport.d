module models.projects.entities.cds.contracts.lineimport;

@safe:
import models.projects;

class DProjectCDSContractLineImportEntity : DOOPEntity {
  mixin(EntityThis!("ProjectCDSContractLineImportEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "transactionId": UUIDAttribute, //
        "contractId": UUIDAttribute, //
        "contractLine": StringAttribute, //
        "type": StringAttribute, //
        "description": StringAttribute, //
        "projectId": UUIDAttribute, //
        "forecastInvoiceFrequency": StringAttribute, //
        "backingTable_ProjCDSContractLineImportRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_cdscontractlineimports");
  }
}
mixin(EntityCalls!("ProjectCDSContractLineImportEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectCDSContractLineImportEntity);
  
  auto entity = ProjectCDSContractLineImportEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}