/*
 * @desc Write some text
 * @param {Asset.GMFont} font The font to write it in
 * @param {Constant.Color} color The color to write it in
 * @param {String} color The text to write
 */
function writeText(font, color, text) {
    set_text_style(font, color)
    draw_set_valign(fa_top)
    draw_text_ext(font == fnt_head ? 30 : 20, 8, text, 30, display_get_gui_width() - 60)
}
function error(char, i) {
    show_error("Bad special character " + char + " in instructions at position " + string(i), true)
}
function parse_text(text, page) {
    show_debug_message("Parsing text with length " + string(string_length(text)))
    var brackets = ""
    var txt = ""
    var currentPage = -1
    for (var i = 1; i <= string_length(text); i++) {
        var char = string_char_at(text, i)
        
        var special = string_pos(char, "[]*") != 0
        if (!special) {
            txt += char
            continue
        }
        if (brackets == "") { // Search for brackets
            if (char == "[") {
                brackets = "[]"
                if (currentPage == page) writeText(fnt_main, c_white, txt)
                txt = ""
            } else if (char == "*") {
                brackets = "*"
            } else {
                error(char, i)
            }
        }
        else if (brackets == "[]") { // Search for closing bracket
            if (char == "]") {
                if (currentPage == page) writeText(fnt_head, c_yellow, txt)
                show_debug_message("Writing a header...")
                txt = ""
                brackets = ""
                currentPage++
            } else {
                error(char, i)
            }
        }
        else if (brackets == "*") {
            if (char == "*") {
                if (currentPage == page) writeText(fnt_main, c_lime, txt)
                txt = ""
                brackets = ""
            } else {
                error(char, i)
            }
        }
        else {
            error(char, i)
        }
        
    	
    }
}