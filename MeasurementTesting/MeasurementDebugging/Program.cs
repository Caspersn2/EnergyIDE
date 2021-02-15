using System;
using System.Collections.Immutable;
using System.Linq;
using System.Runtime.CompilerServices;
using MeasurementTesting;
using MeasurementTesting.Attributes;

namespace MeasurementDebugging
{
    class Program
    {
        static void Main(string[] args)
        {
            var output = Manager.Test( typeof(MeasurementExample) );
            
            Console.WriteLine(output);
        }
    }

    [MeasureClass]
    public class MeasurementExample
    {
        private int number;
        
        [MeasureSetup]
        public void Setup()
        {
            Console.WriteLine("This is from the setup");
            number = 6;
        }
        
        [Measure(MeasurementType.Time)]
        public void Testing1()
        {
            Benchmark.Start();
            number = 8;
        }

        [MeasureCleanup]
        public void cleanUp()
        {
            Console.WriteLine($"From cleanup, number: {number}");
        }
    }

    public class Benchmark
    {
        private enum Suit { Diamonds, Spades, Hearts, Clubs }
        private enum Value { Two, Three, Four, Five, Six, Seven, Eight, Nine, Ten, Jack, Queen, King, Ace }
        static ImmutableArray<Suit> suits = ImmutableArray<Suit>.Empty.AddRange((Suit[])Enum.GetValues(typeof(Suit)));
        static ImmutableArray<Value> values = ImmutableArray<Value>.Empty.AddRange((Value[])Enum.GetValues(typeof(Value)));
        static Random rng = new Random(2);

        public Benchmark() { }
        public static void Start()
        {
            rng = new Random(2);
            var res = performPlayingCards(1000, 0);
            Console.WriteLine(res);
        }

        private static int performPlayingCards(int runs, int count)
        {
            if (runs < 1)
                return count;

            return performPlayingCards(runs - 1, playingCardsOnDeck(getNewDeck(), count));
        }

        private static int playingCardsOnDeck(ImmutableArray<(Suit, Value)> deck, int count)
        {
            if (deck.Length < 1)
                return count;

            var deckStrSize = showDeck(deck).Length;
            var shuffledDeck = shuffleDeck(deck);
            var dealedDeck = shuffledDeck.Take(deck.Length - 1).ToImmutableArray();

            return playingCardsOnDeck(dealedDeck, deckStrSize + count);
        }


        private static string showDeck(ImmutableArray<(Suit, Value)> deck)
            => string.Join("\n", deck.Select(x => $"{x.Item2} of {x.Item1}"));

        private static ImmutableArray<(Suit, Value)> shuffleDeck(ImmutableArray<(Suit, Value)> deck)
            => deck.OrderBy(x => rng.Next()).ToImmutableArray();

        private static ImmutableArray<(Suit, Value)> getNewDeck()
            => suits
                .SelectMany(x => values.Select(y => (x, y)))
                .ToImmutableArray();
    }
}
