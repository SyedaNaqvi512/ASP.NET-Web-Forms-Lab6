<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GridViewInsertUpdateDelete.aspx.cs" Inherits="Zivelle___Online_Jewelry_Store.GridViewInsertUpdateDelete" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>GridView CRUD Operations</title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            color: #FF0066;
            text-align: center;
        }
        .auto-style3 {
            width: 132px;
            color: #FF0066;
        }
        .auto-style4 {
            width: 132px;
            height: 31px;
        }
        .auto-style5 {
            height: 31px;
        }
        .auto-style7 {
            width: 132px;
            height: 17px;
        }
        .auto-style8 {
            height: 17px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <table class="auto-style1">
                <tr>
                    <td colspan="4">
                        <h1 class="auto-style2"><strong>GridView Insert Update and Delete</strong></h1>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Name</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox1" runat="server" style="color: #CC0066" Width="314px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Address</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox2" runat="server" style="color: #CC0066" Width="315px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">MobileNo</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox3" runat="server" style="color: #CC0066" Width="315px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">Email</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox4" runat="server" style="color: #CC0066" Width="312px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">RollNo</td>
                    <td colspan="2">
                        <asp:TextBox ID="TextBox5" runat="server" style="color: #CC0066" Width="312px"></asp:TextBox>
                    </td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td colspan="2">&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Save" Width="202px" Height="51px" style="color: #660033" />
                    </td>
                    <td>
                        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Cancel" Width="223px" Height="50px" style="color: #CC0000" />
                    </td>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7">
                        <asp:Label ID="Label1" runat="server" style="color: #FF3399"></asp:Label>
                    </td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8">&nbsp;</td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style5" colspan="2">&nbsp;</td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3">&nbsp;</td>
                    <td colspan="2">
                        <br />
                        <br />
                        <asp:GridView ID="GridView1" runat="server" BackColor="White" BorderColor="#CC9966" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataSourceID="SqlDataSource1" DataKeyNames="RollNo" Width="773px" AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False">
                            <Columns>
                                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
                                
                                <asp:TemplateField HeaderText="S.No">
                                    <ItemTemplate>
                                        <%# Container.DataItemIndex + 1 %>
                                    </ItemTemplate>
                                </asp:TemplateField>

                                <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                                <asp:BoundField DataField="MobileNo" HeaderText="MobileNo" SortExpression="MobileNo" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="RollNo" HeaderText="RollNo" ReadOnly="True" SortExpression="RollNo" />
                            </Columns>
                            <FooterStyle BackColor="#FFFFCC" ForeColor="#330099" />
                            <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="#FFFFCC" />
                            <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                            <RowStyle BackColor="White" ForeColor="#330099" />
                            <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="#663399" />
                            <SortedAscendingCellStyle BackColor="#FEFCEB" />
                            <SortedAscendingHeaderStyle BackColor="#AF0101" />
                            <SortedDescendingCellStyle BackColor="#F6F0C0" />
                            <SortedDescendingHeaderStyle BackColor="#7E0000" />
                        </asp:GridView>

                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                            ConnectionString="<%$ ConnectionStrings:ZivelleDBConnectionString %>" 
                            SelectCommand="SELECT [Name], [Address], [MobileNo], [Email], [RollNo] FROM [MyTable]" 
                            InsertCommand="INSERT INTO [MyTable] ([Name], [Address], [MobileNo], [Email], [RollNo]) VALUES (@Name, @Address, @MobileNo, @Email, @RollNo)"
                            UpdateCommand="UPDATE [MyTable] SET [Name]=@Name, [Address]=@Address, [MobileNo]=@MobileNo, [Email]=@Email WHERE [RollNo]=@RollNo" 
                            DeleteCommand="DELETE FROM [MyTable] WHERE [RollNo]=@RollNo">
                            
                            <InsertParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="MobileNo" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="RollNo" Type="String" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="Name" Type="String" />
                                <asp:Parameter Name="Address" Type="String" />
                                <asp:Parameter Name="MobileNo" Type="String" />
                                <asp:Parameter Name="Email" Type="String" />
                                <asp:Parameter Name="RollNo" Type="String" />
                            </UpdateParameters>
                            <DeleteParameters>
                                <asp:Parameter Name="RollNo" Type="String" />
                            </DeleteParameters>
                        </asp:SqlDataSource>
                        <br />
                        <br />
                        <br />
                        <br />
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>

        </div>
    </form>
</body>
</html>
