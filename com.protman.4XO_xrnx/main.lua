function its4XO()
  local pattern_iter = renoise.song().pattern_iterator
  local track_index = renoise.song().selected_track_index
  local pattern_index = renoise.song().selected_pattern_index
  local inst_number = renoise.song().selected_instrument_index

renoise.song():insert_instrument_at(inst_number)
renoise.song():insert_instrument_at(inst_number)
renoise.song().instruments[inst_number].name = "XO-8:FLEX 2"
renoise.song():insert_instrument_at(inst_number)
renoise.song().instruments[inst_number].name = "XO-7:FLEX 1"
renoise.song():insert_instrument_at(inst_number)
renoise.song().instruments[inst_number].name = "XO-6:OP HH"
renoise.song():insert_instrument_at(inst_number)
renoise.song().instruments[inst_number].name = "XO-5:CL HH"
renoise.song():insert_instrument_at(inst_number)
renoise.song().instruments[inst_number].name = "XO-4:CLAP"
renoise.song():insert_instrument_at(inst_number)
renoise.song().instruments[inst_number].name = "XO-3:SNARE"
renoise.song():insert_instrument_at(inst_number)
renoise.song().instruments[inst_number].name = "XO-2:KICK 2"
renoise.song():insert_instrument_at(inst_number)
renoise.song().instruments[inst_number].name = "XO-1:KICK 1"
renoise.song():insert_instrument_at(inst_number)


  -- Zero is returned when send/ master selected
  if renoise.song().tracks[track_index].visible_note_columns == 0 then
    return
  end

  --iterate:
  --over "Pattern" and change instrument values of all notes
  for pos, line in pattern_iter:note_columns_in_pattern(pattern_index, track_index) do
    if line.is_selected then --only selection
      if line.note_string == "C-3" then
        line.instrument_value = (inst_number+0)
        line.note_string = ("C-4")
      end
      if line.note_string == "C#3" then
        line.instrument_value = (inst_number+1)
        line.note_string = ("C-4")
      end
      if line.note_string == "D-3" then
        line.instrument_value = (inst_number+2)
        line.note_string = ("C-4")
      end
      if line.note_string == "D#3" then
        line.instrument_value = (inst_number+3)
        line.note_string = ("C-4")
      end
      if line.note_string == "E-3" then
        line.instrument_value = (inst_number+4)
        line.note_string = ("C-4")
      end
      if line.note_string == "F-3" then
        line.instrument_value = (inst_number+5)
        line.note_string = ("C-4")
      end
      if line.note_string == "F#3" then
        line.instrument_value = (inst_number+6)
        line.note_string = ("C-4")
      end
      if line.note_string == "G-3" then
        line.instrument_value = (inst_number+7)
        line.note_string = ("C-4")
      end
      
      
      
    end
  end
end

renoise.tool():add_menu_entry {
  name = "Main Menu:Tools:4XO convert",
  invoke = function()
    its4XO()
  end
}