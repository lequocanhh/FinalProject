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
    public class AccountViewModel : BaseViewModel
    {
        private ObservableCollection<Account> _List;
        public ObservableCollection<Account> List { get => _List; set { _List = value; OnPropertyChanged(); } }

        private ObservableCollection<AccountRole> _AccountRole;
        public ObservableCollection<AccountRole> AccountRole { get => _AccountRole; set { _AccountRole = value; OnPropertyChanged(); } }

        private Account _SelectedItem;
        public Account SelectedItem
        {
            get => _SelectedItem;
            set
            {
                _SelectedItem = value;
                OnPropertyChanged();
                if (SelectedItem != null)
                {
                    DisplayName = SelectedItem.DisplayName;
                    UserName = SelectedItem.UserName;
                    PassWord = SelectedItem.PassWord;
                    SelectedAccountRole = SelectedItem.AccountRole;
                }
            }
        }
        private AccountRole _SelectedAccountRole;
        public AccountRole SelectedAccountRole
        {
            get => _SelectedAccountRole;
            set
            {
                _SelectedAccountRole = value;
                OnPropertyChanged();
            }
        }

        private string _DisplayName;
        public string DisplayName { get => _DisplayName; set { _DisplayName = value; OnPropertyChanged(); } }
        private string _UserName;
        public string UserName { get => _UserName; set { _UserName = value; OnPropertyChanged(); } }
        private string _PassWord;
        public string PassWord { get => _PassWord; set { _PassWord = value; OnPropertyChanged(); } }
        public ICommand AddCommand { get; set; }
        public ICommand ChangePasswordCommand { get; set; }
        public ICommand DeleteCommand { get; set; }
        public AccountViewModel()
        {
            List = new ObservableCollection<Account>(DataProvider.Ins.DB.Accounts);
            AccountRole = new ObservableCollection<AccountRole>(DataProvider.Ins.DB.AccountRoles);

            AddCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(UserName))
                    return false;

                var listAccountName = DataProvider.Ins.DB.Accounts.Where(s => s.UserName == UserName);
                if (listAccountName == null || listAccountName.Count() != 0)
                    return false;

                return true;
            }, (p) =>
            {
                var Account = new Account() {RoleID = SelectedAccountRole.id ,DisplayName = DisplayName, UserName = UserName, PassWord = PassWord, id = SelectedAccountRole.id};
                DataProvider.Ins.DB.Accounts.Add(Account);
                DataProvider.Ins.DB.SaveChanges();

                List.Add(Account);
            }
           );
            ChangePasswordCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(UserName) || SelectedItem == null)
                    return false;

                var listAccountName = DataProvider.Ins.DB.Accounts.Where(s => s.id == SelectedItem.id );
                if (listAccountName == null || listAccountName.Count() != 0)
                    return true;

                return false;
            }, (p) =>
            {
                var Account = DataProvider.Ins.DB.Accounts.Where(s => s.id == SelectedItem.id).SingleOrDefault();
                Account.DisplayName = DisplayName;
                Account.UserName = UserName;
                Account.PassWord = PassWord;
                Account.RoleID = SelectedAccountRole.id;

                DataProvider.Ins.DB.SaveChanges();

                SelectedItem.DisplayName = DisplayName;

            }
           );
            DeleteCommand = new RelayCommand<object>((p) =>
            {
                if (string.IsNullOrEmpty(DisplayName) || SelectedItem == null)
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
