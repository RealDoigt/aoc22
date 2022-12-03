module day3.lists;
import std.ascii;

auto toPriority(char item)
{
    auto u = cast(ubyte)item;
    return item.isLower ? u - 96 : u - 38;
}

auto toPriorities(char[] rucksack)
{
    ubyte[] result;

    foreach (item; rucksack) result ~= item.toPriority;
    return result;
}

auto toCompartments(ubyte[] priorities)
{
    ubyte[][] result;

    return result;
}
