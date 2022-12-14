module day3.main;
import std.algorithm.iteration;
import common;
import day3;

void day3Main()
{
    uint[] commonPriorities,
           inventories,
           badges;

    foreach(line; "res/day3/input".readText.split("\n"))
    {
        if (line.length == 0) continue;
        auto priorities = line.toPriorities;
        commonPriorities ~= priorities.toCompartments.findCommonPriority;

        inventories ~= priorities;
    }



    "The priorities total is %d".format(commonPriorities.sum).writeln;
}
