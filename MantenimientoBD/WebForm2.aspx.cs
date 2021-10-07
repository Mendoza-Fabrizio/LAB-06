using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;


namespace MantenimientoBD
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string connectionString = "Data Source=ALEXANDER\\SQLEXPRESS;" +
        "Initial Catalog=VENTAS;Integrated Security=SSPI";
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnBuscar_Click(object sender, EventArgs e)
        {
            lblResult.Text = "";
            string selectSQL = "SELECT * FROM CLIENTES WHERE codigo=" + txtCodigo.Text;
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(selectSQL, connection);
            SqlDataReader dr;
            try
            {
                connection.Open();
                dr = command.ExecuteReader();
                if (dr.Read())
                {
                    txtNombres.Text = dr[1].ToString();
                    txtDireccion.Text = dr["direccion"].ToString();
                    txtTelefono.Text = dr[3].ToString();
                    txtMail.Text = dr[4].ToString();
                    txtEdad.Text = dr[5].ToString();
                }
                connection.Close();
                dr.Close();
            }
            catch (Exception err)
            {
                lblResult.Text = "Error al registrar el cliente";
                lblResult.Text += err.Message;
            }
        }

        protected void btnLimpliar_Click(object sender,EventArgs e)
        {
            txtCodigo.Text = "";
            txtNombres.Text = "";
            txtDireccion.Text = "";
            txtTelefono.Text = "";
            txtMail.Text = "";
            txtEdad.Text = "";
            GridView1.DataSource = null;
            GridView1.DataBind();
        }

        protected void btnMostrar_Click(object sender, EventArgs e)
        {
            string selectSQL = "SELECT * FROM CLIENTES";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(selectSQL, connection);
            SqlDataReader dr;
            try
            {
                connection.Open();
                dr = command.ExecuteReader();
                GridView1.DataSource = dr;
                GridView1.DataBind();
                connection.Close();
            }catch(Exception err)
            {
                lblResult.Text = "Error al registrar el cliente";
                lblResult.Text += err.Message;
            }
        }
    }
}