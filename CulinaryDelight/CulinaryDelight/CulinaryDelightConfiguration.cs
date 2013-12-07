using System.Configuration;

namespace CulinaryDelight
{
    public static class CulinaryDelightConfiguration
    {
        // Caches the connection string
        private static string dbConnectionString;
        // Caches the data provider name 
        private static string dbProviderName;
        private readonly static string siteName;

        static CulinaryDelightConfiguration()
        {
            dbConnectionString = ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString;
            dbProviderName = ConfigurationManager.ConnectionStrings["DefaultConnection"].ProviderName;
            siteName = ConfigurationManager.AppSettings["SiteName"];
        }



        public static string SiteName
        {
            get
            {
                return siteName;
            }
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

        // The PayPal shopping cart URL
        public static string PaypalUrl
        {
            get
            {
                return ConfigurationManager.AppSettings["PaypalUrl"];
            }
        }

        // The PayPal e-mail account
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