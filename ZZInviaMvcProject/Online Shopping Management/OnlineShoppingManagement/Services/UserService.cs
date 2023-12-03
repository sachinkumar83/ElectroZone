using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using OnlineShoppingManagement.Models;
using OnlineShoppingManagement.Repositories;

namespace OnlineShoppingManagement.Services
{
    public class UserService : IUserRepository
    {
        private TelecomShoppingDBEntities1 _contextDB;
        public UserService() { _contextDB = new TelecomShoppingDBEntities1(); }
        int IUserRepository.AddUser(UserTBL user)// customer
        {
            _contextDB.UserTBLs.Add(user);
            return _contextDB.SaveChanges();
            
        }

        void IUserRepository.DeleteUser(int userId)
        {
            throw new NotImplementedException();
        }

        IEnumerable<UserTBL> IUserRepository.GetAllUsers()
        {
            return _contextDB.UserTBLs.ToList();

            /*throw new NotImplementedException();*/
        }

     

        UserTBL IUserRepository.GetUserById(int userId)
        {
            return _contextDB.UserTBLs.Find(userId);
        }

        UserTBL IUserRepository.GetUserByUserName(string userName)
        {
            return _contextDB.UserTBLs.FirstOrDefault(name=>name.Username == userName);
        }

        void IUserRepository.UpdateUser(UserTBL user)
        {
            throw new NotImplementedException();
        }

        public void ChangePassword(int userId, string newPassword)
        {
            var user = _contextDB.UserTBLs.Find(userId);

            if (user != null)
            {
                user.Password = newPassword;
                _contextDB.SaveChanges();
            }
        }

    }
}