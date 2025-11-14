# scry_fall.cr
Web-API for [scryfall.com](https://scryfall.com/) stellar search, deckbuilding tools, images, and more for Magic: The Gathering.

## Example
```cr
require "./scry_fall"

scry_fall = Scryfall.new
card = scry_fall.get_random_card()
puts card
```
