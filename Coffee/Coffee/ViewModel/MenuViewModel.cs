using Coffee.Model;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Input;

namespace Coffee.ViewModel
{
    public class MenuViewModel : BaseViewModel
    {
        private ObservableCollection<Menu> _List;
        public ObservableCollection<Menu> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private Menu _SelectedItem;
        public Menu SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    Name = SelectedItem.Name;
                    Price = SelectedItem.Price;
                    CategoryID = SelectedItem.CategoryID;
                }
            }
        }

        private string _Name;
        public string Name { get => _Name; set { _Name = value; OnPropertyChanged(); } }
        private double _Price;
        public double Price { get => _Price; set { _Price = value; OnPropertyChanged(); } }
        private int _CategoryID;
        public int CategoryID { get => _CategoryID; set { _CategoryID = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand UpdateCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public MenuViewModel()  
        {
            List = new ObservableCollection<Menu>(DataProvider.Ins.DB.Menus);

            AddCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(Name))
                    return false;

                var listName = DataProvider.Ins.DB.Menus.Where(s => s.Name == Name);
                if (listName == null || listName.Count() != 0)
                    return false;

                return true;
            }, (p) =>
            {
                var Menu = new Menu() { Name = Name, Price = Price, CategoryID = CategoryID };
                DataProvider.Ins.DB.Menus.Add(Menu);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(Menu);
            }
           );
            UpdateCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(Name) || SelectedItem == null)
                    return false;

                var listName = DataProvider.Ins.DB.Menus.Where(s => s.id == SelectedItem.id);
                if (listName != null && listName.Count() != 0)
                    return true;

                return false;
            }, (p) =>
            {
                var Menu = DataProvider.Ins.DB.Menus.Where(s => s.id == SelectedItem.id).SingleOrDefault();
                Menu.Name = Name;
                Menu.Price = Price;
                Menu.CategoryID = CategoryID;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.Name = Name;
                SelectedItem.Price = Price;

            }
           );
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(Name) || SelectedItem == null)
                    return false;

                var listTableName = DataProvider.Ins.DB.Menus.Where(s => s.id == SelectedItem.id);
                if (listTableName == null || listTableName.Count() != 0)
                    return true;

                return false;
            }, (p) =>
            {
                this.List.Remove(this.SelectedItem);
                DataProvider.Ins.DB.SaveChanges();
            }
          );
        }
    }
}
