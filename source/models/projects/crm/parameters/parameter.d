module models.projects.entities.parameters.parameter;

@safe:
import models.projects;

// Group of undeleted system users and undeleted teams. ProjectParameters can be used to control access to specific objects.
class DPRJParameter : DOOPEntity {
  mixin(EntityThis!("PRJParameter"));
  
  override void initialize() {
    super.initialize;

    this
      .attributes([
        "createdOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who created the record."]),
        "modifiedOnBehalfBy": OOPLinkAttribute("aplUser").descriptions(["en":"Unique identifier of the delegate user who modified the record."]),
        "organizationId": OOPLinkAttribute("aplOrganization").descriptions(["en":"Unique identifier for the organization"]),
        "stateCode": OOPAttributeLookup("aplProjectParameter_StateCode").descriptions(["en":""]),
        "statusCode": OOPAttributeLookup("aplProjectParameter_StatusCode").descriptions(["en":""]),
        "importSequenceNumber": OOPAttributeNumber.descriptions(["en":"Sequence number of the import that created this record."]),
        "overriddenCreatedOn": OOPAttributeTimestamp.descriptions(["en":"Date and time that the record was migrated."]),
        "timeZoneRuleVersionNumber": OOPAttributeNumber.descriptions(["en":"For internal use only."]),
        "utcConversionTimeZoneCode": OOPAttributeInteger.descriptions(["en":"Time zone code that was in use when the record was created."]),
        "allowSkillUpdateByResource": OOPStringAttribute.descriptions(["en":"Allow resources to update their skills via the Project Finder Mobile app."]),
        "defaultOrganizationalUnit": OOPStringAttribute.descriptions(["en":"Select the default organizational unit that will be used for new resources."]),
        "defaultWorkTemplate": OOPStringAttribute.descriptions(["en":"Select the default work template for new projects."]),
        "invoiceFrequency": OOPStringAttribute.descriptions(["en":"Select the default frequency for generating invoices."]),
        "projectManagerRole": OOPStringAttribute.descriptions(["en":"Shows the default role to be used when a project manager is added to the project team."]),
        "projectResourceRequirementsVisibleToRe": OOPStringAttribute.descriptions(["en":"Select whether project resource requirements are visible to resources."]),
        "resourceAllocationMode": OOPAttributeLookup("aplProjectParameter_ResourceAllocationMode").descriptions(["en":""]),
        "teamMemberRole": OOPStringAttribute.descriptions(["en":"Shows the default role to be used when a team member is added to the project team."]),
      ])
      .registerPath("project_parameters");
  }
}
mixin(EntityCalls!("PRJParameter"));

unittest {
  version(uim_entities) {
    assert(PRJParameter);
  
  auto entity = PRJParameter;
  // auto repository = OOPFileRepository("./tests");
/*   repository.create("entities", entity.entityClasses, entity.toJson);

  auto json = repository.findOne("entities", entity.entityClasses, ["id":entity.id.toString]);
  assert(json != Json(null), "entities"~"/"~entity.entityClasses~"/"~entity.id.toString~" not found");

  repository.cleanupConnections; */
  }
}