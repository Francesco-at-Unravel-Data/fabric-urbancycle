# UrbanCycle Operational Database

UrbanCycle uses an Azure SQL Database as its operational source system. The database stores station, bike asset, maintenance, and membership-plan data under the `ops` schema.

Azure SQL Database was chosen because UrbanCycle needs a relational OLTP source that is operationally separate from the Fabric analytical platform. Fabric will consume the source through Azure SQL Database Mirroring.

A SQL database in Microsoft Fabric would also support the operational workload and would provide tighter Fabric integration, but Azure SQL Database was selected deliberately to represent an external production-style source system and to demonstrate Azure-to-Fabric integration.

Each operational table has a stable business identifier, an internal surrogate key, and an `updated_at_utc` timestamp. The updated_at_utc timestamp identifies which rows have changed in the database, so the pipeline only needs to process those updated rows. SCD2 transformations use attribute hashes to detect changes in tracked business attributes; when a change is found, the current record is closed with an `effective_to` date and a new version is created with a new `effective_from` date.

Operational records use status and effective dates to show that a record is no longer active, instead of deleting it, so downstream systems can still understand what happened to that record over time.
