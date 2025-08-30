export-art:
  aseprite -b art/bg_space.aseprite --scale 8 --save-as game/gui/main_menu.png
  aseprite -b art/game_menu.aseprite --scale 8 --layer Background --save-as game/gui/game_menu.png
  aseprite -b art/game_menu.aseprite --scale 8 --layer Overlay --save-as game/gui/overlay/game_menu.png
  aseprite -b art/main_menu_overlay.aseprite --scale 8 --save-as game/gui/overlay/main_menu.png

  aseprite -b art/save_slot.aseprite --scale 8 --tag idle --save-as game/gui/button/slot_idle_background.png
  aseprite -b art/save_slot.aseprite --scale 8 --tag hover --save-as game/gui/button/slot_hover_background.png

  aseprite -b art/choice_button.aseprite --scale 8 --tag idle --trim --save-as game/gui/button/choice_idle_background.png
  aseprite -b art/choice_button.aseprite --scale 8 --tag hover --trim --save-as game/gui/button/choice_hover_background.png

  aseprite -b art/textbox.aseprite --scale 8 --save-as game/gui/textbox.png
  aseprite -b art/frame.aseprite --scale 8 --save-as game/gui/frame.png

  aseprite -b art/skip.aseprite --scale 8 --save-as game/gui/skip.png
  aseprite -b art/notify.aseprite --scale 8 --save-as game/gui/notify.png
