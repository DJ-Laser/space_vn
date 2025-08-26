export-art:
  aseprite -b art/bg_space.aseprite --scale 8 --save-as game/gui/main_menu.png
  aseprite -b art/game_menu.aseprite --scale 8 --layer Background --save-as game/gui/game_menu.png
  aseprite -b art/game_menu.aseprite --scale 8 --layer Overlay --save-as game/gui/overlay/game_menu.png
  aseprite -b art/main_menu_overlay.aseprite --scale 8 --save-as game/gui/overlay/main_menu.png

  aseprite -b art/textbox.aseprite --scale 8 --save-as game/gui/textbox.png
  aseprite -b art/frame.aseprite --scale 8 --save-as game/gui/frame.png
