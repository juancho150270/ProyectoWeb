<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master.Master" AutoEventWireup="true" CodeBehind="frmListarEstudiantes.aspx.cs" Inherits="Proyecto.Web.Views.frmListarEstudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <asp:GridView ID="gridEstudiantes" runat="server" CssClass="table table-responsive table-bordered table-hover"></asp:GridView>


</asp:Content>
