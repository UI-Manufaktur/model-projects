module models.projects.entities.forecasts.revenue;

@safe:
import models.projects;

class DProjectForecastRevenueEntity : DOOPEntity {
  mixin(EntityThis!("ProjectForecastRevenueEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "active": StringAttribute, //
        "activityNumber": StringAttribute, //
        "method": StringAttribute, //
        "category": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "eliminationDate": StringAttribute, //
        "end": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "quantity": StringAttribute, //
        "unit": StringAttribute, //
        "invoiceDate": StringAttribute, //
        "lineProperty": StringAttribute, //
        "forecastModel": StringAttribute, //
        "periodKey": StringAttribute, //
        "budgetType": StringAttribute, //
        "projectId": UUIDAttribute, //
        "resource": StringAttribute, //
        "salesPaymentDate": StringAttribute, //
        "salesPrice": StringAttribute, //
        "projectDate": StringAttribute, //
        "stop": StringAttribute, //
        "transactionId": UUIDAttribute, //
        "description": StringAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "resourceCompanyId": UUIDAttribute, //
        "resourceId": UUIDAttribute, //
        "fundingSource": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "resourceCategory": StringAttribute, //
        "resourceCategoryId": UUIDAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_ProjectEntityRelationshipId": UUIDAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": UUIDAttribute, //
        "relationship_OMLegalEntityRelationshipId": UUIDAttribute, //
        "relationship_ResResourceDataEntityRelationshipId": UUIDAttribute, //
        "relationship_ResResourceCategoryDataEntityRelationshipId": UUIDAttribute, //
        "backingTable_ProjForecastRevenueRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_forecasts.revenues");
  }
}
mixin(EntityCalls!("ProjectForecastRevenueEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectForecastRevenueEntity);
  
  auto entity = ProjectForecastRevenueEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}