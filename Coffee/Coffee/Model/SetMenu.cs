using Coffee.ViewModel;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Coffee.Model
{
    public class SetMenu : BaseViewModel
    {
        private string _SetMenuName { get; set; }
        public string SetMenuName { get => _SetMenuName; set { _SetMenuName = value; OnPropertyChanged(); } }
        private double _SetMenuPrice { get; set; }
        public double SetMenuPrice { get => _SetMenuPrice; set { _SetMenuPrice = value; OnPropertyChanged(); } }
        private string _SetMenuCategory { get; set; }
        public string SetMenuCategory { get => _SetMenuCategory; set { _SetMenuCategory = value; OnPropertyChanged(); } }
        private string _SetMenuTableName { get; set; }
        public string SetMenuTableName { get => _SetMenuTableName; set { _SetMenuTableName = value; OnPropertyChanged(); } }
        private double _SetTotal { get; set; }
        public double SetTotal { get => _SetTotal; set { _SetTotal = value; OnPropertyChanged(); } }


    }
}
