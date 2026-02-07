# nf-schema-hello

Branches:
* main - no nf files ==> expect IMPORT_FAILED
* nfschema - main.nf and nextflow_schema.json ==> expect IMPORT_COMPLETE -> DRAFT
* noschema - main.nf only ==> expect IMPORT_INCOMPLETE --> (requires manual inputForm.json)
