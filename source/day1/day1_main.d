module day1_main;
import std.stdio;
import std.file;
import day1;

void day1_main()
{
    auto mostCalories = 0UL, index = -1;

    foreach(i, elf; "res/day1/input".readText.makeElves)
        if (elf.total > mostCalories)
        {
            mostCalories = elf.total;
            index = -1;
        }

    "Elf #%d has the %d calories!".format(index, mostCalories);
}
