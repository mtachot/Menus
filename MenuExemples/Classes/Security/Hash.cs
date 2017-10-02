using System;
using System.Collections.Generic;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;


namespace MenuExemples.Classes.Security
{
    public class Hash
    {
        public static string HashSHA512(string toHash)
        {
            byte[] textAsByte = Encoding.Default.GetBytes(toHash);
            SHA512 sha512 = SHA512Cng.Create();

            byte[] hash = sha512.ComputeHash(textAsByte);
            return Encoding.Default.GetString(hash);
        }
    }
}