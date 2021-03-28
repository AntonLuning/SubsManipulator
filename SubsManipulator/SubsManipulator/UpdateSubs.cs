using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SubsManipulator
{
    class UpdateSubs
    {

        public static void Update_File(string delay)
        {
            
            foreach (string line in SubsFile.originalFile)
            {
                string subsLine = (line.Substring(13, 3) == "-->") ? Calculate_Time(line) : line;
               SubsFile.updatedFile.Add(subsLine);
            }
        }

        private static string Calculate_Time(string originalTimeLine)
        {
            string newTimeLine;
            newTimeLine = "aaa";

            return newTimeLine;
        }
    }
}
