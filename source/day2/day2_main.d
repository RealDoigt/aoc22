module day2.main;
import std.string;
import std.stdio;
import std.file;
import day2;

public void day2Main()
{
    uint total;
    auto lines = "res/day2/input".readText.split("\n");

    foreach(line; lines)
    {
        if (line.length == 0) continue;
        total += Game(line[2].getHand, line[0].getHand).score;
    }

    "The total score is %d for the first strategy".format(total).writeln;

    total = 0;

    foreach(line; lines)
    {
        if (line.length == 0) continue;
        total += Game(line[2].getResult, line[0].getHand).score;
    }

    "The total score is %d for the second strategy".format(total).writeln;
}
