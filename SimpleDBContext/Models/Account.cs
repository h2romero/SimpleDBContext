using System;
using System.Collections.Generic;
using System.Data.Entity;
using System.Linq;
using System.Web;

namespace SimpleDBContext.Models
{
    public class Account
    {
        public int Id { get; set; }
        public DateTime Since { get; set; }
        public string Name { get; set; }
        public string Location { get; set; }
        public string Web { get; set; }
        public string Bio { get; set; }
    }

    public class TwitterDbContext : DbContext
    {
        public DbSet<Account> Accounts { get; set; }
    }

    public class AccountRepository
    {
        public List<Account> GetTwitterAccounts()
        {
            using (var dbContext = new TwitterDbContext())
            {
                return (from a in dbContext.Accounts select a).ToList();
            }
        }
    }
}