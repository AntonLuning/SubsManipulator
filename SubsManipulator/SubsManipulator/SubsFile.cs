using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace SubsManipulator
{
    class SubsFile
    {
        private string filePath;
        public string[] originalFile;
        public List<string> updatedFile;
        public void Get_OriginalFile()
        {
            Microsoft.Win32.OpenFileDialog dlg = new Microsoft.Win32.OpenFileDialog();

            dlg.DefaultExt = ".srt";
            //dlg.Filter = "All files(*.*) | *.*";

            Nullable<bool> result = dlg.ShowDialog();

            if (result == true)
            { 
                filePath = dlg.FileName;
                MainWindow.appWindow.doneTextBlock.Visibility = System.Windows.Visibility.Hidden;
                if (filePath.Substring(filePath.Length-3,3) == "srt")
                {
                    MainWindow.appWindow.fileTypeTextBlock.Visibility = System.Windows.Visibility.Hidden;
                    originalFile = System.IO.File.ReadAllLines(@filePath);
                    updatedFile = new List<string>();
                    MainWindow.appWindow.delayTextBox.IsEnabled = true;
                    MainWindow.appWindow.updateButton.IsEnabled = true;
                }  
                else
                {
                    MainWindow.appWindow.fileTypeTextBlock.Visibility = System.Windows.Visibility.Visible;
                    MainWindow.appWindow.delayTextBox.IsEnabled = false;
                    MainWindow.appWindow.updateButton.IsEnabled = false;
                }
            }
        }

        public void Update_File(SubsFile subsfile, string delay)
        {
            foreach (string line in subsfile.originalFile)
            {
                string subsLine = line;
                if (line.Length > 15 && line.Substring(13, 3) == "-->")
                {
                    subsLine = Manipulate_Time(line, delay);
                }
                subsfile.updatedFile.Add(subsLine);
            }
            string[] newFile = new string[subsfile.updatedFile.Count];
            for (int i = 0; i < newFile.Length; i++)
            {
                newFile[i] = subsfile.updatedFile[i];
            }
            System.IO.File.WriteAllLines(subsfile.filePath, newFile);
            MainWindow.appWindow.doneTextBlock.Visibility = System.Windows.Visibility.Visible;
        }

        private string Manipulate_Time(string originalTimeLine, string delay)
        {
            string[] time = { originalTimeLine.Substring(0, 12), originalTimeLine.Substring(17, 12) };
            string[] newTime = { Divide_Time(time[0], delay), Divide_Time(time[1], delay) };

            return (newTime[0] + " --> " + newTime[1]);
        }

        private string Divide_Time(string time, string delay)
        {
            int HH = int.Parse(time.Substring(0,2));
            int MM = int.Parse(time.Substring(3, 2));
            int SS = int.Parse(time.Substring(6, 2));
            int MS = int.Parse(time.Substring(9, 3));

            int delayMS = int.Parse(delay);

            return Calculate_NewTime(HH, MM, SS, MS, delayMS);
        }

        private string Calculate_NewTime(int HH, int MM, int SS, int MS, int delayMS)
        {
            MS += delayMS;

            if (MS >= 1000)
            {
                SS += (MS - MS % 1000) / 1000;
                MS = MS % 1000;
                if (SS >= 60)
                {
                    MM += (SS - SS % 60) / 60;
                    SS = SS % 60;
                    if (MM >= 60)
                    {
                        HH += (MM - MM % 60) / 60;
                        MM = MM % 60;
                    }
                }
            }
            else if (MS < 0)
            {
                SS -= 1 - (MS - MS % 1000) / 1000;
                MS = 1000 + (MS % 1000);
                if (SS < 0)
                {
                    MM -= 1 - (SS - SS % 60) / 60;
                    SS = 60 + (SS % 60);
                    if (MM < 0)
                    {
                        HH -= 1 - (MM - MM % 60) / 60;
                        MM = 60 + (MM % 60);
                    }
                }
            }

            return (HH.ToString("D2") + ":" + MM.ToString("D2") + ":" + SS.ToString("D2") + "," + MS.ToString("D3"));
        }
    }
}
