using System.Collections.Generic;
using System.Linq;

namespace CsharpRAPL
{
    public class RAPL
    {
        private List<Sensor> apis;

        public RAPL(List<Sensor> sensors) => apis = sensors;
        
        public void Start() => apis.ForEach(api => api.Start());

        public void End() => apis.ForEach(api => api.End());

        public bool IsValid() => apis.All(api => api.IsValid());

        public List<(string deviceName, double value)> GetResults() {
            List<(string d, double v)> res = new List<(string d, double v)>();
            foreach (var api in apis) 
            {
                if (api.Delta.Count == 1)
                    res.Add((api.Name, api.Delta[0]));
                else
                    for (int i = 0; i < api.Delta.Count; i++)
                        res.Add((api.Name + i, api.Delta[i]));
            }
            return res;
        }
    }
}
