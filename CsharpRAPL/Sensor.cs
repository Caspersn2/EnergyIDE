using System;
using System.Linq;
using System.Collections.Generic;

public enum CollectionApproach
{
    AVERAGE,
    DIFFERENCE
}

namespace CsharpRAPL
{
    public class Sensor
    {
        public string Name { get; }
        private DeviceAPI _api;
        private CollectionApproach _approach;
        public List<double> Delta { get; private set; }
        private List<double> startValue;
        private List<double> endValue;

        public Sensor(string name, DeviceAPI api, CollectionApproach approach)
        {
            Name = name;
            _api = api;
            _approach = approach;
        }

        public void Start() => startValue = _api.Collect();

        public void End()
        {
            endValue = _api.Collect();
            updateDelta();
        }

        public bool IsValid() 
            => startValue.All(val => val != -1.0) 
                && endValue.All(val => val != -1.0) 
                && Delta.Any(val => val >= 0);

        private void updateDelta()
        {
            switch (_approach)
            {
                case CollectionApproach.DIFFERENCE:
                    this.Delta = Enumerable.Range(0, endValue.Count).Select(i => endValue[i] - startValue[i]).ToList(); 
                    break;
                case CollectionApproach.AVERAGE:
                    this.Delta = Enumerable.Range(0, endValue.Count).Select(i => (endValue[i] + startValue[i]) / 2).ToList(); 
                    break;
                default:
                    throw new Exception("Collection approach is not available");
            }
        }
    }
}
