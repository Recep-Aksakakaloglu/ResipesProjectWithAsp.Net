using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
public partial class iletisim : System.Web.UI.Page
{
    sqlsinifi bgl = new sqlsinifi();
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlCommand komut = new SqlCommand("insert into Tbl_Mesajlar (mesajgonderen, mesajbaslik, mesajmail, mesajicerik) values (@p1, @p2, @p3, @p4)",bgl.baglanti());
        komut.Parameters.AddWithValue("@p1", TxtGonderen.Text);
        komut.Parameters.AddWithValue("@p2", TxtBaslik.Text);
        komut.Parameters.AddWithValue("@p3", TxtMail.Text);
        komut.Parameters.AddWithValue("@p4", TxtMesaj.Text);
        komut.ExecuteNonQuery();
        TxtGonderen.Text = "";
        TxtBaslik.Text = "";
        TxtMail.Text = "";
        TxtMesaj.Text = "";
        bgl.baglanti().Close();
        Response.Write("Mesajınız Gönderilmiştir!");
    }
}