using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Security.Cryptography;
using System.IO;

namespace MenuExemples.Classes.Security
{
    public class AES
    {
        /// <summary>
        /// Encrypts a string using AES 
        /// </summary>
        /// <param name="toEncrypt">The string to encrypt</param>
        /// <returns>The AES encrypted string</returns>
        public byte[] Encrypt(string toEncrypt)
        {
            try
            {
                // Create a new instance of the AES class. This creates a new key and initialization vector (IV)
                using (Aes myAes = Aes.Create())
                {
                    // Encrypt the string to an array of bytes
                    byte[] encrypted = EncryptStringToBytes_AES(toEncrypt, myAes.Key, myAes.IV);

                    // Decrypt the bytes to a string
                    string roundTrip = DecryptStringFromBytes_AES(encrypted, myAes.Key, myAes.IV);

                    return encrypted;
                }
            }
            catch (Exception)
            {
                throw;
            }
        }

        /// <summary>
        /// Encrypts a string using AES algorithm
        /// </summary>
        /// <param name="plainText">The text to encrypt</param>
        /// <param name="Key">The key used for encrypting / decrypting</param>
        /// <param name="IV">Initilization vector (IV)</param>
        /// <returns>The encrypted text</returns>
        private byte[] EncryptStringToBytes_AES(string plainText, byte[] Key, byte[] IV)
        {
            // Check arguments
            if (String.IsNullOrEmpty(plainText))
                throw new ArgumentNullException("plainText");
            if (Key == null || Key.Length <= 0)
                throw new ArgumentNullException("Key");
            if (IV == null || IV.Length <= 0)
                throw new ArgumentNullException("IV");

            byte[] encrypted;

            // Create an AES object with the specified key and IV
            using (Aes aesAlgo = Aes.Create())
            {
                aesAlgo.Key = Key;
                aesAlgo.IV = IV;

                // Create a decryptor to perform the stream transform
                ICryptoTransform encryptor = aesAlgo.CreateEncryptor(aesAlgo.Key, aesAlgo.IV);

                // Create the stream used for encryption
                using (MemoryStream msEncrypt = new MemoryStream())
                {
                    using (CryptoStream csEncrypt = new CryptoStream(msEncrypt, encryptor, CryptoStreamMode.Write))
                    {
                        using (StreamWriter swEncrypt = new StreamWriter(csEncrypt))
                        {
                            // Write all data to the stream
                            swEncrypt.Write(plainText);
                        }
                        encrypted = msEncrypt.ToArray();
                    }
                }
            }
            // Return the encrypted bytesfrom the memory stream
            return encrypted;
        }

        /// <summary>
        /// Decrypts an array of bytes using AES alogrithm
        /// </summary>
        /// <param name="cipherText">The encrypted text (in bytes)</param>
        /// <param name="Key">The key used for encrypting / decrypting</param>
        /// <param name="IV">Initilization vector (IV)</param>
        /// <returns>The decrypted text</returns>
        private string DecryptStringFromBytes_AES(byte[] cipherText, byte[] Key, byte[]IV)
        {
            // Check arguments
            if (cipherText == null || cipherText.Length <= 0)
                throw new ArgumentNullException("cipher text");
            if (Key == null || Key.Length <= 0)
                throw new ArgumentNullException("Key");
            if (IV == null || IV.Length <= 0)
                throw new ArgumentNullException("IV");

            // Declare the string used to hold the decrypted text
            string plainText = null;

            // Create and AES object with the specified key and IV
            using (Aes aesAlgo = Aes.Create())
            {
                aesAlgo.Key = Key;
                aesAlgo.IV = IV;

                // Create a decryptor to perform the stream transform
                ICryptoTransform decryptor = aesAlgo.CreateDecryptor(aesAlgo.Key, aesAlgo.IV);

                // Create the stream used for decryption
                using (MemoryStream msDecrypt = new MemoryStream(cipherText))
                {
                    using (CryptoStream csDecrypt = new CryptoStream(msDecrypt, decryptor, CryptoStreamMode.Read))
                    {
                        using (StreamReader srDecrypt = new StreamReader(csDecrypt))
                        {
                            // Read the decrypted bytes from the decrypting stream, and place them in a string
                            plainText = srDecrypt.ReadToEnd();
                        }
                    }
                }
            }
            return plainText;
        }
    }
}