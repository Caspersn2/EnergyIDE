using System.Collections.Generic;
using System.IO;
using System;

namespace CsharpRAPL.Devices {
    public class TempAPI : DeviceAPI
    {
        override public List<string> openRAPLFiles()
        {
            string path = "/sys/class/thermal/";
            int thermal_id = 0;
            while(Directory.Exists(path + "/thermal_zone" + thermal_id))
            {
                string dirname = path + "/thermal_zone" + thermal_id;
                string type = File.ReadAllText(dirname + "/type").Trim();
                if (type.Contains("pkg_temp"))
                    return new List<string>() {dirname + "/temp"};
                thermal_id++;
            }
            throw new Exception("No thermal zone found for the package");
        }
    }
}
