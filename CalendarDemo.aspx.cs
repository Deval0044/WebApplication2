using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication2
{
    public partial class CalendarDemo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Displays current system day and date on first load
                lblCurrentDay.Text = DateTime.Now.ToString("D"); // e.g. "Tuesday, August 4, 2026"
            }
        }

        protected void Calendar1_SelectionChanged(object sender, EventArgs e)
        {
            // Displays the date user clicked on the calendar
            lblSelectedDate.Text = Calendar1.SelectedDate.ToString("D");
        }
    }
}