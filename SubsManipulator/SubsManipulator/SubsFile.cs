using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SubsManipulator
{
    class SubsFile
    {
        public static string[] originalFile;
        public static List<string> updatedFile;
        public static void Get_OriginalFile()
        {
            originalFile = System.IO.File.ReadAllLines(@"C:\Users\Anton\Downloads\Inception-English.srt");
        }
    }
}
