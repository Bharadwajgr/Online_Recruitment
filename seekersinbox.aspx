<%@ Page Language="C#" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="seekersinbox.aspx.cs" Inherits="myjob.seekersinbox" Title="Untitled Page" %>
<asp:Content ID="Contents" ContentPlaceHolderID="ContentPlaceHolder1" 
    runat="server">
    <%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>
<script runat="server">
   protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {
        if (GridView1.Rows.Count == 0)
        {
            Label1.Visible = true;
        }
    }
</script>
    <table cellspacing="0" style="width: 100%; height: 306px">
        <tr>
            <td style="height: 46px" valign="top">
                &nbsp;</td>
            <td style="height: 46px">
            </td>
        </tr>
        <tr>
            <td style="height: 221px" valign="top">
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataKeyNames="email_id" 
                    DataSourceID="seekerinbox" ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#5D7B9D" ForeColor="White" Font-Bold="True" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <Columns>
              
                   
                        <asp:BoundField DataField="user_name" HeaderText="user_name" ReadOnly="True" 
                            SortExpression="user_name" />
                        
                        <asp:BoundField DataField="email_id" HeaderText="email_id" 
                            SortExpression="email_id" />
                        <asp:BoundField DataField="contact_no" HeaderText="contact_no" 
                            SortExpression="contact_no" />
                        <asp:BoundField DataField="date_of_birth" HeaderText="date_of_birth" 
                            SortExpression="date_of_birth" />
                        <asp:BoundField DataField="exp" HeaderText="experience" SortExpression="exp" />
                        <asp:BoundField DataField="skill" HeaderText="skills" SortExpression="skill" />
                        <asp:BoundField DataField="qualification" HeaderText="qualification" 
                            SortExpression="qualification" />
                        <asp:BoundField DataField="fun_area" HeaderText="Functional area" 
                            SortExpression="fun_area" />
                    </Columns>
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#999999" />
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                </asp:GridView>
                <asp:SqlDataSource ID="seekerinbox" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                   SelectCommand="SELECT  [user name] AS user_name ,[email id] AS email_id, [contact no] AS contact_no, [date of birth] AS date_of_birth, [exp], [skill], [qualification], [fun_area] FROM [emp reg],[post resume] where [post resume].qualification=[emp reg].[qualification required] and [post resume].exp>=[emp reg].[experience required] and [post resume].fun_area=[emp reg].[company type] and [post resume].skill=[emp reg].[skills required]">
 
   
 
                      </asp:SqlDataSource>
           

            </td>
            <td style="height: 221px">
            </td>
        </tr>
        <tr>
            <td style="height: 27px">
                <asp:Label ID="Label1" runat="server" EnableTheming="True" Text="No Records" 
                    Visible="False"></asp:Label>
                </td>
            <td style="height: 27px">
                </td>
        </tr>
        <tr>
            <td>
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>
</asp:Content>
