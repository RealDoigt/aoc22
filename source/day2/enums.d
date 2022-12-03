module day2.enums;

enum Hand = {rock = 1, paper = 2, scissor = 3};
enum Game = {loss, draw = 3, win = 6};

auto getHand(char letter)
{
    final switch(letter)
    {
        case 'A', 'X': return Hand.rock;
        case 'B', 'Y': return Hand.paper;
        case 'C', 'Z': return Hand.scissor;
    }
}
