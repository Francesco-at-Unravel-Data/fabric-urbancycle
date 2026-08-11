# Naming Conventions

All Microsoft Fabric items in the UrbanCycle project use a consistent type prefix followed by a descriptive `snake_case` name. Lakehouses use `lh_`, warehouses `wh_`, pipelines `pl_`, notebooks `nb_`, Dataflow Gen2 items `df_`, semantic models `sm_`, and reports `rpt_`. Examples include `lh_bronze`, `wh_control`, `pl_bronze_ingest`, `nb_silver_trip_conform`, `df_station_reference`, `sm_urbancycle`, and `rpt_urbancycle_operations`. Table and column names always use `snake_case`, with singular, descriptive names such as `fact_trip`, `dim_station`, `station_id`, `started_at_utc`, and `trip_duration_minutes`.

Schemas identify the data layer and follow the Bronze, Silver, and Gold layering convention consistently. Layer names are used to make an object's processing stage immediately visible, for example `bronze.trip_raw`, `silver.trip`, and `gold.fact_trip`. 
