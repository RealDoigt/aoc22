module day1.main;
import std.algorithm.mutation;
import common;
import day1;

auto findMostCalories(Elf*[] elves)
{
    ulong mostCalories, index;

    foreach(i, elf; elves)
        if (elf.total > mostCalories)
        {
            mostCalories = elf.total;
            index = i;
        }

    "Elf #%d has %d calories!".format(index, mostCalories).writeln;

    return index;
}

void day1Main()
{
    auto elves = "res/day1/input".readText.makeElves;
    ulong totalTop3, index;

    for (int i; i < 3; ++i)
    {
        index = elves.findMostCalories;
        totalTop3 += elves[index].total;
        elves.remove(index);
    }

    "Total: %d calories".format(totalTop3).writeln;
}
