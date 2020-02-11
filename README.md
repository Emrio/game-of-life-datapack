# Game of Life datapack
> Conway's Game of Life simulated in Minecraft

Supported Versions: **1.13+**

## Installation

- [Download the datapack][datapack-dl-url]
- Unzip the archive and open the folder generated
- Move the `gameOfLife` folder to the `datapacks` folder of your Minecraft world
- In game, type `/datapack enable "file/gameOfLife"`
- In game, type `/reload` to load the datapack and receive the eggs

## Interacting with the simulation

The game of life can be controlled with five eggs

### Start/Stop simulation

This egg, when used, halts or resumes the simulation.
The current state of the simulation can be seen on the actionbar

### Set cell

This egg will place a new alive cell on the block where the egg is used.
Make sure the simulation is halted because else the cell might die immediately.

**NB:** Placing two cells at the same block won't do anything.

### Speed up

This egg, when used, speeds up the rate of update of the simulation by one tick.
Maximum value is one update every game ticks (every 50 ms)

**WARNING:** You shouldn't set the update speed top low or else the TPS of the server and your FPS may significantly slow down

### Slow down

This egg, when used, slows down the rate of update of the simulation by one tick.
Minimum value is one update every 30 game ticks (every 1.5 seconds)

### Kill all cells

Destroys all alive cells in the loaded chunks of the world

## License

This project is licensed under the [MIT License][link-license].

[link-license]: https://github.com/TheEmrio/game-of-life-datapack/blob/master/LICENSE
[datapack-dl-url]: https://github.com/TheEmrio/game-of-life-datapack/archive/master.zip
