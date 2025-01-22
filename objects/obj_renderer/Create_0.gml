textDuration = 120;
nextLevelAlpha = 1;

#region Text
scribble_font_set_default("fnt_main")
text = {};
text.page = 0;
var file_buffer = buffer_load(working_directory + "instructions.txt")
text.instructions = scribble(buffer_read(file_buffer, buffer_string))
buffer_delete(file_buffer)
#endregion