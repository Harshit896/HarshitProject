using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;


namespace Project
{
    public partial class JoinUs : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (TxtUserName.Text == "" || TxtPassword.Text == "")
                lblInvailedUser.Text = "Please Fill Mandatory Fields";
            else
            {
                SqlConnection sqlCon = new SqlConnection("Integrated Security=yes;database=harshit;data source=DESKTOP-CJCCHMF");
                sqlCon.Open();
                SqlCommand sqlCmd = new SqlCommand("UserAddOrEdit", sqlCon);
                sqlCmd.CommandType = CommandType.StoredProcedure;
                sqlCmd.Parameters.AddWithValue("@UserId", Convert.ToInt32(hkUserId.Value == "" ? "0" : hkUserId.Value));
                sqlCmd.Parameters.AddWithValue("@FirstName", TxtFirstName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@LastName", TxtLastName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Gender", ddlGender.SelectedValue);
                sqlCmd.Parameters.AddWithValue("@Contact", TxtContact.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@RecentQualification", TxtRecentQualification.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@UserName", TxtUserName.Text.Trim());
                sqlCmd.Parameters.AddWithValue("@Password", TxtPassword.Text.Trim());
                sqlCmd.ExecuteNonQuery();
                Clear();
                lblSubmittedSuccesfully.Text = "Submitted Successfully";
            }
        }
        void Clear()
        {
            TxtFirstName.Text = TxtLastName.Text = TxtRecentQualification.Text = TxtUserName.Text = TxtPassword.Text = "";
            hkUserId.Value = "";
            lblSubmittedSuccesfully.Text = lblInvailedUser.Text = "";

        }
    }
}