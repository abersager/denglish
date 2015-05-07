# Denglish.keylayout

OS X keyboard layout for German speaking developers and other power users

## Why?

English keyboard layouts are great for coding. Special characters such as `[]`, `{}`, `<>` and `/` are easy to type, which speeds up your coding speed.

German keyboard layouts are good for, well, typing German. `ä`, `ö`, `ü` and `ß` have dedicated keys assigned.

You could decide which one is more important to you. You could even assign a keyboard shortcut to switch between the layouts.

Or, you could use _Denglish_, which gives you the best of both worlds.

## How?

Denglish is based on regular U.S. or British keyboard layouts but gives you direct access to Umlaut characters. It's quite simple:

| You type | You get                           |
| -------- | --------------------------------- |
| `⌥A`     | ä                                 |
| `⌥O`     | ö                                 |
| `⌥U`     | ü                                 |
| `⇧⌥A`    | Ä                                 |
| `⇧⌥O`    | Ö                                 |
| `⇧⌥U`    | Ü                                 |
| `⌥S`     | ß (unchanged from default layout) |

You get the convenience of an English keyboard layout yet you can type German at near-native speed.

### Notes

In U.S. and British layouts, `⌥U` is assigned to the dead-key state for the diaeresis diacritic (the two dots above the letter used in umlauts). It has been remapped to `^⌥U` so other characters such as _ë_ are still available.

The same is true for all other characters that were overwritten by the new mappings, they are all available via `^⌥` and `^⇧⌥`.

## Installation

 - Download [denglish.dmg](http://abersager.github.io/denglish/denglish.dmg) and open the image.
 - Pick your flavour by opening a folder:
    - _us_ and _uk_ are the base layout, either U.S. or British.
    - _de_ and _at_ simply have different icons. The layouts are identical.
 - Drag both `Denglish.keylayout` and `Denglish.icns` onto `Keyboard Layouts`. This installs the keyboard layout in `~/Library/Keyboard Layouts`.
 - Activate the new keyboard layout:
   - Open System Preferences > Keyboard (Systemeinstellungen > Tastatur).
   - Select "Input Sources" ("Eingabequellen")
   - Click the `+` button
   - Select "Others" in the left pane
   - Select "Denglish" in the right pane
   - Click "Add" ("Hinzufügen")

## Acknowledgements

Created using [Ukelele](http://scripts.sil.org/cms/scripts/page.php?site_id=nrsi&item_id=ukelele), an OS X Keyboard Layout Editor. It free, works great and is easy to use.
