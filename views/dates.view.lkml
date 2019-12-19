view: dates {
  sql_table_name: analysis.dates ;;

  dimension: day_of_week {
    type: number
    sql: ${TABLE}.day_of_week ;;
  }

  dimension: day_of_week_name {
    type: string
    sql: ${TABLE}.day_of_week_name ;;
  }

  dimension: day_of_week_name_short {
    type: string
    sql: ${TABLE}.day_of_week_name_short ;;
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

  dimension_group: game {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.game_date ;;
  }

  dimension: month_name {
    type: string
    sql: ${TABLE}.month_name ;;
  }

  dimension: month_name_short {
    type: string
    sql: ${TABLE}.month_name_short ;;
  }

  dimension: month_of_year {
    type: number
    sql: ${TABLE}.month_of_year ;;
  }

  dimension: season_code {
    type: string
    sql: ${TABLE}.season_code ;;
  }

  dimension: season_nbr {
    type: number
    sql: ${TABLE}.season_nbr ;;
  }

  dimension_group: season_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.season_start_date ;;
  }

  dimension: season_type_code {
    type: string
    sql: ${TABLE}.season_type_code ;;
  }

  dimension_group: season_type_start {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.season_type_start_date ;;
  }

  dimension: season_week_code {
    type: string
    sql: ${TABLE}.season_week_code ;;
  }

  dimension: week_nbr {
    type: number
    sql: ${TABLE}.week_nbr ;;
  }

  measure: count {
    type: count
    drill_fields: [month_name, day_of_week_name]
  }
}
