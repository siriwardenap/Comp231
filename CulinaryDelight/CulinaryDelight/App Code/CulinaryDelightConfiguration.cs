﻿using System;
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
        // Store the number of products per page
        private readonly static int productsPerPage;
        // Store the product description length for product lists
        private readonly static int productDescriptionLength;
        // Store the name of your shop
        private readonly static string siteName;

        static CulinaryDelightConfiguration()
        {
            dbConnectionString = ConfigurationManager.ConnectionStrings
                ["CulinaryDelightConnection"].ConnectionString;
            dbProviderName = ConfigurationManager.ConnectionStrings
                ["CulinaryDelightConnection"].ProviderName;

            productsPerPage = System.Int32.Parse(ConfigurationManager.AppSettings["ProductDescriptionLength"]);

            siteName = ConfigurationManager.AppSettings["SiteName"];
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

        // Returns the maximum number of products to be displayed on a page
        public static int ProductsPerPage
        {
            get
            {
                return productsPerPage;
            }
        }

        // Returns the length of product descriptions in products lists
        public static int ProductDescriptionLength
        {
            get
            {
                return productDescriptionLength;
            }
        }

        // Returns the length of product descriptions in products lists
        public static string SiteName
        {
            get
            {
                return siteName;
            }
        }
        // The PayPal shopping cart URL
        public static string PaypalUrl
        {
            get
            {
                return ConfigurationManager.AppSettings["PaypalUrl"];
            }
        }
        // The PayPal email account
        public static string PaypalEmail
        {
            get
            {
                return ConfigurationManager.AppSettings["PaypalEmail"];
            }
        }
        // Currency code (such as USD)
        public static string PaypalCurrency
        {
            get
            {
                return ConfigurationManager.AppSettings["PaypalCurrency"];
            }
        }
        // Return URL after a successful transaction
        public static string PaypalReturnUrl
        {
            get
            {
                return ConfigurationManager.AppSettings["PaypalReturnUrl"];
            }
        }
        // Return URL after a canceled transaction
        public static string PaypalCancelUrl
        {
            get
            {
                return ConfigurationManager.AppSettings["PaypalCancelUrl"];
            }
        }
    }
}