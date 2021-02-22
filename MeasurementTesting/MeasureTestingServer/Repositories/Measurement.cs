using System;
using System.Threading;

namespace Repositories.Measurement
{
    public class MeasurementRepository 
    {
        private string Path { get; set; }
        public MeasurementRepository(string Path)
        {
            this.Path = Path;
        }

        public void Start()
        {
            //Spawns a new thread to run the testing
            Thread measureThread = new Thread(x => {
                var output = MeasurementTesting.Manager.Test();
            });
            
        }
    }

    [MeasureClass(false)]
    public class MeasurementExample
    {
        private int number;
        
        [MeasureSetup]
        public void Setup()
        {
            Console.WriteLine("This is from the setup");
            number = 6;
        }
        
        [Measure(5)]
        public void something()
        {
            Console.WriteLine("blabla");
        }
        
        [Measure(10)]
        public void Testing1()
        {
            Benchmark.Start();
        }

        [MeasureCleanup]
        public void cleanUp()
        {
            Console.WriteLine($"From cleanup, number: {number}");
        }
    }
}
