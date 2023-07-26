﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace project2
{
    public partial class registration : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            int len = args.Value.Length;
            if(len == 10)
                args.IsValid = true;
            else
                args.IsValid = false;


        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
            if(Page.IsValid) { Response.Redirect("login.aspx"); }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtUsername.Text = "";
            txtPassword.Text = "";
        }
    }
}