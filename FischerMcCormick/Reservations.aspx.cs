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
        private string selectedRoom;
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
               
                    ddlRoomInformation.DataBind();
                    selectedRoom = this.GetSelectedRoom();
                
            }
        }
        private string GetSelectedRoom()
        {
            DataView RoomType = (DataView)
                sqlRoomInformation.Select(DataSourceSelectArguments.Empty);
            RoomType.RowFilter = string.Format("RoomID = '{0}'",
                ddlRoomInformation.SelectedValue);
            DataRowView row = RoomType[0];

            string s = ddlRoomInformation.SelectedValue;
            return s;

        }

        protected void btnAddToCart_Click(object sender, EventArgs e)
        {
            lblShoppingCart.Text = selectedRoom;
        }
    }
}