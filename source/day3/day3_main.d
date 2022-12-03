module day3.main;
import std.algorithm.iteration;
import common;
import day3;

void day3Main()
{
    uint[] priorities;

    foreach(line; "res/day3/input".readText.split("\n"))
    {
        if (line.length == 0) continue;
        priorities ~= line.toPriorities.toCompartments.findCommonPriority;
    }

    "The priorities total is %d".format(priorities.sum).writeln;
}
