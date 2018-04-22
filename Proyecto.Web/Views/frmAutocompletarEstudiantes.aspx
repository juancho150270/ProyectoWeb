<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master.Master" AutoEventWireup="true" CodeBehind="frmAutocompletarEstudiantes.aspx.cs" Inherits="Proyecto.Web.Views.frmAutocompletarEstudiantes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <table style="width:100%">
        <tr>
            <td style="width:50%">Codigo</td>
            <td>
                <asp:TextBox ID="txtAutocompletarEstudiante" runat="server"></asp:TextBox>
                <asp:ScriptManager ID="ScriptManager1" runat="server">
                </asp:ScriptManager>
                <ajax:AutoCompleteExtender ID="aceCodigo" runat="server"
                    ServicePath="~/Servicios/wsAutocompletar.asmx"
                    ServiceMethod="dsConsultaEstudiante"
                    MinimumPrefixLength="2"
                    CompletionInterval="100"
                    EnableCaching="false"
                    CompletionSetCount="10"
                    firstRowSelected="false"
                    UseContextkey="true"
                    TargetControlID="txtAutocompletarEstudiante"
                    ></ajax:AutoCompleteExtender>
            </td>
        </tr>

    </table>
</asp:Content>
