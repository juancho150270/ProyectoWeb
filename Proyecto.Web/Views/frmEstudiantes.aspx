<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master.Master" AutoEventWireup="true" CodeBehind="frmEstudiantes.aspx.cs" Inherits="Proyecto.Web.Views.frmEstudiantes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">

        <div class="card-header text-primary" ><h1>Formulario de Estudiante</h1></div>
        
        <div class="form-row">
            <div class="col-md-4">
                <asp:Label ID="lblCodigoEstudiante" runat="server" Text="Codigo Estudiante"></asp:Label>
                <asp:TextBox ID="txtId" TextMode="Number" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-6">
                <asp:Label ID="lblPrimerNombre" runat="server" Text="Primer Nombre"></asp:Label>
                <!--<input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="Enter email">-->
                <asp:TextBox ID="txtPrimerNombre" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lblSegundoNombre" runat="server" Text="Segundo Nombre"></asp:Label>
                <!--<input class="form-control" id="exampleInputEmail1" type="email" aria-describedby="emailHelp" placeholder="Enter email">-->
                <asp:TextBox ID="txtSegundoNombre" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-6">
                <asp:Label ID="lblPrimerApellido" runat="server" Text="Primer Apellido"></asp:Label>
                <asp:TextBox ID="txtPrimerApellido" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lblSegundoApellido" runat="server" Text="Segundo Apellido"></asp:Label>
                <asp:TextBox ID="txtSegundoApellido" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-12">
                <asp:Label ID="lblDireccion" runat="server" Text="Dirección"></asp:Label>
                <asp:TextBox ID="txtDireccion" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-4">
                <asp:Label ID="lblTelefono" runat="server" Text="Teléfono"></asp:Label>
                <asp:TextBox ID="txtTelefono" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
            <div class="col-md-4">
                <asp:Label ID="lblGrupo" runat="server" Text="Grupo"></asp:Label>
                <asp:TextBox ID="txtGrupo" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <div class="col-md-4">
                <asp:Label ID="lblEdad" runat="server" Text="Edad"></asp:Label>
                <asp:TextBox ID="txtEdad" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        </div>

        <div class="card-header" "text-primary"><h2>Datos Acudiente</h2></div>

        <div class="form-row">
            <div class="col-md-6">
                <asp:Label ID="lblAcudientePrimerNombre" runat="server" Text="Primer Nombre"></asp:Label>
                <asp:TextBox ID="txtAcudientePrimerNombre" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lblAcudienteSegundoNombre" runat="server" Text="Segundo Nombre"></asp:Label>
                <asp:TextBox ID="txtAcudienteSegundoNombre" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-6">
                <asp:Label ID="lblAcudientePrimerApellido" runat="server" Text="Primer Apellido"></asp:Label>
                <asp:TextBox ID="txtAcudientePrimerApellido" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <div class="col-md-6">
                <asp:Label ID="lblAcudienteSegundoApellido" runat="server" Text="Segundo Apellido"></asp:Label>
                <asp:TextBox ID="txtAcudienteSegundoApellido" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-4">
                <asp:Label ID="lblAcudienteParentesco" runat="server" Text="Parentesco"></asp:Label>
                <asp:TextBox ID="txtAcudienteParentesco" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>

            <div class="col-md-8">
                <asp:Label ID="lblAcudienteDireccion" runat="server" Text="Dirección"></asp:Label>
                <asp:TextBox ID="txtAcudienteDireccion" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-12">
                <asp:Label ID="lblAcudienteCorreo" runat="server" Text="Correo"></asp:Label>
                <asp:TextBox ID="txtAcudienteCorreo" runat="server" CssClass="form-control" ></asp:TextBox>
            </div>
        </div>

        <div class="form-row">
            <div class="col-md-3">
                <asp:Button ID="btnInsertar" runat="server" Text="Insertar" CssClass="btn btn-primary btn-block" OnClick="btnInsertar_Click" />
            </div>
             <div class="col-md-3">
                <asp:Button ID="btnActualizar" runat="server" Text="Actualizar" CssClass="btn btn-primary btn-block" OnClick="btnActualizar_Click" />
            </div>
        </div>




        <%--<div class="col-12">

            <asp:TextBox ID="txtPrimerNombre"  runat="server"></asp:TextBox>
            <asp:TextBox ID="txtSegundoNombre" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtPrimerApellido" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtSegundoApellido" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtDireccion" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtTelefono" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtGrupo" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtEdad" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtAcudientePrimerNombre" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtAcudienteSegundoNombre" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtAcudientePrimerApellido" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtAcudienteSegunApelldio" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtAcudienteParentesco" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtAcudienteDireccion" runat="server"></asp:TextBox>
            <asp:TextBox ID="txtAcudienteCorreo" runat="server"></asp:TextBox>




            <asp:Button ID="btnInsertar" runat="server" Text="Insertar" OnClick="btnInsertar_Click" />
        </div>--%>
    </div>
</asp:Content>
