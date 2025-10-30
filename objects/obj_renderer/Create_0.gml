textDuration = 120;
nextLevelAlpha = 1;

#region Text
text = {};
text.page = 0;
text.pages = 5;
var file_buffer = buffer_load(working_directory + "instructions.txt")
text.instructions = buffer_read(file_buffer, buffer_string)
buffer_delete(file_buffer)
#endregion
