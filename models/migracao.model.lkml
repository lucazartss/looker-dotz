connection: "dotzcloud-datalabs-analytics"
include: "/explores/*.lkml"


# include all the views
# include: "/views/**/*.view"

datagroup: migracao_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: migracao_default_datagroup


include: "/core/core_dimensions/*.view"
