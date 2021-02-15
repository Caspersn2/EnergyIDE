using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Text;

namespace MeasurementTesting.InternalClasses
{
    public class Measurement
    {
        public string value { get; set; }
        private string name { get; set; }

        public Measurement(string name)
        {
            this.name = name;
        }
        public override string ToString()
        {
            return (name + ": " + value);
        }

        public virtual void Start() { }
        public virtual void Stop() { }
        public virtual void Save() { }
    }

    public class TimeMeasurement : Measurement
    {
        private Stopwatch Stopwatch { get; set; }
        public TimeMeasurement()
            : base("Time")
        {
            Stopwatch = new Stopwatch();
        }

        public override void Start()
        {
            Stopwatch.Start();
        }

        public override void Stop()
        {
            Stopwatch.Stop();
        }

        public override void Save()
        {
            value = Stopwatch.ElapsedMilliseconds.ToString() + "ms.";
        }
    }
}
