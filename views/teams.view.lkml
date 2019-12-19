view: teams {
  sql_table_name: analysis.teams ;;

  dimension: consolidated_team_code {
    type: string
    sql: ${TABLE}.consolidated_team_code ;;
  }

  dimension: dbt_batch_id {
    type: string
    sql: ${TABLE}.dbt_batch_id ;;
  }

  dimension_group: dbt_batch_ts {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.dbt_batch_ts ;;
  }

  dimension: team_code {
    type: string
    sql: ${TABLE}.team_code ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
