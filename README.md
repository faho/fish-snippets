# fish-snippets
Some neat fish snippets and tricks

I recommend not using this as-is. Look at the things here and pick anything you're interested in.

Absolutely no warranty on any of these. Use them if you think they're neat or useful, but these aren't big "released" things.
This is my little playground.

# What's here

- A port of [pridecat](https://github.com/lunasorcery/pridecat) to pure builtins-only fish script - pipe into it to have your output colored in pride flag colors
- "goblin-mode" - this is basically a prank. It will, after every command:
  - Randomize fish's syntax highlighting colors
  - Choose a random prompt from fish's presets
  - Print a random fortune (if it finds the fortune database)
- Some abbreviations:
  - Turn `m ` into `math ""`, with the cursor between the quotes
  - Automatically add colorization and pipe to less with `cless`
  - Automatically expand directories in command position into `cd dir/`
  - Turn `...` into `cd ../../` (with as many `../` as `.`s)
  - `!!` and `!$` history expansion
- poggress - this displays a progress bar of the given size:

   ```fish
   set -l char c
   for perc in (seq 0 100)
       test $char = c; and set char C; or set char c
       printf '[%s]\r' (poggress -w (math $COLUMNS - 2) -c (set_color bryellow)$char(set_color normal) $perc)
       sleep (math (random 0 1 500) / 1800)
   end
   ```
