module day1.factory;
import std.array;
import std.conv;
import day1.elf;

auto makeElves(string inventory)
{
    Elf*[] elves;
    ulong[] calories;

    foreach(line; inventory.split("\n"))
    {
        if(line == "")
        {
            elves ~= new Elf(calories);
            calories = [];
            continue;
        }

        calories ~= line.to!ulong;
    }

    return elves;
}
