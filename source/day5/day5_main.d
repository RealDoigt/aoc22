module day5.main;
import common;

void print(char[8][56] stacks)
{
    for (int i; i < 9; ++i)
    {
        foreach(crate; stacks[i])
            if (crate <= 'Z') crate.write;

        writeln;
    }
}

void day5Main()
{
    char[8][56] stacks;

    foreach (i, line; "res/day5/stacks".readText.split("\n"))
        foreach (j, c; line)
            stacks[i][j] = c;

    stacks.print;
}
