using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace FischerMcCormick
{
    public partial class Reservations : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) ddlRoomInformation.DataBind();
        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            string CartItem = ddlRoomInformation.ToString();
        }
    }
}