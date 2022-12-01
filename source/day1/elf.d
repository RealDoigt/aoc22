module day1.elf;
import std.algorithm.iteration;

struct Elf
{
    private int[] calories;
    this(int[] calories){this.calories = calories;}

    auto total(){return calories.sum;}
    auto hasMoreThan(Elf e){return total > e.total;}
}
