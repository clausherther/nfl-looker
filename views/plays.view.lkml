view: plays {
  sql_table_name: analysis.plays ;;
  drill_fields: [play_key]

  dimension: play_id {
    type: number
    sql: ${TABLE}.play_id ;;
  }

  dimension: air_yards {
    type: number
    sql: ${TABLE}.air_yards ;;
  }

  dimension: away_team_code {
    type: string
    sql: ${TABLE}.away_team_code ;;
  }

  dimension: def_team_code {
    type: string
    sql: ${TABLE}.def_team_code ;;
  }

  dimension: def_team_score {
    type: number
    sql: ${TABLE}.def_team_score ;;
  }

  dimension: down {
    type: number
    sql: ${TABLE}.down ;;
  }

  dimension: drive {
    type: number
    sql: ${TABLE}.drive ;;
  }

  dimension: extra_point_result {
    type: string
    sql: ${TABLE}.extra_point_result ;;
  }

  dimension: field_goal_result {
    type: string
    sql: ${TABLE}.field_goal_result ;;
  }


  dimension: game_half {
    type: string
    sql: ${TABLE}.game_half ;;
  }

  dimension: game_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.game_id ;;
  }


  dimension: home_team_code {
    type: string
    sql: ${TABLE}.home_team_code ;;
  }

  dimension: home_timeouts_remaining {
    type: number
    sql: ${TABLE}.home_timeouts_remaining ;;
  }


  dimension: is_complete_pass {
    type: yesno
    sql: ${TABLE}.is_complete_pass ;;
  }


  dimension: is_extra_point_attempt {
    type: yesno
    sql: ${TABLE}.is_extra_point_attempt ;;
  }

  dimension: is_field_goal_attempt {
    type: yesno
    sql: ${TABLE}.is_field_goal_attempt ;;
  }

  dimension: is_field_goal_success {
    type: yesno
    sql: ${TABLE}.is_field_goal_success ;;
  }

  dimension: is_fourth_down_attempt {
    type: yesno
    sql: ${TABLE}.is_fourth_down_attempt ;;
  }

  dimension: is_fourth_down_converted {
    type: yesno
    sql: ${TABLE}.is_fourth_down_converted ;;
  }

  dimension: is_fourth_down_failed {
    type: yesno
    sql: ${TABLE}.is_fourth_down_failed ;;
  }

  dimension: is_fumble {
    type: yesno
    sql: ${TABLE}.is_fumble ;;
  }

  dimension: is_interception {
    type: yesno
    sql: ${TABLE}.is_interception ;;
  }

  dimension: is_kickoff_attempt {
    type: yesno
    sql: ${TABLE}.is_kickoff_attempt ;;
  }


  dimension: is_pass_attempt {
    type: yesno
    sql: ${TABLE}.is_pass_attempt ;;
  }

  dimension: is_pass_touchdown {
    type: yesno
    sql: ${TABLE}.is_pass_touchdown ;;
  }

  dimension: is_penalty {
    type: yesno
    sql: ${TABLE}.is_penalty ;;
  }

  dimension: is_punt_attempt {
    type: yesno
    sql: ${TABLE}.is_punt_attempt ;;
  }

  dimension: is_touchdown {
    type: yesno
    sql: ${TABLE}.is_touchdown ;;
  }

  dimension: is_two_point_attempt {
    type: yesno
    sql: ${TABLE}.is_two_point_attempt ;;
  }

  dimension: kick_distance {
    type: number
    sql: ${TABLE}.kick_distance ;;
  }

  dimension: net_yards {
    type: number
    sql: ${TABLE}.net_yards ;;
  }

  dimension: off_team_code {
    type: string
    sql: ${TABLE}.off_team_code ;;
  }

  dimension: off_team_score {
    type: number
    sql: ${TABLE}.off_team_score ;;
  }

  dimension: off_team_type {
    type: string
    sql: ${TABLE}.off_team_type ;;
  }

  dimension: pass_length {
    type: string
    sql: ${TABLE}.pass_length ;;
  }

  dimension: pass_location {
    type: string
    sql: ${TABLE}.pass_location ;;
  }

  dimension: passer_player_id {
    type: string
    sql: ${TABLE}.passer_player_id ;;
  }

  dimension: passer_player_name {
    type: string
    sql: ${TABLE}.passer_player_name ;;
  }

  dimension: play_key {
    primary_key: yes
    type: string
    sql: ${TABLE}.play_key ;;
  }

  dimension: play_time {
    type: string
    sql: ${TABLE}.play_time ;;
  }

  dimension: play_type {
    type: string
    sql: ${TABLE}.play_type ;;
  }


  dimension: quarter {
    type: number
    sql: ${TABLE}.quarter ;;
  }

  dimension: receiver_player_id {
    type: string
    sql: ${TABLE}.receiver_player_id ;;
  }

  dimension: receiver_player_name {
    type: string
    sql: ${TABLE}.receiver_player_name ;;
  }

  dimension: rusher_player_id {
    type: string
    sql: ${TABLE}.rusher_player_id ;;
  }

  dimension: rusher_player_name {
    type: string
    sql: ${TABLE}.rusher_player_name ;;
  }


  dimension: season_code {
    type: string
    sql: ${TABLE}.season_code ;;
  }

  dimension: season_nbr {
    type: number
    sql: ${TABLE}.season_nbr ;;
  }

  dimension: season_type_code {
    type: string
    sql: ${TABLE}.season_type_code ;;
  }

  dimension: td_team_code {
    type: string
    sql: ${TABLE}.td_team_code ;;
  }

  dimension: timeout_number {
    type: number
    sql: ${TABLE}.timeout_number ;;
  }

  dimension: timeout_team_code {
    type: string
    sql: ${TABLE}.timeout_team_code ;;
  }

  dimension: total_away_score {
    type: number
    sql: ${TABLE}.total_away_score ;;
  }

  dimension: total_home_score {
    type: number
    sql: ${TABLE}.total_home_score ;;
  }

  dimension: two_point_conv_result {
    type: string
    sql: ${TABLE}.two_point_conv_result ;;
  }

  dimension: yardline_100 {
    type: number
    sql: ${TABLE}.yardline_100 ;;
  }

  dimension: yardline_desc {
    type: string
    sql: ${TABLE}.yardline_desc ;;
  }

  dimension: yards_gained {
    type: number
    sql: ${TABLE}.yards_gained ;;
  }

  dimension: yards_to_go {
    type: number
    sql: ${TABLE}.yards_to_go ;;
  }

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  # ----- Sets of fields for drilling ------
  set: detail {
    fields: [
      play_key,
      receiver_player_name,
      rusher_player_name,
      passer_player_name,
      games.game_id
    ]
  }
}
