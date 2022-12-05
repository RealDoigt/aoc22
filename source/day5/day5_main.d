module day5.main;
import common;
import day5;

void day5Main()
{
    char[8][56] stacks;

    foreach (i, line; "res/day5/stacks".readText.split("\n"))
        foreach (j, c; line)
            stacks[i][j] = c;

    stacks.print;
}
