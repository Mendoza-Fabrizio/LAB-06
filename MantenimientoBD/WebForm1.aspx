<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="MantenimientoBD.WebForm1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="header">
            <h1>MANTENIMIENTO CLIENTES</h1>
        </div>
        <div class="form">
            <asp:Label ID="Label6" runat="server" Text="Codigo"></asp:Label>
            <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Se debe colocar el codigo numerico del cliente" ControlToValidate="txtCodigo" Display="None"></asp:RequiredFieldValidator>

            <asp:Label ID="Label2" runat="server" Text="Nombres"></asp:Label>
            <asp:TextBox ID="txtNombres" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Se debe colocar el nombre" ControlToValidate="txtNombres" Display="None"></asp:RequiredFieldValidator>

            <asp:Label ID="Label4" runat="server" Text="Direccion"></asp:Label>
            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Se debe colocar la direccion" ControlToValidate="txtDireccion" Display="None"></asp:RequiredFieldValidator>

            <asp:Label ID="Label7" runat="server" Text="Telefono"></asp:Label>
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Se debe de colocar el telefono" ControlToValidate="txtTelefono" Display="None"></asp:RequiredFieldValidator>

            <asp:Label ID="Label9" runat="server" Text="E-mail"></asp:Label>
            <asp:TextBox ID="txtMail" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Debe ingresar un correo valido" ControlToValidate="txtMail" ValidationExpression="\S+@\S+\.\S+" ViewStateMode="Enabled" Display="None"></asp:RegularExpressionValidator>

            <asp:Label ID="Label11" runat="server" Text="Edad"></asp:Label>
            <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ErrorMessage="Debe ingresar una edad entre 18 y 100" MaximumValue="100" MinimumValue="18" Type="Integer" ControlToValidate="txtEdad" Display="None"></asp:RangeValidator>

            <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>

            <asp:Button ID="btnGrabar" runat="server" Text="Grabar" OnClick="btnGrabar_Click" />

            <asp:ValidationSummary class="error" ID="ValidationSummary1" runat="server" />
        </div>
    </div>

</asp:Content>
