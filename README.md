*nasin Wakalito* is a toki pona input method created by jan Likipi, kala pona Tonyu, jan Tepo, and Lipamanka. This is a fork of the iOS app repo for *nasin sitelen Wakalito*.

To type, users string radicals from a word's sitelen pona character and nasin sitelen Wakalito's keyboard outputs that word. Normally, this app's keyboard only outputs words as sitelen Lasina characters. This fork makes small changes to the keyboard to only output the word's sitelen pona UCSUR character equivalent. The UCSUR font rendering these characters is [nasin-nanpa](https://github.com/ETBCOR/nasin-nanpa) by jan Itan. Its MIT license can be found on this repo [here](./ilo%20lawa/LICENSE-nasin-nanpa).

A better way of implementing this feature exists. However, I've never used Swift, Xcode, or made a mobile app before, so I haven't the skills to implement it with the time I have.

If something about this fork's app bugs you and you're unable to make the change or build the app yourself, message me on Discord `@harger` and I'll try my hand at it!  

---

A table for triggers -> words can be found on sona.pona.la, [here](https://sona.pona.la/wiki/Wakalito), with modifications listed below.  

<details>
<summary>
  <b>List format for modifications</b>
</summary>

#### Formatting Modifications

| Character                              | Keys on nasin Wakalito layout |
| ---------------------------------------| ----------------------------- |
| `　` (fullwidth space)                 | `-` 	                          |
| `‍` (zero width joiner)                 | `---`                         |
| `󱦕` (stacking joiner)                   | `•^>`                         |
| `󱦖` (scaling joiner)                    | `•<v`                         |
| `󱦝` (sp colon)                        | `:`                           |
| `󱦜` (sp dot)                          | `•`                           |
| `󱦐` (cartouche start)                  | `[`                           |
| `󱦑` (cartouche end)                    | `]`                           |
| `「` (cjk start quote)                 | `▢[`                         |
| `」` (cjk end quote)                   | `▢]`                         |
| `󱦗` (start left-combining long glyph)   | `[[`                          |
| `󱦘` (end left-combining long glyph)     | `]]`                          |
| `󱦚` (start right-combining long glyph)  | `[[[`                         |
| `󱦛` (end left-combining long glyph)     | `]]]`                         |

#### nimi sin Modifications

| Character          | Keys on nasin Wakalito layout |
| -------------------| ----------------------------- |
| `󱥸` (namako)      | `<v𐎌`, `𐎌<v`, `□•`, `•□`    |
| `󱦢` (majuna)      | `-𐎌-`, `𐎌--`                |
| `󱦤` (linluwi)     |  `ooo^>-`, `^>-ooo`, `\|-\|\|•••ᴗᴖ`, `\|-\|\|ᴗᴖ•••`, `\|-\|•••ᴗᴖ\|`, `\|-\|ᴗᴖ\|•••` |
| `󱦦` (su)          | `▢<v`                        |
| `󱦮` (owe)         | `𐎌o•`                        |

Additionally, triggers were removed for ASCII art, a Discord command, and words without sitelen pona characters in the font nasin-nanpa (`unu`, `Pingo`, `oke`, `mulapisu`, `kapesi`, and `isipin`).

</details>
