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
