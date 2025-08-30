default persistent.seen_intro = False

label splashscreen:
  if persistent.seen_intro:
    return

  define d = Character("DJ_Laser (author)")
  scene bg space

  d "Thanks for trying my game!"

  d "It's kind of a work in progress at the moment."

  d "I only have bare code and UI art right now..."

  $ renpy.notify("But hey doesn't this notification thing look cool?\nIt even tiles properly on multiple lines.")

  d "Oh look, a notification! ^^^"

  d "I also added choice menu UIs"

  menu:
    "Option 1":
      jump .opt_1

    "Option 2":
      jump .opt_2

    "Option 3 has lots of long text overflowing onto two lines.\nThird line for testing":
      jump .opt_3

  label .opt_1:
    "You chose option 1"
    jump .after_opt_123

  label .opt_2:
    "You chose option 2"
    jump .after_opt_123

  label .opt_3:
    "You chose option 3"
    jump .after_opt_123

  label .after_opt_123:
    d "Lastly I customized the main menu, notably the Save/Load screens"
    d "This was somewhat annoying to pull off because renpy doesn't like sticking to \
      nice pixel grids, so I had to scale the art up by 8 and account for that in \
      things like border calculations."
    
    d "With that out of the way, go play the game!"

    $ persistent.seen_intro = True
    $ renpy.full_restart()

label start:
  "Todo!"
