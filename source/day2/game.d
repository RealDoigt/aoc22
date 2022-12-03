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

    this (Result expected, Hand elf)
    {
        switch (expected)
        {
            case Result.loss: player = elf.loseAgainst;
            case Result.win: player = elf.winAgainst;
            default: player = elf;
        }
    }

    auto score()
    {
        return player + getResult(player, elf);
    }
}
