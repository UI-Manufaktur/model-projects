module models.projects.entities.forecasts.employee;

@safe:
import models.projects;

class DProjectForecastEmployeeEntity : DOOPEntity {
  mixin(EntityThis!("ProjectForecastEmployeeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "active": StringAttribute, //
        "activityNumber": StringAttribute, //
        "category": StringAttribute, //
        "costPaymentDate": StringAttribute, //
        "costPrice": StringAttribute, //
        "cashFlowForecastStatus": StringAttribute, //
        "salesCurrency": StringAttribute, //
        "defaultDimension": StringAttribute, //
        "eliminationDate": StringAttribute, //
        "exchangeRate": StringAttribute, //
        "invoiceDate": StringAttribute, //
        "jobIdentification": StringAttribute, //
        "lineNumber": StringAttribute, //
        "lineProperty": StringAttribute, //
        "forecastModel": StringAttribute, //
        "budgetType": StringAttribute, //
        "fundingSource": StringAttribute, //
        "projectId": UUIDAttribute, //
        "hours": StringAttribute, //
        "specialReport": StringAttribute, //
        "salesPaymentDate": StringAttribute, //
        "salesPrice": StringAttribute, //
        "capacity": StringAttribute, //
        "projectDate": StringAttribute, //
        "startTime": StringAttribute, //
        "link": StringAttribute, //
        "linkType": StringAttribute, //
        "hoursScheduled": StringAttribute, //
        "endDate": StringAttribute, //
        "endTime": StringAttribute, //
        "workingTime": StringAttribute, //
        "schedulingResource": StringAttribute, //
        "salesTaxGroup": StringAttribute, //
        "transactionId": UUIDAttribute, //
        "description": StringAttribute, //
        "resource": StringAttribute, //
        "resourceCategory": StringAttribute, //
        "projectContractId": UUIDAttribute, //
        "fundingSourceId": UUIDAttribute, //
        "defaultDimensionDisplayValue": StringAttribute, //
        "resourceId": UUIDAttribute, //
        "resourceCompanyId": UUIDAttribute, //
        "resourceCategoryId": UUIDAttribute, //
        "relationship_DimensionDimensionSetRelationshipId": UUIDAttribute, //
        "relationship_ProjectEntityRelationshipId": UUIDAttribute, //
        "relationship_ProjProjectLinePropertyEntityRelationshipId": UUIDAttribute, //
        "relationship_OMLegalEntityRelationshipId": UUIDAttribute, //
        "relationship_ResResourceDataEntityRelationshipId": UUIDAttribute, //
        "relationship_ResResourceCategoryDataEntityRelationshipId": UUIDAttribute, //
        "backingTable_ProjForecastEmplRelationshipId": UUIDAttribute, //
        "relationship_PrimaryCompanyContextRelationshipId": UUIDAttribute, //
     ])
      .registerPath("projects_forecasts.employees");
  }
}
mixin(EntityCalls!("ProjectForecastEmployeeEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectForecastEmployeeEntity);
  
  auto entity = ProjectForecastEmployeeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}