using Bddify.Core;
using NUnit.Framework;

namespace $rootnamespace$.Bddify.Samples.TicTacToe
{
    public class DiagonalWin : GameInProgress
    {
        [RunStepWithArgs(
                new[] { X, O, O },
                new[] { X, O, X },
                new[] { O, X, N },
                StepTextTemplate = BoardStateTemplate)]
        void GivenTheFollowingBoard(string[] firstRow, string[] secondRow, string[] thirdRow)
        {
            Game = new Game(firstRow, secondRow, thirdRow);
        }

        void ThenTheWinnerShouldBeO()
        {
            Assert.That(Game.Winner, Is.EqualTo(O));
        }
    }
}