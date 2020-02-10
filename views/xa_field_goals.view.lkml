view: field_goals {
  # # You can specify the table name if it's different from the view name:
  sql_table_name: analysis.xa_field_goals ;;

  dimension_group: game {
    type: time
    timeframes: [
      # raw,
      date,
      day_of_week,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}.game_date ;;
  }

  dimension: week {
    type: number
    value_format_name: id
    sql: ${TABLE}.week_nbr ;;
  }

  dimension: game_id {
    type: number
    value_format_name: id
    sql: ${TABLE}.game_id ;;
  }

  dimension: play_id {
    type: number
    value_format_name: id
    sql: ${TABLE}.play_id ;;
  }

  dimension: season {
    type: number
    value_format_name: id
    sql: ${TABLE}.season_nbr ;;
  }

  dimension: season_type_code {
    type: string
    sql: ${TABLE}.season_type_code ;;
  }

  dimension: season_week_code {
    type: string
    sql: ${TABLE}.season_week_code ;;
  }

  dimension: season_code {
    type: string
    sql: ${TABLE}.season_code ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.quarter ;;
  }

  dimension: down {
    type: number
    sql: ${TABLE}.down ;;
  }

  dimension: play_type {
    type: string
    sql: ${TABLE}.play_type ;;
  }

  dimension: home_team_code {
    type: string
    sql: ${TABLE}.home_team_code ;;
  }

  dimension: away_team_code {
    type: string
    sql: ${TABLE}.away_team_code ;;
  }

  dimension: off_team_code {
    label: "Team Code"
    type: string
    sql: ${TABLE}.off_team_code ;;
  }

  dimension: def_team_code {
    hidden: yes
    type: string
    sql: ${TABLE}.def_team_code ;;
  }

  dimension: kicker_player_id {
    hidden: yes
    type: number
    value_format_name: id
    sql: ${TABLE}.kicker_player_id ;;
  }

  dimension: kicker_player_name {
    type: string
    sql: ${TABLE}.kicker_player_name ;;
  }

  dimension: yards_to_go {
    type: number
    sql: ${TABLE}.yards_to_go ;;
  }

  dimension: yardline_100 {
    type: number
    sql: ${TABLE}.yardline_100 ;;
  }

  dimension: kick_distance_yards {
    type: number
    sql: ${TABLE}.kick_distance_yards ;;
  }

  dimension: kick_angle_horizontal {
    type: number
    sql: ${TABLE}.kick_angle_horizontal ;;
  }

  dimension: kick_angle_vertical {
    type: number
    sql: ${TABLE}.kick_angle_vertical ;;
  }

  dimension: is_within_goal_line {
    type: yesno
    sql: ${TABLE}.is_within_goal_line ;;
  }

  dimension: field_goal_result {
    type: string
    sql: ${TABLE}.field_goal_result ;;
  }

  dimension: is_field_goal_success {
    type: yesno
    sql: ${TABLE}.is_field_goal_success ;;
  }

  dimension: field_goals {
    hidden: yes
    type: number
    sql: ${TABLE}.field_goals ;;
  }

  dimension: successful_field_goals {
    hidden: yes
    type: number
    sql: ${TABLE}.successful_field_goals ;;
  }

  measure: field_goal_attempts {
    description: "Number of field goal attempts"
    type: sum
    sql: ${field_goals} ;;
  }

  measure: field_goal_successes {
    description: "Number of successful field goals"
    type: sum
    sql: ${successful_field_goals} ;;
  }

  measure: successful_field_goal_percent {
    label: "Field Goal %"
    description: "% of successful field goals"
    type: number
    value_format_name: percent_2
    sql: ${field_goal_successes}/${field_goal_attempts} ;;
  }

}
