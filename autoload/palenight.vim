let s:overrides = get(g:, "palenight_color_overrides", {})

" white_mask_<number>: Color of a white mask overlayed on top of
" `s:colors.black`, where `number * 12` is the alpha value of the white mask

let s:colors = {
      \ "red": get(s:overrides, "light_red", { "gui": "#f07178", "cterm": "204", "cterm16": "1" }),
      \ "error_red": get(s:overrides, "error_red", { "gui": "#ff5370", "cterm": "204", "cterm16": "1" }),
      \ "dark_red": get(s:overrides, "dark_red", { "gui": "#be5046", "cterm": "196", "cterm16": "9" }),
      \ "bg_red": get(s:overrides, "bg_red", { "gui": "#443333", "cterm": "88", "cterm16": "0" }),
      \ "green": get(s:overrides, "green", { "gui": "#c3e88d", "cterm": "114", "cterm16": "2" }),
      \ "bg_green": get(s:overrides, "bg_green", { "gui": "#334433", "cterm": "22", "cterm16": "0" }),
      \ "yellow": get(s:overrides, "yellow", { "gui": "#ffcb6b", "cterm": "180", "cterm16": "3" }),
      \ "dark_yellow": get(s:overrides, "dark_yellow", { "gui": "#f78c6c", "cterm": "173", "cterm16": "11" }),
      \ "bg_yellow": get(s:overrides, "bg_yellow", { "gui": "#555533", "cterm": "58", "cterm16": "0" }),
      \ "blue": get(s:overrides, "blue", { "gui": "#82aaff", "cterm": "39", "cterm16": "4" }),
      \ "bg_blue": get(s:overrides, "bg_blue", { "gui": "#334466", "cterm": "18", "cterm16": "0" }),
      \ "purple": get(s:overrides, "purple", { "gui": "#c792ea", "cterm": "170", "cterm16": "5" }),
      \ "blue_purple": get(s:overrides, "blue_purple", { "gui": "#939ede", "cterm": "39", "cterm16": "4"}),
      \ "cyan": get(s:overrides, "cyan", { "gui": "#89ddff", "cterm": "38", "cterm16": "6" }),
      \ "white": get(s:overrides, "white", { "gui": "#d6e5e5", "cterm": "145", "cterm16": "7" }),
      \ "black": get(s:overrides, "black", { "gui": "#292d3e", "cterm": "235", "cterm16": "0" }),
      \ "visual_black": get(s:overrides, "visual_black", { "gui": "NONE", "cterm": "NONE", "cterm16": "0" }),
      \ "comment_grey": get(s:overrides, "comment_grey", { "gui": "#697098", "cterm": "59", "cterm16": "15" }),
      \ "gutter_grey": get(s:overrides, "gutter_grey", { "gui": "#4b5263", "cterm": "238", "cterm16": "15" }),
      \ "cursor_grey": get(s:overrides, "cursor_grey", { "gui": "#2c323c", "cterm": "236", "cterm16": "8" }),
      \ "visual_grey": get(s:overrides, "visual_grey", { "gui": "#3e4452", "cterm": "237", "cterm16": "15" }),
      \ "menu_grey": get(s:overrides, "menu_grey", { "gui": "#3e4452", "cterm": "237", "cterm16": "8" }),
      \ "special_grey": get(s:overrides, "special_grey", { "gui": "#3b4048", "cterm": "238", "cterm16": "15" }),
      \ "vertsplit": get(s:overrides, "vertsplit", { "gui": "#181a1f", "cterm": "59", "cterm16": "15" }),
      \ "white_mask_1": get(s:overrides, "white_mask_1", { "gui": "#333747", "cterm": "237", "cterm16": "15" }),
      \ "white_mask_3": get(s:overrides, "white_mask_3", { "gui": "#474b59", "cterm": "238", "cterm16": "15" }),
      \ "white_mask_11": get(s:overrides, "white_mask_11", { "gui": "#989aa2", "cterm": "238", "cterm16": "15" })
      \}

function! palenight#GetColors()
  return s:colors
endfunction
