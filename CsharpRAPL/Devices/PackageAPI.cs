using System.Collections.Generic;

namespace CsharpRAPL.Devices {
    public class PackageAPI : DeviceAPI
    {
        public PackageAPI(List<int> socket_ids = null) : base(socket_ids) {}

        override public List<string> openRAPLFiles()
        {
            List<(string, int)> socket_names = this.GetSocketDirectoryNames();
            List<string> rapl_files = new List<string>();

            foreach (var (dir, id) in socket_names)
            {
                rapl_files.Add(dir + "/energy_uj");
            }

            return rapl_files;
        }
    }
}
