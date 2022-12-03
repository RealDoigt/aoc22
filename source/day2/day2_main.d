module day2.main;
import std.string;
import std.stdio;
import std.file;
import day2;

public void day2Main()
{
    uint total;

    foreach(line; "res/day2/input".readText.split("\n"))
        total += Game(line[2].getHand, line[0].getHand).score;
}
