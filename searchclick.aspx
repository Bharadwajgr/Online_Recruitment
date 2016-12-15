<%@ Page Language="C#" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="searchclick.aspx.cs" Inherits="myjob.searchclick" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



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
                    AutoGenerateColumns="False" CellPadding="4" DataSourceID="searchclickds" 
                    ForeColor="#333333" GridLines="None">
                    <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#E3EAEB" />
                    <Columns>
                        <asp:BoundField DataField="company_name" HeaderText="company_name" 
                            SortExpression="company_name" />
                        <asp:BoundField DataField="location" HeaderText="location" 
                            SortExpression="location" />
                        <asp:BoundField DataField="no_of_emp" HeaderText="no_of_emp" 
                            SortExpression="no_of_emp" />
                        <asp:BoundField DataField="url" HeaderText="url" SortExpression="url" />
                        <asp:BoundField DataField="establish_year" HeaderText="establish_year" 
                            SortExpression="establish_year" />
                        <asp:BoundField DataField="experience_required" 
                            HeaderText="experience_required" SortExpression="experience_required" />
                        <asp:BoundField DataField="skills_required" HeaderText="skills_required" 
                            SortExpression="skills_required" />
                        <asp:BoundField DataField="qualification_required" 
                            HeaderText="qualification_required" SortExpression="qualification_required" />
                        <asp:BoundField DataField="min_salary" HeaderText="min_salary" 
                            SortExpression="min_salary" />
                    </Columns>
                    <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#7C6F57" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="searchclickds" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT DISTINCT [company name] AS company_name, [location], [no of emp] AS no_of_emp, [url], [establish year] AS establish_year, [experience required] AS experience_required, [skills required] AS skills_required, [qualification required] AS qualification_required, [min salary] AS min_salary FROM [emp reg],[post resume] where   [post resume].qualification=[emp reg].[qualification required]  ">
                </asp:SqlDataSource>
                
               
               
               
               
               
               
                
                
                
                
                
                
                
            </td>
            <td style="height: 221px">
            </td>
        </tr>
        <tr>
            <td style="height: 27px">
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
