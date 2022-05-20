module models.projects.entities.beginningbalances.fee;

@safe:
import models.projects;

class DProjectBeginningBalanceFeeEntity : DOOPEntity {
  mixin(EntityThis!("ProjectBeginningBalanceFeeEntity"));

  override void initialize() {
    super.initialize;

    this
      .addValues([
        "CanAccrueRevenue":	StringAttribute, //
        "DefaultDimension":	StringAttribute, //
        "LineNumber":	StringAttribute, //
        "LinePropertyId":	StringAttribute, //
        "CategoryId":	StringAttribute, //
        "ProjFundingSource":	StringAttribute, //
        "ProjectId":	StringAttribute, //
        "SalesCurrency":	StringAttribute, //
        "SalesTaxGroup":	StringAttribute, //
        "ItemSalesTaxGroup":	StringAttribute, //
        "ProjectDate":	StringAttribute, //
        "TransactionStatus":	StringAttribute, //
        "SalesPrice":	StringAttribute, //
        "VoucherDate":	StringAttribute, //
        "Description":	StringAttribute, //
        "Voucher":	StringAttribute, //
        "ResourceRecId":	StringAttribute, //
        "ResourceCategoryRecId":	StringAttribute, //
        "FundingSourceId":	StringAttribute, //
        "JournalId":	StringAttribute, //
        "DefaultDimensionDisplayValue":	StringAttribute, //
        "JournalDescription":	StringAttribute, //
        "JournalDetailSummary":	StringAttribute, //
        "JournalName":	StringAttribute, //
        "JournalType":	StringAttribute, //
        "VoucherChange":	StringAttribute, //
        "VoucherDraw":	StringAttribute, //
        "VoucherNumberSequenceTable":	StringAttribute, //
        "ContractId":	StringAttribute, //
        "Resource":	StringAttribute, //
        "SalesAmount":	StringAttribute, //
        "Relationship_DefaultDimensionDimensionSetRelationshipId":	StringAttribute, //
        "Relationship_ProjectRelationshipId":	StringAttribute, //
        "Relationship_ProjJournalTableEntityRelationshipId":	StringAttribute, //
        "BackingTable_ProjBegBalJournalTrans_FeeRelationshipId":	StringAttribute, //
        "Relationship_PrimaryCompanyContextRelationshipId":	StringAttribute, //
     ])
      .registerPath("projects_beginningbalancefees");
  }
}
mixin(EntityCalls!("ProjectBeginningBalanceFeeEntity"));

version(test_model_portals) {
  unittest {
    assert(ProjectBeginningBalanceFeeEntity);
  
  auto entity = ProjectBeginningBalanceFeeEntity;
  // auto repository = OOPFileRepository("./tests");
/*  repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}