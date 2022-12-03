module day3.lists;
import std.algorithm.searching;
import std.ascii;

auto toPriority(char item)
{
    auto u = cast(uint)item;
    return item.isLower ? u - 96 : u - 38;
}

auto toPriorities(string rucksack)
{
    uint[] result;

    foreach (item; rucksack) result ~= item.toPriority;
    return result;
}

auto toCompartments(uint[] priorities)
{
    uint[][] result = [[],[]];

    result[0] = priorities[0..($>>1)-1];
    result[1] = priorities[($>>1)..$-1];

    return result;
}

auto findCommonPriority(uint[][] priorities)
{
    foreach(p; priorities[0])
        if (priorities[1].canFind(p)) return p;

    // return error;
    return 100;
}
