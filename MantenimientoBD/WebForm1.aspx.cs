using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace MantenimientoBD
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        string connectionString = "Data Source=ALEXANDER\\SQLEXPRESS;" +
            "Initial Catalog=VENTAS;Integrated Security=SSPI";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnGrabar_Click(object sender, EventArgs e)
        {
            if (!this.IsValid) return;
            string insertSQL = "INSERT INTO clientes VALUES(" + txtCodigo.Text + ", '"
                + txtNombres.Text + "' , '" + txtDireccion.Text + "' , '" + txtTelefono.Text + "', '" +
                txtMail.Text + "', " + txtEdad.Text + ")";
            SqlConnection connection = new SqlConnection(connectionString);
            SqlCommand command = new SqlCommand(insertSQL, connection);
            try
            {
                connection.Open();
                command.ExecuteNonQuery();

                lblResult.Text = "Cliente agregado exitosamente";
                connection.Close();

                txtCodigo.Text = "";
                txtNombres.Text = "";
                txtDireccion.Text = "";
                txtTelefono.Text = "";
                txtMail.Text = "";
                txtEdad.Text = "";
            }
            catch (Exception err)
            {
                lblResult.Text = "Error al registrar el cliente";
                lblResult.Text += err.Message;
            }

        }
    }
}