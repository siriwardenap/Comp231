using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CulinaryDelight
{
    public class Link
    {
        // Builds an absolute URL
        private static string BuildAbsolute(string relativeUri)
        {
            // get current uri
            Uri uri = HttpContext.Current.Request.Url;
            // build absolute path
            string app = HttpContext.Current.Request.ApplicationPath;
            if (!app.EndsWith("/")) app += "/";
            relativeUri = relativeUri.TrimStart('/');
            // return the absolute path
            return HttpUtility.UrlPathEncode(
              String.Format("http://{0}:{1}{2}{3}",
              uri.Host, uri.Port, app, relativeUri));
        }

        public static string ToPayPalCheckout(string orderName, decimal orderAmount)
        {
            return HttpUtility.UrlPathEncode(
                String.Format("{0}/business={1}&item_name={2}&amount={3:0.00}&currency={4}&return={5}&cancel_return={6}",
                    CulinaryDelightConfiguration.PaypalUrl,
                    CulinaryDelightConfiguration.PaypalEmail,
                    orderName,
                    orderAmount,
                    CulinaryDelightConfiguration.PaypalCurrency,
                    CulinaryDelightConfiguration.PaypalReturnUrl,
                    CulinaryDelightConfiguration.PaypalCancelUrl));
        }

    }
}