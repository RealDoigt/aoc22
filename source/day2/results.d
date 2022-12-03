module day2.results;
import day2;

enum Result = {loss, draw = 3, win = 6};

package
{
    enum loss = Result.loss;
    enum draw = Result.draw;
    enum win = Result.win;
}

Result[3][3] outcomes =
[ // Rock, Paper, Scissor < elf
    [draw, loss,  win], // Rock
    [win,  draw, loss], // Paper
    [loss,  win, draw]  // Scissor
];                      // player ^

auto getResult(Hand player, Hand elf)
{
    return outcomes[player - 1][elf - 1];
}