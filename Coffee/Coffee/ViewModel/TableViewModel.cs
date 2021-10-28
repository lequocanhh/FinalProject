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
    public class TableViewModel : BaseViewModel
    {
        private ObservableCollection<TableStatu> _List;
        public ObservableCollection<TableStatu> List { get => _List; set { _List = value;OnPropertyChanged(); } }

        private TableStatu _SelectedItem;
        public TableStatu SelectedItem { get=>_SelectedItem;
            set 
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if(SelectedItem != null)
                {
                    TableName = SelectedItem.TableName;
                    Status = SelectedItem.Status;
                }
            } 
        }

        private string _TableName;
        public string TableName { get => _TableName; set { _TableName = value; OnPropertyChanged(); } }
        private string _Status;
        public string Status { get => _Status; set { _Status = value; OnPropertyChanged(); } }

        public ICommand AddCommand { get; set; }
        public ICommand UpdateCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public TableViewModel()
        {
            List = new ObservableCollection<TableStatu>(DataProvider.Ins.DB.TableStatus);

            AddCommand = new RelayCommand<object>((p) => 
            {
                if (string.IsNullOrEmpty(TableName))
                    return false;

                var listTableName = DataProvider.Ins.DB.TableStatus.Where(s=>s.TableName == TableName);
                if (listTableName == null || listTableName.Count() != 0)
                    return false;

                return true;
            }, (p) =>
            {
                var Menu = new TableStatu() { TableName = TableName, Status = Status };
                DataProvider.Ins.DB.TableStatus.Add(Menu);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(Menu);
            }
           );
            UpdateCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(Status) || SelectedItem == null)
                    return false;

                var listTableName = DataProvider.Ins.DB.TableStatus.Where(s => s.id == SelectedItem.id);
                if (listTableName == null || listTableName.Count() != 0)
                    return true;

                return false;
            }, (p) =>
            {
                var Table = DataProvider.Ins.DB.TableStatus.Where(s => s.id == SelectedItem.id).SingleOrDefault();
                Table.TableName = TableName;
                Table.Status = Status;
                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.TableName = TableName;
                SelectedItem.Status = Status;

            }
           );
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(TableName) || SelectedItem == null)
                    return false;

                var listTableName = DataProvider.Ins.DB.TableStatus.Where(s => s.id == SelectedItem.id);
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
