using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SecurityLib
{
    public class SecureCardException:Exception
    {
        public SecureCardException(string message)
            : base(message)
        {             
        }
    }
}