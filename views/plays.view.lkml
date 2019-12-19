view: plays {
  sql_table_name: analysis.plays ;;
  drill_fields: [play_id]

  dimension: play_id {
    primary_key: yes
    type: number
    sql: ${TABLE}.play_id ;;
  }

  dimension: air_yards {
    type: number
    sql: ${TABLE}.air_yards ;;
  }

  dimension: assist_tackle_1_player_id {
    type: string
    sql: ${TABLE}.assist_tackle_1_player_id ;;
  }

  dimension: assist_tackle_1_player_name {
    type: string
    sql: ${TABLE}.assist_tackle_1_player_name ;;
  }

  dimension: assist_tackle_1_team {
    type: string
    sql: ${TABLE}.assist_tackle_1_team ;;
  }

  dimension: assist_tackle_2_player_id {
    type: string
    sql: ${TABLE}.assist_tackle_2_player_id ;;
  }

  dimension: assist_tackle_2_player_name {
    type: string
    sql: ${TABLE}.assist_tackle_2_player_name ;;
  }

  dimension: assist_tackle_2_team {
    type: string
    sql: ${TABLE}.assist_tackle_2_team ;;
  }

  dimension: assist_tackle_3_player_id {
    type: string
    sql: ${TABLE}.assist_tackle_3_player_id ;;
  }

  dimension: assist_tackle_3_player_name {
    type: string
    sql: ${TABLE}.assist_tackle_3_player_name ;;
  }

  dimension: assist_tackle_3_team {
    type: string
    sql: ${TABLE}.assist_tackle_3_team ;;
  }

  dimension: assist_tackle_4_player_id {
    type: string
    sql: ${TABLE}.assist_tackle_4_player_id ;;
  }

  dimension: assist_tackle_4_player_name {
    type: string
    sql: ${TABLE}.assist_tackle_4_player_name ;;
  }

  dimension: assist_tackle_4_team {
    type: string
    sql: ${TABLE}.assist_tackle_4_team ;;
  }

  dimension: away_team_code {
    type: string
    sql: ${TABLE}.away_team_code ;;
  }

  dimension: away_timeouts_remaining {
    type: number
    sql: ${TABLE}.away_timeouts_remaining ;;
  }

  dimension: blocked_player_id {
    type: string
    sql: ${TABLE}.blocked_player_id ;;
  }

  dimension: blocked_player_name {
    type: string
    sql: ${TABLE}.blocked_player_name ;;
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

  dimension: def_team_code {
    type: string
    sql: ${TABLE}.def_team_code ;;
  }

  dimension: def_team_score {
    type: number
    sql: ${TABLE}.def_team_score ;;
  }

  dimension: def_team_score_post {
    type: number
    sql: ${TABLE}.def_team_score_post ;;
  }

  dimension: def_team_timeouts_remaining {
    type: number
    sql: ${TABLE}.def_team_timeouts_remaining ;;
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

  dimension: forced_fumble_player_1_player_id {
    type: string
    sql: ${TABLE}.forced_fumble_player_1_player_id ;;
  }

  dimension: forced_fumble_player_1_player_name {
    type: string
    sql: ${TABLE}.forced_fumble_player_1_player_name ;;
  }

  dimension: forced_fumble_player_1_team {
    type: string
    sql: ${TABLE}.forced_fumble_player_1_team ;;
  }

  dimension: forced_fumble_player_2_player_id {
    type: string
    sql: ${TABLE}.forced_fumble_player_2_player_id ;;
  }

  dimension: forced_fumble_player_2_player_name {
    type: string
    sql: ${TABLE}.forced_fumble_player_2_player_name ;;
  }

  dimension: forced_fumble_player_2_team {
    type: string
    sql: ${TABLE}.forced_fumble_player_2_team ;;
  }

  dimension: fumble_recovery_1_player_id {
    type: string
    sql: ${TABLE}.fumble_recovery_1_player_id ;;
  }

  dimension: fumble_recovery_1_player_name {
    type: string
    sql: ${TABLE}.fumble_recovery_1_player_name ;;
  }

  dimension: fumble_recovery_1_team {
    type: string
    sql: ${TABLE}.fumble_recovery_1_team ;;
  }

  dimension: fumble_recovery_1_yards {
    type: number
    sql: ${TABLE}.fumble_recovery_1_yards ;;
  }

  dimension: fumble_recovery_2_player_id {
    type: string
    sql: ${TABLE}.fumble_recovery_2_player_id ;;
  }

  dimension: fumble_recovery_2_player_name {
    type: string
    sql: ${TABLE}.fumble_recovery_2_player_name ;;
  }

  dimension: fumble_recovery_2_team {
    type: string
    sql: ${TABLE}.fumble_recovery_2_team ;;
  }

  dimension: fumbled_1_player_id {
    type: string
    sql: ${TABLE}.fumbled_1_player_id ;;
  }

  dimension: fumbled_1_player_name {
    type: string
    sql: ${TABLE}.fumbled_1_player_name ;;
  }

  dimension: fumbled_1_team {
    type: string
    sql: ${TABLE}.fumbled_1_team ;;
  }

  dimension: fumbled_2_player_id {
    type: string
    sql: ${TABLE}.fumbled_2_player_id ;;
  }

  dimension: fumbled_2_player_name {
    type: string
    sql: ${TABLE}.fumbled_2_player_name ;;
  }

  dimension: fumbled_2_team {
    type: string
    sql: ${TABLE}.fumbled_2_team ;;
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

  dimension: game_half {
    type: string
    sql: ${TABLE}.game_half ;;
  }

  dimension: game_id {
    type: number
    # hidden: yes
    sql: ${TABLE}.game_id ;;
  }

  dimension: game_seconds_remaining {
    type: number
    sql: ${TABLE}.game_seconds_remaining ;;
  }

  dimension: half_seconds_remaining {
    type: number
    sql: ${TABLE}.half_seconds_remaining ;;
  }

  dimension: home_team_code {
    type: string
    sql: ${TABLE}.home_team_code ;;
  }

  dimension: home_timeouts_remaining {
    type: number
    sql: ${TABLE}.home_timeouts_remaining ;;
  }

  dimension: interception_player_id {
    type: string
    sql: ${TABLE}.interception_player_id ;;
  }

  dimension: interception_player_name {
    type: string
    sql: ${TABLE}.interception_player_name ;;
  }

  dimension: is_assist_tackle {
    type: yesno
    sql: ${TABLE}.is_assist_tackle ;;
  }

  dimension: is_complete_pass {
    type: yesno
    sql: ${TABLE}.is_complete_pass ;;
  }

  dimension: is_defensive_extra_point_attempt {
    type: yesno
    sql: ${TABLE}.is_defensive_extra_point_attempt ;;
  }

  dimension: is_defensive_extra_point_conv {
    type: yesno
    sql: ${TABLE}.is_defensive_extra_point_conv ;;
  }

  dimension: is_defensive_two_point_attempt {
    type: yesno
    sql: ${TABLE}.is_defensive_two_point_attempt ;;
  }

  dimension: is_defensive_two_point_conv {
    type: yesno
    sql: ${TABLE}.is_defensive_two_point_conv ;;
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

  dimension: is_first_down_pass {
    type: yesno
    sql: ${TABLE}.is_first_down_pass ;;
  }

  dimension: is_first_down_penalty {
    type: yesno
    sql: ${TABLE}.is_first_down_penalty ;;
  }

  dimension: is_first_down_rush {
    type: yesno
    sql: ${TABLE}.is_first_down_rush ;;
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

  dimension: is_fumble_forced {
    type: yesno
    sql: ${TABLE}.is_fumble_forced ;;
  }

  dimension: is_fumble_lost {
    type: yesno
    sql: ${TABLE}.is_fumble_lost ;;
  }

  dimension: is_fumble_not_forced {
    type: yesno
    sql: ${TABLE}.is_fumble_not_forced ;;
  }

  dimension: is_fumble_out_of_bounds {
    type: yesno
    sql: ${TABLE}.is_fumble_out_of_bounds ;;
  }

  dimension: is_incomplete_pass {
    type: yesno
    sql: ${TABLE}.is_incomplete_pass ;;
  }

  dimension: is_interception {
    type: yesno
    sql: ${TABLE}.is_interception ;;
  }

  dimension: is_kickoff_attempt {
    type: yesno
    sql: ${TABLE}.is_kickoff_attempt ;;
  }

  dimension: is_kickoff_downed {
    type: yesno
    sql: ${TABLE}.is_kickoff_downed ;;
  }

  dimension: is_kickoff_fair_catch {
    type: yesno
    sql: ${TABLE}.is_kickoff_fair_catch ;;
  }

  dimension: is_kickoff_in_endzone {
    type: yesno
    sql: ${TABLE}.is_kickoff_in_endzone ;;
  }

  dimension: is_kickoff_inside_twenty {
    type: yesno
    sql: ${TABLE}.is_kickoff_inside_twenty ;;
  }

  dimension: is_kickoff_out_of_bounds {
    type: yesno
    sql: ${TABLE}.is_kickoff_out_of_bounds ;;
  }

  dimension: is_lateral_reception {
    type: yesno
    sql: ${TABLE}.is_lateral_reception ;;
  }

  dimension: is_lateral_recovery {
    type: yesno
    sql: ${TABLE}.is_lateral_recovery ;;
  }

  dimension: is_lateral_return {
    type: yesno
    sql: ${TABLE}.is_lateral_return ;;
  }

  dimension: is_lateral_rush {
    type: yesno
    sql: ${TABLE}.is_lateral_rush ;;
  }

  dimension: is_no_huddle {
    type: yesno
    sql: ${TABLE}.is_no_huddle ;;
  }

  dimension: is_own_kickoff_recovery {
    type: yesno
    sql: ${TABLE}.is_own_kickoff_recovery ;;
  }

  dimension: is_own_kickoff_recovery_td {
    type: yesno
    sql: ${TABLE}.is_own_kickoff_recovery_td ;;
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

  dimension: is_punt_blocked {
    type: yesno
    sql: ${TABLE}.is_punt_blocked ;;
  }

  dimension: is_punt_downed {
    type: yesno
    sql: ${TABLE}.is_punt_downed ;;
  }

  dimension: is_punt_fair_catch {
    type: yesno
    sql: ${TABLE}.is_punt_fair_catch ;;
  }

  dimension: is_punt_in_endzone {
    type: yesno
    sql: ${TABLE}.is_punt_in_endzone ;;
  }

  dimension: is_punt_inside_twenty {
    type: yesno
    sql: ${TABLE}.is_punt_inside_twenty ;;
  }

  dimension: is_punt_out_of_bounds {
    type: yesno
    sql: ${TABLE}.is_punt_out_of_bounds ;;
  }

  dimension: is_qb_dropback {
    type: yesno
    sql: ${TABLE}.is_qb_dropback ;;
  }

  dimension: is_qb_hit {
    type: yesno
    sql: ${TABLE}.is_qb_hit ;;
  }

  dimension: is_qb_kneel {
    type: yesno
    sql: ${TABLE}.is_qb_kneel ;;
  }

  dimension: is_qb_scramble {
    type: yesno
    sql: ${TABLE}.is_qb_scramble ;;
  }

  dimension: is_qb_spike {
    type: yesno
    sql: ${TABLE}.is_qb_spike ;;
  }

  dimension: is_quarter_end {
    type: yesno
    sql: ${TABLE}.is_quarter_end ;;
  }

  dimension: is_replay_or_challenge {
    type: yesno
    sql: ${TABLE}.is_replay_or_challenge ;;
  }

  dimension: is_return_touchdown {
    type: yesno
    sql: ${TABLE}.is_return_touchdown ;;
  }

  dimension: is_rush_attempt {
    type: yesno
    sql: ${TABLE}.is_rush_attempt ;;
  }

  dimension: is_rush_touchdown {
    type: yesno
    sql: ${TABLE}.is_rush_touchdown ;;
  }

  dimension: is_sack {
    type: yesno
    sql: ${TABLE}.is_sack ;;
  }

  dimension: is_safety {
    type: yesno
    sql: ${TABLE}.is_safety ;;
  }

  dimension: is_shotgun {
    type: yesno
    sql: ${TABLE}.is_shotgun ;;
  }

  dimension: is_solo_tackle {
    type: yesno
    sql: ${TABLE}.is_solo_tackle ;;
  }

  dimension: is_special_point {
    type: yesno
    sql: ${TABLE}.is_special_point ;;
  }

  dimension: is_tackled_for_loss {
    type: yesno
    sql: ${TABLE}.is_tackled_for_loss ;;
  }

  dimension: is_third_down_converted {
    type: yesno
    sql: ${TABLE}.is_third_down_converted ;;
  }

  dimension: is_third_down_failed {
    type: yesno
    sql: ${TABLE}.is_third_down_failed ;;
  }

  dimension: is_touchback {
    type: yesno
    sql: ${TABLE}.is_touchback ;;
  }

  dimension: is_touchdown {
    type: yesno
    sql: ${TABLE}.is_touchdown ;;
  }

  dimension: is_two_point_attempt {
    type: yesno
    sql: ${TABLE}.is_two_point_attempt ;;
  }

  dimension: is_within_goal_line {
    type: yesno
    sql: ${TABLE}.is_within_goal_line ;;
  }

  dimension: kick_distance {
    type: number
    sql: ${TABLE}.kick_distance ;;
  }

  dimension: kicker_player_id {
    type: string
    sql: ${TABLE}.kicker_player_id ;;
  }

  dimension: kicker_player_name {
    type: string
    sql: ${TABLE}.kicker_player_name ;;
  }

  dimension: kickoff_returner_player_id {
    type: string
    sql: ${TABLE}.kickoff_returner_player_id ;;
  }

  dimension: kickoff_returner_player_name {
    type: string
    sql: ${TABLE}.kickoff_returner_player_name ;;
  }

  dimension: lateral_interception_player_id {
    type: string
    sql: ${TABLE}.lateral_interception_player_id ;;
  }

  dimension: lateral_interception_player_name {
    type: string
    sql: ${TABLE}.lateral_interception_player_name ;;
  }

  dimension: lateral_kickoff_returner_player_id {
    type: string
    sql: ${TABLE}.lateral_kickoff_returner_player_id ;;
  }

  dimension: lateral_kickoff_returner_player_name {
    type: string
    sql: ${TABLE}.lateral_kickoff_returner_player_name ;;
  }

  dimension: lateral_punt_returner_player_id {
    type: string
    sql: ${TABLE}.lateral_punt_returner_player_id ;;
  }

  dimension: lateral_punt_returner_player_name {
    type: string
    sql: ${TABLE}.lateral_punt_returner_player_name ;;
  }

  dimension: lateral_receiver_player_id {
    type: string
    sql: ${TABLE}.lateral_receiver_player_id ;;
  }

  dimension: lateral_receiver_player_name {
    type: string
    sql: ${TABLE}.lateral_receiver_player_name ;;
  }

  dimension: lateral_rusher_player_id {
    type: string
    sql: ${TABLE}.lateral_rusher_player_id ;;
  }

  dimension: lateral_rusher_player_name {
    type: string
    sql: ${TABLE}.lateral_rusher_player_name ;;
  }

  dimension: lateral_sack_player_id {
    type: string
    sql: ${TABLE}.lateral_sack_player_id ;;
  }

  dimension: lateral_sack_player_name {
    type: string
    sql: ${TABLE}.lateral_sack_player_name ;;
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

  dimension: off_team_score_post {
    type: number
    sql: ${TABLE}.off_team_score_post ;;
  }

  dimension: off_team_timeouts_remaining {
    type: number
    sql: ${TABLE}.off_team_timeouts_remaining ;;
  }

  dimension: off_team_type {
    type: string
    sql: ${TABLE}.off_team_type ;;
  }

  dimension: own_kickoff_recovery_player_id {
    type: string
    sql: ${TABLE}.own_kickoff_recovery_player_id ;;
  }

  dimension: own_kickoff_recovery_player_name {
    type: string
    sql: ${TABLE}.own_kickoff_recovery_player_name ;;
  }

  dimension: pass_defense_1_player_id {
    type: string
    sql: ${TABLE}.pass_defense_1_player_id ;;
  }

  dimension: pass_defense_1_player_name {
    type: string
    sql: ${TABLE}.pass_defense_1_player_name ;;
  }

  dimension: pass_defense_2_player_id {
    type: string
    sql: ${TABLE}.pass_defense_2_player_id ;;
  }

  dimension: pass_defense_2_player_name {
    type: string
    sql: ${TABLE}.pass_defense_2_player_name ;;
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

  dimension: penalty_player_id {
    type: string
    sql: ${TABLE}.penalty_player_id ;;
  }

  dimension: penalty_player_name {
    type: string
    sql: ${TABLE}.penalty_player_name ;;
  }

  dimension: penalty_team {
    type: string
    sql: ${TABLE}.penalty_team ;;
  }

  dimension: penalty_type {
    type: string
    sql: ${TABLE}.penalty_type ;;
  }

  dimension: penalty_yards {
    type: number
    sql: ${TABLE}.penalty_yards ;;
  }

  dimension: play_dedupe_sequence_nbr {
    type: number
    sql: ${TABLE}.play_dedupe_sequence_nbr ;;
  }

  dimension: play_description {
    type: string
    sql: ${TABLE}.play_description ;;
  }

  dimension: play_key {
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

  dimension: punt_returner_player_id {
    type: string
    sql: ${TABLE}.punt_returner_player_id ;;
  }

  dimension: punt_returner_player_name {
    type: string
    sql: ${TABLE}.punt_returner_player_name ;;
  }

  dimension: punter_player_id {
    type: string
    sql: ${TABLE}.punter_player_id ;;
  }

  dimension: punter_player_name {
    type: string
    sql: ${TABLE}.punter_player_name ;;
  }

  dimension: qb_hit_1_player_id {
    type: string
    sql: ${TABLE}.qb_hit_1_player_id ;;
  }

  dimension: qb_hit_1_player_name {
    type: string
    sql: ${TABLE}.qb_hit_1_player_name ;;
  }

  dimension: qb_hit_2_player_id {
    type: string
    sql: ${TABLE}.qb_hit_2_player_id ;;
  }

  dimension: qb_hit_2_player_name {
    type: string
    sql: ${TABLE}.qb_hit_2_player_name ;;
  }

  dimension: quarter {
    type: number
    sql: ${TABLE}.quarter ;;
  }

  dimension: quarter_seconds_remaining {
    type: number
    sql: ${TABLE}.quarter_seconds_remaining ;;
  }

  dimension: receiver_player_id {
    type: string
    sql: ${TABLE}.receiver_player_id ;;
  }

  dimension: receiver_player_name {
    type: string
    sql: ${TABLE}.receiver_player_name ;;
  }

  dimension: replay_or_challenge_result {
    type: string
    sql: ${TABLE}.replay_or_challenge_result ;;
  }

  dimension: return_team {
    type: string
    sql: ${TABLE}.return_team ;;
  }

  dimension: return_yards {
    type: number
    sql: ${TABLE}.return_yards ;;
  }

  dimension: run_gap {
    type: string
    sql: ${TABLE}.run_gap ;;
  }

  dimension: run_location {
    type: string
    sql: ${TABLE}.run_location ;;
  }

  dimension: rusher_player_id {
    type: string
    sql: ${TABLE}.rusher_player_id ;;
  }

  dimension: rusher_player_name {
    type: string
    sql: ${TABLE}.rusher_player_name ;;
  }

  dimension: score_differential {
    type: number
    sql: ${TABLE}.score_differential ;;
  }

  dimension: score_differential_post {
    type: number
    sql: ${TABLE}.score_differential_post ;;
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

  dimension: side_of_field {
    type: string
    sql: ${TABLE}.side_of_field ;;
  }

  dimension: solo_tackle_1_player_id {
    type: string
    sql: ${TABLE}.solo_tackle_1_player_id ;;
  }

  dimension: solo_tackle_1_player_name {
    type: string
    sql: ${TABLE}.solo_tackle_1_player_name ;;
  }

  dimension: solo_tackle_1_team {
    type: string
    sql: ${TABLE}.solo_tackle_1_team ;;
  }

  dimension: solo_tackle_2_player_id {
    type: string
    sql: ${TABLE}.solo_tackle_2_player_id ;;
  }

  dimension: solo_tackle_2_player_name {
    type: string
    sql: ${TABLE}.solo_tackle_2_player_name ;;
  }

  dimension: solo_tackle_2_team {
    type: string
    sql: ${TABLE}.solo_tackle_2_team ;;
  }

  dimension: tackle_for_loss_1_player_id {
    type: string
    sql: ${TABLE}.tackle_for_loss_1_player_id ;;
  }

  dimension: tackle_for_loss_1_player_name {
    type: string
    sql: ${TABLE}.tackle_for_loss_1_player_name ;;
  }

  dimension: tackle_for_loss_2_player_id {
    type: string
    sql: ${TABLE}.tackle_for_loss_2_player_id ;;
  }

  dimension: tackle_for_loss_2_player_name {
    type: string
    sql: ${TABLE}.tackle_for_loss_2_player_name ;;
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

  dimension: yards_after_catch {
    type: number
    sql: ${TABLE}.yards_after_catch ;;
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
      play_id,
      penalty_player_name,
      fumble_recovery_1_player_name,
      fumble_recovery_2_player_name,
      interception_player_name,
      lateral_punt_returner_player_name,
      punt_returner_player_name,
      qb_hit_1_player_name,
      qb_hit_2_player_name,
      forced_fumble_player_1_player_name,
      forced_fumble_player_2_player_name,
      lateral_kickoff_returner_player_name,
      tackle_for_loss_1_player_name,
      receiver_player_name,
      lateral_rusher_player_name,
      tackle_for_loss_2_player_name,
      lateral_receiver_player_name,
      assist_tackle_2_player_name,
      assist_tackle_4_player_name,
      blocked_player_name,
      pass_defense_2_player_name,
      pass_defense_1_player_name,
      solo_tackle_2_player_name,
      solo_tackle_1_player_name,
      kickoff_returner_player_name,
      rusher_player_name,
      punter_player_name,
      fumbled_2_player_name,
      fumbled_1_player_name,
      assist_tackle_1_player_name,
      lateral_sack_player_name,
      assist_tackle_3_player_name,
      passer_player_name,
      lateral_interception_player_name,
      kicker_player_name,
      own_kickoff_recovery_player_name,
      games.game_id
    ]
  }
}
