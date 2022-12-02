module day1_main;
import std.std.algorithm.mutation;
import std.string;
import std.stdio;
import std.file;
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

    "Elf #%d has the %d calories!".format(index, mostCalories).writeln;

    return i;
}

void day1Main()
{
    auto elves = "res/day1/input".readText.makeElves,
    ulong totalTop3, index;

    for (int i; i < 3; ++i)
    {
        index = elves.findMostCalories;
        totalTop3 = elves[index].total;
        elves.remove(index);
    }
}
