# 
# Synthesis run script generated by Vivado
# 

set TIME_start [clock seconds] 
proc create_report { reportName command } {
  set status "."
  append status $reportName ".fail"
  if { [file exists $status] } {
    eval file delete [glob $status]
  }
  send_msg_id runtcl-4 info "Executing : $command"
  set retval [eval catch { $command } msg]
  if { $retval != 0 } {
    set fp [open $status w]
    close $fp
    send_msg_id runtcl-5 warning "$msg"
  }
}
set_param xicom.use_bs_reader 1
create_project -in_memory -part xc7a35tcpg236-1

set_param project.singleFileAddWarning.threshold 0
set_param project.compositeFile.enableAutoGeneration 0
set_param synth.vivado.isSynthRun true
set_property webtalk.parent_dir {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.cache/wt} [current_project]
set_property parent.project_path {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.xpr} [current_project]
set_property default_lib xil_defaultlib [current_project]
set_property target_language Verilog [current_project]
set_property ip_output_repo {c:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.cache/ip} [current_project]
set_property ip_cache_permissions {read write} [current_project]
read_verilog -library xil_defaultlib {
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/Artemis_Individual.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/imports/Desktop/Audio_Input.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/Game_Over_Image.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/Get_Sprite.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/Menu_Data.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/Naz_Individual.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/imports/Desktop/Oled_Display.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/Win_Data.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/clock_divider.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/game_end_sound.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/music_box.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/naz_ld_control.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/naz_oled_control.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/naz_seg_control.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/num_to_count.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/play_note.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/push_button_output.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/rgb_color.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/rgb_color_update.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/save_note.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/sz_individual.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/team_ld_control.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/team_output.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/team_seg_control.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/unit_clk.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/volume_bars.v}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/new/Top_Student.v}
}
read_vhdl -library xil_defaultlib {
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/imports/Desktop/Audio_Output.vhd}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/imports/Desktop/Mouse_Control.vhd}
  {C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/sources_1/imports/Desktop/Ps2Interface.vhd}
}
# Mark all dcp files as not used in implementation to prevent them from being
# stitched into the results of this synthesis run. Any black boxes in the
# design are intentionally left as such for best results. Dcp files will be
# stitched into the design at a later time, either when this synthesis run is
# opened, or when it is stitched into a dependent implementation run.
foreach dcp [get_files -quiet -all -filter file_type=="Design\ Checkpoint"] {
  set_property used_in_implementation false $dcp
}
read_xdc {{C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/constrs_1/new/Basys3_Master.xdc}}
set_property used_in_implementation false [get_files {{C:/Users/Nazrul/Desktop/EE2026 Project/MouseAudioDisplay/MouseAudioDisplay.srcs/constrs_1/new/Basys3_Master.xdc}}]

set_param ips.enableIPCacheLiteLoad 0
close [open __synthesis_is_running__ w]

synth_design -top Top_Student -part xc7a35tcpg236-1 -fanout_limit 400 -fsm_extraction one_hot -keep_equivalent_registers -resource_sharing off -no_lc -shreg_min_size 5


# disable binary constraint mode for synth run checkpoints
set_param constraints.enableBinaryConstraints false
write_checkpoint -force -noxdef Top_Student.dcp
create_report "synth_1_synth_report_utilization_0" "report_utilization -file Top_Student_utilization_synth.rpt -pb Top_Student_utilization_synth.pb"
file delete __synthesis_is_running__
close [open __synthesis_is_complete__ w]
