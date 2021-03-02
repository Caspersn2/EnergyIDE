using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Text;

namespace MeasurementTesting.InternalClasses
{
    public class Measurement
    {
        public List<double> Values { get; set; }
        public string Name { get; set; }
        public double Mean;
        public double Deviation;
        public double ErrorMargin;
        public double ErrorPercent;

        public Measurement(string name)
        {
            this.Name = name;
            this.Values = new List<double>();
        }
        public override string ToString()
        {
            this.ComputeResults();
            return this.Name + " " + this.Mean.ToString();
        }

        public void AddMeasurement(double value)
        {
            this.Values.Add(value);
        }

        public void ComputeResults()
        {
            Mean = ComputeMean(Values);
            Deviation = ComputeDeviation(Values);
            ErrorMargin = ComputeErrorMargin(Values);
            ErrorPercent = ComputeErrorPercent(Values);
        }

        private double ComputeMean(List<double> values)
        {
            return values.Sum() / values.Count;
        }

        private double ComputeDeviation(List<double> values)
        {
            var sqrtSum = 0.0;
            values.ForEach(val => sqrtSum += (val - Mean) * (val - Mean));
            var subres = sqrtSum;
            if (values.Count > 1)
                subres = sqrtSum / (values.Count - 1);
            return Math.Sqrt(subres);
        }

        private double ComputeErrorMargin(List<double> values)
        {
            return Deviation / Math.Sqrt(values.Count);
        }

        private double ComputeErrorPercent(List<double> values)
        {
            return (ErrorMargin / Mean);
        }
    }
}
