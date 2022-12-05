module day5.stacks;

void print(char[8][56] stacks)
{
    for (int i; i < 9; ++i)
    {
        foreach(crate; stacks[i])
            if (crate <= 'Z') crate.write;

        writeln;
    }
}

auto isOccupied(ref char[8][56] stacks, int x, y)
{
    return stacks[y][x] >= 'A' && stacks[y][x] <= 'Z';
}

void moveCrate(ref char[8][56] stacks, int from, int to)
{
    char toMove;

    for(int i;;++i)
        if (i == 55 || !stacks.isOccupied(from, i + 1))
        {
            toMove = stacks[from, i];
            stacks[from, i] = '\0';
            break;
        }


}
