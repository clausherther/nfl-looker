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

  dimension: game_date {
    type: date
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

  dimension: season {
    type: number
    value_format_name: id
    sql: ${TABLE}.season_nbr ;;
  }

  dimension: season_start {
    type: date
    convert_tz: no
    sql: ${TABLE}.season_start_date ;;
  }

  dimension: season_type_code {
    type: string
    sql: ${TABLE}.season_type_code ;;
  }

  dimension: season_type_start {
    type: date
    convert_tz: no
    sql: ${TABLE}.season_type_start_date ;;
  }

  dimension: season_week_code {
    type: string
    sql: ${TABLE}.season_week_code ;;
  }

  dimension: week {
    type: number
    value_format_name: id
    sql: ${TABLE}.week_nbr ;;
  }

  measure: count {
    type: count
    drill_fields: [month_name, day_of_week_name]
  }
}
