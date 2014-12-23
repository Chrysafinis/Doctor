using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace PatientManagement
{
    /// <summary>
    /// Interaction logic for PatientList.xaml
    /// </summary>
    public partial class PatientList : Window
    {
        public ModelContainer db = new ModelContainer();

        public PatientList()
        {
            InitializeComponent();

            this.patientDataGrid.ItemsSource = db.Patients.ToList();
        }

        private void Button_Click(object sender, RoutedEventArgs e)
        {
            string nameStr = this.NameTxt.Text;
            string amkaStr = this.AMKATxt.Text;

            List<int> matches = new List<int>();


            if (!String.IsNullOrEmpty(nameStr))
            {
                string pattern = ".*" + nameStr.Replace(" ", ".*") + ".*";
                Regex regex = new Regex(pattern, RegexOptions.IgnoreCase);

                var temp = db.Patients.Select(r => new { FullName = r.FirstName + " " + r.LastName, Id = r.Id }).ToList();

                matches = temp.Where(r => regex.IsMatch(r.FullName)).Select(r => r.Id).ToList();
            }


            var patients = db.Patients.Where(r => (String.IsNullOrEmpty(nameStr) || matches.Contains(r.Id)) && (r.AMKA == amkaStr || String.IsNullOrEmpty(amkaStr)));

            this.patientDataGrid.ItemsSource = patients.ToList();

        }

        private void Button_Click_1(object sender, RoutedEventArgs e)
        {
            Window win = new CreatePatient(this);
            win.Show();
        }

        private void Button_Click_2(object sender, RoutedEventArgs e)
        {
            db.SaveChanges();
        }

        private void patientDataGrid_PreviewKeyDown(object sender, KeyEventArgs e)
        {
            var grid = (DataGrid)sender;
            if (Key.Delete == e.Key)
            {

                foreach (Patient row in grid.SelectedItems)
                {
                    db.Patients.Remove(row);
                }

            }


        }

        private void Button_Click_3(object sender, RoutedEventArgs e)
        {
            db.Dispose();
            db = new ModelContainer();
            this.patientDataGrid.ItemsSource = db.Patients.ToList();
        }
    }
}