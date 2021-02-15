using System.Collections.Generic;
using System.IO;
using System;

namespace CsharpRAPL.Devices {
    public class DramAPI : DeviceAPI
    {
        public DramAPI(List<int> socket_ids = null) : base(socket_ids) {}

        override public List<string> openRAPLFiles()
        {
            List<(string, int)> socket_names = this.GetSocketDirectoryNames();
            
            string getDramFile(string directoryName, int raplSocketId)
            {
                int rapl_device_id = 0;
                while (Directory.Exists(directoryName + "/intel-rapl:" + raplSocketId + ":" + rapl_device_id))
                {
                    var dirName = directoryName + "/intel-rapl:" + raplSocketId + ":" + rapl_device_id;
                    var content = File.ReadAllText(dirName + "/name").Trim();
                    if (content.Equals("dram"))
                        return dirName + "/energy_uj";
                    
                    rapl_device_id += 1;
                }
                
                throw new Exception("PyRAPLCantInitDeviceAPI"); //TODO: Proper exceptions
            }
        
            List<string> raplFiles = new List<string>();
            foreach(var (socketDirectoryName, raplSocketId) in socket_names) 
            {
                raplFiles.Add(getDramFile(socketDirectoryName, raplSocketId));
            }

            return raplFiles;
        }
    }
}
