module models.projects.entities.hours.salesprice;

@safe:
import models.projects;

class DProjectHourSalesPriceEntity : DOOPEntity {
  mixin(EntityThis!("ProjectHourSalesPriceEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "CategoryId": UUIDAttribute, //
        "CurrencyId": UUIDAttribute, //
        "ProjectId": UUIDAttribute, //
        "PriceGroup": StringAttribute, //
        "SalesPriceModel": StringAttribute, //
        "SalesPricing": StringAttribute, //
        "ValidFor": StringAttribute, //
        "CustomerAccount": StringAttribute, //
        "ProjectContractId": UUIDAttribute, //
        "Resource": StringAttribute, //
        "TransDate": StringAttribute, //
        "EndDate": StringAttribute, //
        "ResourceId": UUIDAttribute, //
        "ResourceCategoryId": UUIDAttribute, //
        "ResourceCompanyId": UUIDAttribute, //
        "BackingTable_ProjHourSalesPriceRelationshipId": UUIDAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_grants");
  }
}
mixin(EntityCalls!("ProjectHourSalesPriceEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectHourSalesPriceEntity);
  
  auto entity = ProjectHourSalesPriceEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}