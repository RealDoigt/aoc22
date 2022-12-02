module day1.elf;
import std.algorithm.iteration;

struct Elf
{
    private ulong[] calories;
    this(ulong[] calories){this.calories = calories;}

    auto total(){return calories.sum;}
}
