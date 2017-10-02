using MenuExemples.Classes.Security;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MenuExemples.Pages
{
    public partial class Login : System.Web.UI.Page
    {
        #region Events



        #endregion

        #region Page life cycle

        protected override void OnInit(EventArgs e)
        {
            base.OnInit(e);

            // Binding des événements
            btnLogin.Click += btnLogin_Click;
        }

        private void btnLogin_Click(object sender, EventArgs e)
        {
            lblEncryptedLogin.Text = Hash.HashSHA512(txtLogin.Text);
            lblEncryptedPassword.Text = Hash.HashSHA512(txtPassword.Text);
        }

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        #endregion

        #region Help methods

        #endregion
    }
}