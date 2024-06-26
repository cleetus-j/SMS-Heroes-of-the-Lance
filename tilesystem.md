The tile system:

During gameplay, the program uses multiple memory addresses and arrays to make up the tiles and metatiles. It's not the most frugal way to use RAM, but that's how it works. I'm trying to understand how it works, but this is so far how it seems to make up metatiles and stuff like that.

So, this is so far how it goes:

The tile system uses 2x2 metatiles to make up the whole scene. A scene is a whole 'room', it has it's own lenght and everything.
The metatiles are separated into tiles, and every tile has it's own tile number, and offset from zero. So far it seems if the offset is even, then the tile will come from the first set of 255 tiles, and if it's odd, then it will come from the second set of tiles.

-From the beginning of RAM $C000:

    -$C000: First tile in the first metatile.
    -$C100: This is an offset array.
    -$C200: Second tile in the first metatile.
    -$C300: Second offset array.
    -$C400: Third tile in the first metatile.
    -$C500: Third offset array.
    -$C600: Fourth tile in the first metatile.
    -$C700: Fourth offset array.

    -$C800: Metatiles, first row.
    -$C900: Metatiles, second row.
    -$CA00: Metatiles, fourth row.
    -$CB00: Fifth row.
    -$CC00: Sixth row.
    -$CD00: Seventh row.
    -$CE00: Eight row.
    -$CF00: Ninth row.

So as far as I can see, each array is $100\256 bytes long, so the metatile based maps could be really long.
Metatile $00 means the first four consecutive tiles after the compass and combat indicator tiles. The metatiles are laid in rows, not columns. Each metatile's separate tiles are grabbed from the arrays from $C000 to $C700. First is the tile number, then comes the tile details.

I wonder how the game loads tiles and ultimately, level data as well.

As suspected, the original disassembly does not contain individual addresses for every line of memory above, but it does not matter that much now.

I've started to look into the ROM data for indicators what does the individual bits represent.

Room1: bytes are all over the place
    -byte 0 nothing
    -byte 1 first tile in the second metatile.
    -byte 2 14th metatile first tile
    -byte 3 18th metatile first tile
    -byte 4 19th metatile first tile
    -byte 5 19th metatile third tile
    -byte 6 4th metatile third tile
    -byte 7 21th metatile third tile
    -byte 8 12th metatile third tile
    -byte 9 13th metatile third tile
    -byte 15 15th metatile second tile
    -byte 16 21th metatile fourth tile
    -byte 19 22th metatile first tile
    -byte 29 the same as above. i don't understant atm why.
    -byte 30 22th metatile third tile
    -byte 31 same. again, why
    -byte 32 same a bug in their map software?
    -byte 48 12th metatile first tile
    -byte 49 12th metatile third tile
    -byte 50 22th metatile first tile
    -byte 51 8th metatile first tile
    -byte 52 9th metatile first tile
    -byte 53 10th metatile first tile
    -byte 54 11th metatile first tile
    -byte 55 22th tile 4
    -62 23th 4
    -63 24th 4
    -64 25th 4
    -65 13th 2
    -66 17th 2
    -67 22th 1
    -68 24th 1
    -69 22th 1
    -70 5th 1
    -71 4th 1
    -72 5th 1
    -73 6th 1
    -74 14th 1
    -75 15th 2
    -76 14th 4
    +151 byte
    -227 6th 2
    -228 7th 1
    -229 7th 2
    -230 7th 4
    -231 1th 1
    -from $8200, again with the same structure. at every $200, there's more data.
    This damn map system looks like someone sneezed at the ROM to arrange things. Every level entry has a different, but the same pattern every $200 in ROM. There's overall 87 valid levels, but there's many more from the looks of it. The game seems to use it, so the map data is even more messed up. There's no way a human wrote this, it could be some internal map maker.
    -2nd 2
    -3rd 1