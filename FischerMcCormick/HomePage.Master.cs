using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FischerMcCormick
{
    public partial class HomePage : System.Web.UI.MasterPage
    {

       
        protected void Page_Load(object sender, EventArgs e)
        {
            //Top left logo URL
            TRPLogo.ImageUrl = "Images/TRPlogo.jpeg";
        }
        //Below are all the navigation buttons
        protected void homeNavBtn(object sender, EventArgs e)
        {
            Server.Transfer("HomePage.aspx");
        }

        protected void reservationsNavBtn(Object sender, EventArgs e)
        {
            Server.Transfer("Reservations.aspx");
        }

        protected void pricingNavBtn(Object sender, EventArgs e)
        {
            Server.Transfer("Pricing.aspx");
        }

        protected void eventNavBtn(Object sender, EventArgs e)
        {
            Server.Transfer("Events.aspx");
        }

        protected void staffNavBtn(Object sender, EventArgs e)
        {
            Server.Transfer("Staff.aspx");
        }

        protected void galleryNavBtn(Object sender, EventArgs e)
        {
            Server.Transfer("Gallery.aspx");
        }
    }


}