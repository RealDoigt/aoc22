module day5.main;
import std.conv;
import common;
import day5;

void day5Main()
{
    char[9][56] stacks;

    foreach (i, line; "res/day5/stacks".readText.split("\n"))
        foreach (j, c; line)
            stacks[i][j] = c;

    foreach (line; "res/day5/moves".readText.split("\n"))
        foreach (params; line.split(","))
        {
            if (params.length < 3) continue;

            int moves = params[0].to!int - 1,
                from = params[1].to!int,
                to = params[2].to!int;

            for (int i; i < moves; ++i)
                stacks.moveCrate(from, to);
        }

    stacks.print;
}
