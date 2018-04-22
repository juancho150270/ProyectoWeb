<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Master.Master" AutoEventWireup="true" CodeBehind="frmDocentes.aspx.cs" Inherits="Proyecto.Web.Views.frmDocentes" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <header>
        <link rel="stylesheet" href="../CSS/Style.css" type="text/css" />
    </header>
    <table style="width: 100%">
            <tr>
                <td style="width: 10%">Código:</td>
                <td style="width: 90%">
                   
                    <asp:TextBox ID="txtCodigo" runat="server"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td colspan="2">
                    <asp:Button ID="btnConsultar" runat="server" Text="Consultar" OnClick="btnConsultar_Click" />
                    <asp:Button ID="btnNuevo" runat="server" Text="Nuevo" OnClick="btnNuevo_Click"  />
                    <asp:ScriptManager ID="ScriptManager1" runat="server">
                    </asp:ScriptManager>
                </td>
            </tr>

            <tr>
                <td colspan="2">

                    <asp:GridView ID="gvwDatos" runat="server" AutoGenerateColumns="False" EmptyDataText="No se encontraron registros" Width="100%" CellPadding="4" GridLines="None" BackColor="White" OnRowCommand="gvwDatos_RowCommand" ForeColor="#333333">
                        <AlternatingRowStyle BackColor="#DCDCDC" />
                        <Columns>
                            <asp:TemplateField HeaderText="Codigo">
                                <ItemTemplate>
                                    <asp:Label ID="lblCodigo" runat="server" Text='<%# Bind("doceId") %>'></asp:Label>
                                </ItemTemplate>
                            </asp:TemplateField>
                            <asp:BoundField DataField="doceNombre" HeaderText="Nombre" />
                            <asp:BoundField DataField="doceApellido" HeaderText="Apellido" />
                            <asp:BoundField DataField="doceDireccion" HeaderText="Direccion" />
                            <asp:BoundField DataField="doceTelefono" HeaderText="Teléfono" />
                            <asp:BoundField DataField="doceCelular" HeaderText="Celular" />
                            <asp:BoundField DataField="doceCorreo" HeaderText="Correo" />
                            <asp:BoundField DataField="doceNivelAcademico" HeaderText="Nivel Academico" />
                            <asp:BoundField DataField="doceArea" HeaderText="Area" />
                            <asp:BoundField DataField="doceIdAsignatura" HeaderText="Id Asignatura" />
                            
                            <asp:TemplateField HeaderText="Modificar">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ibModificar" runat="server" ImageUrl="~/Imagenes/Edit.gif" CommandName="Modificar" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                            <asp:TemplateField HeaderText="Eliminar">
                                <ItemTemplate>
                                    <asp:ImageButton ID="ibEliminar" runat="server" ImageUrl="~/Imagenes/remover.gif" CommandName="Eliminar" CommandArgument="<%# ((GridViewRow) Container).RowIndex %>" />
                                </ItemTemplate>
                                <ItemStyle HorizontalAlign="Center" />
                            </asp:TemplateField>

                        </Columns>
                        <EditRowStyle BackColor="#999999" />
                        <FooterStyle BackColor="#5D7B9D" ForeColor="white" Font-Bold="True" />
                        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#E9E7E2" />
                        <SortedAscendingHeaderStyle BackColor="#506C8C" />
                        <SortedDescendingCellStyle BackColor="#FFFDF8" />
                        <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                    </asp:GridView>
                </td>
            </tr>

            <tr>
                <td colspan="2">
                    <asp:Panel ID="pnlAdicionar" runat="server" Style="display: compact;" CssClass="modalPopup" Height="150px" Width="800px">
                        <table style="width: 100%">
                            <tr>
                                <td class="col">Código:</td>
                                <td class="col">Nombre:</td>
                                <td class="col">Apellido:</td>
                                <td class="col">Direccion:</td>
                                <td class="col">Telefono:</td>
                            </tr>
                            <tr>
                                <td class="col">
                                    <asp:TextBox ID="txtCodigoAdd" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtNombreAdd" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtApellidoAdd" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtDireccionAdd" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtTelefonoAdd" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Celular:</td>
                                <td class="col">Correo:</td>
                                <td class="col">Nivel Academico:</td>
                                <td class="col">Area:</td>
                                <td class="col">Id Asignatura:</td>
                            </tr>
                            <tr>
                                <td class="col">
                                    <asp:TextBox ID="txtCelularAdd" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtCorreoAdd" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtNivelAcademicoAdd" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtAreaAdd" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtIdAsignaturaAdd" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <asp:Button ID="btnOkAdd" runat="server" Text="Guardar" OnClick="btnOkAdd_Clic" CssClass="button" />
                                    <asp:Button ID="btnCancelAdd" runat="server" Text="Cerrar"  CssClass="button" OnClick="btnCancelAdd_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <ajax:modalpopupextender runat="server"
                        Targetcontrolid="btnNuevo"
                        id="mpeAdicionar"
                        backgroundcssclass="modalPopupBG"
                        dropshadow="true"
                        okcontrolid="btnOkAdd"
                        onokscript="__doPostBack('btnOkAdd','')"
                        cancelcontrolid="btnCancelAdd"
                        oncancelscript="__doPostBack('btnCancelAdd','')"
                        popupcontrolid="pnlAdicionar">
                    </ajax:modalpopupextender>


                    <asp:Panel ID="pnlModificar" runat="server" Style="display: compact;" CssClass="modalPopup" Height="150px" Width="800px">
                        <table style="width: 100%">
                            <tr>
                                <td class="col">Código:</td>
                                <td class="col">Nombre:</td>
                                <td class="col">Apellido:</td>
                                <td class="col">Direccion:</td>
                                <td class="col">Telefono:</td>
                            </tr>
                            <tr>
                                <td class="col">
                                    <asp:TextBox ID="txtCodigoMod" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtNombreMod" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtApellidoMod" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtDireccionMod" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtTelefonoMod" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td class="col">Celular:</td>
                                <td class="col">Correo:</td>
                                <td class="col">Nivel Academico:</td>
                                <td class="col">Area:</td>
                                <td class="col">Id Asignatura:</td>
                            </tr>
                            <tr>
                                <td class="col">
                                    <asp:TextBox ID="txtCelularMod" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtCorreoMod" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtNivelAcademicoMod" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtAreaMod" runat="server"></asp:TextBox>
                                </td>
                                <td class="col">
                                    <asp:TextBox ID="txtIdAsignaturaMod" runat="server"></asp:TextBox>
                                </td>
                            </tr>
                            <tr>
                                <td colspan="4">
                                    <asp:Button ID="btnOkMod" runat="server" Text="Guardar"  CssClass="button" OnClick="btnOkMod_Click" />
                                    <asp:Button ID="btnCancelMod" runat="server" Text="Cerrar"  CssClass="button" OnClick="btnCancelMod_Click" />
                                </td>
                            </tr>
                        </table>
                    </asp:Panel>
                    <asp:Label ID="lblOcultoMod" runat="server" Style="display: none" />
                    <ajax:modalpopupextender runat="server"
                        targetcontrolID="lblOcultoMod"
                        id="mpeModificar"
                        backgroundcssclass="modalPopupBG"
                        dropshadow="true"
                        okcontrolid="btnOkMod"
                        onokscript="__doPostBack('btnOkMod','')"
                        cancelcontrolid="btnCancelMod"
                        oncancelscript="__doPostBack('btnCancelMod','')"
                        popupcontrolid="pnlModificar">
                    </ajax:modalpopupextender>
                                        
                </td>

            </tr>
        </table>



</asp:Content>
