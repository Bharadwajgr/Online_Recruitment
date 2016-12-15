<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="companyinfo.aspx.cs" Inherits="myjob.companyinfo" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<p>
        <asp:Image ID="Image1" runat="server" />
        <table bgcolor="#3E9EFF" style="width: 100%; background-color: #FFFFFF">
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td bgcolor="#99CCFF" 
                    style="font-size: large; font-weight: bolder; color: #FFFFFF">
                    <br />
                    Processing Of Company Information<br />
                    <br />
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td style="height: 72px">
                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                        CellPadding="4" ForeColor="#333333" GridLines="None" Width="1114px" 
                        DataSourceID="SqlDataSource1">
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <RowStyle BackColor="#EFF3FB" />
                        <Columns>
                            <asp:BoundField HeaderText="user name" DataField="user name" 
                                SortExpression="user name" />
                            <asp:BoundField HeaderText="password" DataField="password" 
                                SortExpression="password" />
                            <asp:BoundField HeaderText="company name" DataField="company name" 
                                SortExpression="company name" />
                            <asp:BoundField HeaderText="location" DataField="location" 
                                SortExpression="location" />
                            <asp:BoundField HeaderText="no of emp" DataField="no of emp" 
                                SortExpression="no of emp" />
                            <asp:BoundField HeaderText="url" DataField="url" SortExpression="url" />
                            <asp:BoundField HeaderText="company type" DataField="company type" 
                                SortExpression="company type" />
                            <asp:BoundField HeaderText="establish year" DataField="establish year" 
                                SortExpression="establish year" />
                            <asp:BoundField HeaderText="job id" DataField="job id" 
                                SortExpression="job id" />
                            <asp:BoundField HeaderText="job title" DataField="job title" 
                                SortExpression="job title" />
                            <asp:BoundField HeaderText="experience required" 
                                DataField="experience required" SortExpression="experience required" />
                            <asp:BoundField HeaderText="min salary" DataField="min salary" 
                                SortExpression="min salary" />
                            <asp:BoundField HeaderText="skill" DataField="skill" SortExpression="skill" />
                        </Columns>
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <EditRowStyle BackColor="#2461BF" />
                        <AlternatingRowStyle BackColor="White" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT * FROM [emp reg]"></asp:SqlDataSource>
                </td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
    </p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>
    <p>
        &nbsp;</p>















</asp:Content>
