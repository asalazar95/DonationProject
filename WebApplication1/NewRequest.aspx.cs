using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class NewRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed1_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void AcceptButton_Click(object sender, EventArgs e)
        {
            SqlDataSource4.Insert();
        }

        protected void ClearButton_Click(object sender, EventArgs e)
        {
            Amount.Text = String.Empty;
            Address1.Text = String.Empty;
            Address2.Text = String.Empty;
            City.Text = String.Empty;
            ZipCode.Text = String.Empty;
            Notes.Text = String.Empty;
            Calendar1.SelectedDate = Calendar1.TodaysDate;
            Optional.Checked = false;
            ResourceList.ClearSelection();
            Organization.ClearSelection();
            State.ClearSelection();

        }
    }

}