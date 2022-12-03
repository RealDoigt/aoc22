module day2.game;
import day2;



struct Game
{
    private Hand player, elf;

    this (Hand player, Hand elf)
    {
        this.player = player;
        this.elf = elf;
    }

    auto score()
    {
        return player + getResult(player, elf);
    }
}
