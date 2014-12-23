using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Navigation;
using System.Windows.Shapes;

namespace PatientManagement
{

    public partial class CreatePatient : Window
    {
        private ModelContainer db;
        private PatientList patientListWin;

        public CreatePatient(PatientList win)
        {
            InitializeComponent();
            patientListWin = win;
            this.db = win.db;
        }

        private void CreateBtn_Click(object sender, RoutedEventArgs e)
        {
            Patient patient = new Patient()
            {
                Address = this.AddressTxt.Text,
                FirstName = this.FirstNameTxt.Text,
                LastName = this.LastNameTxt.Text,
                AMKA = this.AMKATxt.Text,
                Register = this.RegisterTxt.Text,
                Telephone = this.TelephoneTxt.Text
            };

            db.Patients.Add(patient);
            db.SaveChanges();

            patientListWin.patientDataGrid.ItemsSource = db.Patients.ToList();

            this.Close();
        }
    }
}
