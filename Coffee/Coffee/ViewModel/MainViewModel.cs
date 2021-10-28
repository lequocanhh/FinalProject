using Coffee;
using Coffee.Model;
using Coffee.ViewModel;
using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Input;

namespace Coffee.ViewModel
{
    public class MainViewModel : BaseViewModel
    {

        private ObservableCollection<SetMenu> _SetMenu;
        public ObservableCollection<SetMenu> SetMenu { get => _SetMenu; set { _SetMenu = value; OnPropertyChanged(); } }
        private ObservableCollection<Menu> _MainList;
        public ObservableCollection<Menu> MainList { get => _MainList; set { _MainList = value; OnPropertyChanged(); } }
        private ObservableCollection<FoodCategory> _Category;
        public ObservableCollection<FoodCategory> Category { get => _Category; set { _Category = value; OnPropertyChanged(); } }
        private ObservableCollection<TableStatu> _Table;
        public ObservableCollection<TableStatu> Table { get => _Table; set { _Table = value; OnPropertyChanged(); } }



        private string _Name;
        public string Name { get => _Name; set { _Name = value; OnPropertyChanged(); } }
        private double _Price;
        public double Price { get => _Price; set { _Price = value; OnPropertyChanged(); } }

        private string _SetMenuName;
        public string SetMenuName { get => _SetMenuName; set { _SetMenuName = value; OnPropertyChanged(); } }
        private double _SetMenuPrice;
        public double SetMenuPrice { get => _SetMenuPrice; set { _SetMenuPrice = value; OnPropertyChanged(); } }
        private string _SetMenuCategory;
        public string SetMenuCategory { get => _SetMenuCategory; set { _SetMenuCategory = value; OnPropertyChanged(); } }
        private string _SetMenuTableName;
        public string SetMenuTableName { get => _SetMenuTableName; set { _SetMenuTableName = value; OnPropertyChanged(); } }
        private double _SetTotal;
        public double SetTotal { get => _SetTotal; set { _SetTotal = value; OnPropertyChanged(); } }

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
                    SelectedFoodCategory = SelectedItem.FoodCategory;
                }
            }
        }
        private FoodCategory _SelectedFoodCategory;
        public FoodCategory SelectedFoodCategory
        {
            get => _SelectedFoodCategory;
            set
            {
                _SelectedFoodCategory = value;
                OnPropertyChanged();
            }
        }
        private TableStatu _SelectedTable;
        public TableStatu SelectedTable
        {
            get => _SelectedTable;
            set
            {
                _SelectedTable = value;
                OnPropertyChanged();
            }
        }
        private SetMenu _SelectedSetMenu;
        public SetMenu SelectedSetMenu
        {
            get => _SelectedSetMenu;
            set
            {
                _SelectedSetMenu = value;
                OnPropertyChanged();
                if (SelectedSetMenu != null)
                {
                    SetMenuName = SetMenuName;
                    SetMenuPrice = SetMenuPrice;
                    SetMenuCategory = SetMenuCategory;
                    SetMenuTableName = SetMenuTableName;
                }
            }
        }

        public bool Isloaded = false;
        public ICommand LoadedWindowCommand { get; set; }
        public ICommand MenuCommand { get; set; }
        public ICommand AccountCommand { get; set; }
        public ICommand TableCommand { get; set; }
        public ICommand AddToBillCommand { get; set; }
        public ICommand PayCommand { get; set; }






        public MainViewModel()
        {
            SetMenu = new ObservableCollection<SetMenu>();
            LoadedWindowCommand = new RelayCommand<Window>((p) => { return true; }, (p) =>
            {
                Isloaded = true;
                if (p == null)
                    return;
                p.Hide();
                LoginWindow loginWindow = new LoginWindow();
                loginWindow.ShowDialog();

                if (loginWindow.DataContext == null)
                    return;
                var loginVM = loginWindow.DataContext as LoginViewModel;

                if (loginVM.IsLogin)
                {
                    p.Show();
                    LoadSetMenuDataToListView();
                }
                else
                {
                    p.Close();
                }
            }
              );

            AddToBillCommand = new RelayCommand<object>((p) =>
            {
                return true;
            }, (p) =>
            {
                    SetMenu setmenu = new SetMenu() { SetMenuName = Name, SetMenuPrice = Price, SetMenuCategory = SelectedFoodCategory.CategoryName, SetMenuTableName = SelectedTable.TableName };

                    SetMenu.Add(setmenu);
                    SetTotal = 0;
                    foreach (var item in SetMenu)
                    {
                        SetTotal += item.SetMenuPrice;
                    }
            }
           );
            PayCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                MessageBox.Show("Pay succesfully");
                //Add to bill after get ideas
                SetMenu.Clear();
            }
           );

            MenuCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                MenuWindow wd = new MenuWindow();
                wd.ShowDialog();
            }
           );

            AccountCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                AccountWindow wd = new AccountWindow();
                wd.ShowDialog();
            }
           );

            TableCommand = new RelayCommand<object>((p) => { return true; }, (p) =>
            {
                TableWindow wd = new TableWindow();
                wd.ShowDialog();
            }
           );

          

        }

        void LoadSetMenuDataToListView()
        {
            //SetMenuList = new ObservableCollection<SetMenu>();
            //var setmenulist = DataProvider.Ins.DB.Menus;
            MainList = new ObservableCollection<Menu>(DataProvider.Ins.DB.Menus);
            Category = new ObservableCollection<FoodCategory>(DataProvider.Ins.DB.FoodCategories);
            Table = new ObservableCollection<TableStatu>(DataProvider.Ins.DB.TableStatus);


        }

    }
}


