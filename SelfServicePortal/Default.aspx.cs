using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Data;
using System.Configuration;

namespace SelfServicePortal
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            using (MySqlConnection con = new MySqlConnection("Server=212.97.132.77;Database=hb49533_hangfire;Uid=hb49533_hangbot;Pwd=PBA4Jan18;Allow User Variables=true;"))
            {
                using (MySqlCommand cmd = new MySqlCommand("SELECT * FROM Service"))
                {
                    using (MySqlDataAdapter sda = new MySqlDataAdapter())
                    {
                        cmd.Connection = con;
                        sda.SelectCommand = cmd;
                        using (DataTable dt = new DataTable())
                        {
                            sda.Fill(dt);

                            AvalibleServices_List.DataSource = dt;
                            AvalibleServices_List.DataBind();
                        }
                    }
                }
            }
        }
    }
}