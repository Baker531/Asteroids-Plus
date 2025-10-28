textDuration = 120;
nextLevelAlpha = 1;

#region Text
text = {};
text.page = 0;
var file_buffer = buffer_load(working_directory + "instructions.txt")
text.instructions = buffer_read(file_buffer, buffer_string)
buffer_delete(file_buffer)
#endregion
function set_text_style(font, color) {
    draw_set_font(font);
    draw_set_color(color);
    if (argument_count == 3) {
        draw_set_halign(argument[2])
    }
}