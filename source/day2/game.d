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
            case Result.loss: player = elf.loseAgainst; break;
            case Result.win: player = elf.winAgainst; break;
            default: player = elf;
        }

        this.elf = elf;
    }

    auto score()
    {
        return player + getResult(player, elf);
    }
}
