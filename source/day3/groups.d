module day3.groups;

auto toGroups(string[] inventory)
{
    string[][] result = new string[][](inventory.length / 3 + 1);

    for (int i = 0; i < inventory.length; ++i)
    {
        int index = i / 3;

        if (result[index] is null)
            result[index] = new string[3];

        result[index][i % 3] = inventory[i];
    }

    return result;
}

