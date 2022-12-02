module day1_main;
import std.string;
import std.stdio;
import std.file;
import day1;

void day1Main()
{
    ulong mostCalories, index;

    foreach(i, elf; "res/day1/input".readText.makeElves)
        if (elf.total > mostCalories)
        {
            mostCalories = elf.total;
            index = i;
        }

    "Elf #%d has the %d calories!".format(index, mostCalories).writeln;
}
