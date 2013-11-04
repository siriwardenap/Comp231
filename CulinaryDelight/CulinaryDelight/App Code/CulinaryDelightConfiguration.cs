using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;


namespace CulinaryDelight
{
    /// <summary>
    /// Repository for CulinaryDelight configuration settings
    /// </summary>
    public static class CulinaryDelightConfiguration
    {
        // Caches the connection string
        private static string dbConnectionString;
        // Caches the data provider name
        private static string dbProviderName;

        static CulinaryDelightConfiguration()
        {
            dbConnectionString = ConfigurationManager.ConnectionStrings
                ["CulinaryDelightConnection"].ConnectionString;
            dbProviderName = ConfigurationManager.ConnectionStrings
                ["CulinaryDelightConnection"].ProviderName;
        }

        // Returns the connection string for the BalloonShop database
        public static string DbConnectionString
        {
            get
            {
                return dbConnectionString;
            }
        }

        // Returns the data provider name
        public static string DbProviderName
        {
            get
            {
                return dbProviderName;
            }
        }

        // Returns the address of the mail server
        public static string MailServer
        {
            get
            {
                return ConfigurationManager.AppSettings["MailServer"];
            }
        }

        // Returns the email username
        public static string MailUsername
        {
            get
            {
                return ConfigurationManager.AppSettings["MailUsername"];
            }
        }

        // Returns the email password
        public static string MailPassword
        {
            get
            {
                return ConfigurationManager.AppSettings["MailPassword"];
            }
        }

        // Returns the email password
        public static string MailFrom
        {
            get
            {
                return ConfigurationManager.AppSettings["MailFrom"];
            }
        }

        // Send error log emails?
        public static bool EnableErrorLogEmail
        {
            get
            {
                 return bool.Parse(ConfigurationManager.AppSettings
                ["EnableErrorLogEmail"]);
            }
        }

        // Returns the email address where to send error reports
        public static string ErrorLogEmail
        {
            get
            {
                return ConfigurationManager.AppSettings["ErrorLogEmail"];
            }
        }
    }
}