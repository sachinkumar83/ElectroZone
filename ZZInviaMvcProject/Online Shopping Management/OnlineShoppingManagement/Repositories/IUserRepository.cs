using OnlineShoppingManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace OnlineShoppingManagement.Repositories
{
    internal interface IUserRepository
    {
        UserTBL GetUserById(int userId);
        IEnumerable<UserTBL> GetAllUsers();// admin
        int AddUser(UserTBL user); // n----customer
        void UpdateUser(UserTBL user);
        void DeleteUser(int userId);
        UserTBL GetUserByUserName(string userName);
        void ChangePassword(int userId, string newPassword);
    }
}
