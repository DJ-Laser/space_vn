# The script of the game goes in this file.

# Declare characters used by this game. The color argument colorizes the
# name of the character.

define e = Character("Eileen")

# The game starts here.

label start:
    scene bg main

    # This shows a character sprite. A placeholder is used, but you can
    # replace it by adding a file named "eileen happy.png" to the images
    # directory.

    show eileen happy

    # These display lines of dialogue.

    e "You've created a new Ren'Py game."

    e "Once you add a story, pictures, and music, you can release it to the world!"

    $ renpy.notify("Hello from notification!")

    pause

    $ renpy.notify("REALLY long notification to make sure vertical wrapping/tiling works correctly lmao. Actually idk if it does wrap but I'm gonna find out")

    pause

menu:

    "Option 1":
        jump opt_1

    "Option 2":
        jump opt_2

    "Option 2 but lots of long text overflowing one line haha. <Insert bee movie script or smth>. Third line for testing":
        jump opt_2

label opt_1:

    "You chose option 1"

    jump c

label opt_2:

    "You chose option 2"

    jump c

label c:
    "Filler text"