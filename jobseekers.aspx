<%@ Page Language="C#" MasterPageFile="~/Master3.Master" AutoEventWireup="true" CodeBehind="companydetails.aspx.cs" Inherits="myjob.job_detail" Title="Untitled Page" %>



 

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    <table cellpadding="0" cellspacing="0" 
    style="width: 100%; height: 537px; vertical-align:top">
        <tr>
            <td style="width: 521px; height: 4px;">
                </td>
            <td rowspan="10" valign="top">
          
                <p dir="ltr" style="height: 58px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/example7.jpg" 
                        BackColor="#0000CC" BorderColor="#660033" Height="144px" Width="176px"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;</p>
                
                &nbsp;
                                        <br />
                                        <br />
&nbsp;<br />
                                        </td>
        </tr>
        <tr>
            <td style="padding: 1px 4px; width: 521px; height: 37px;" bgcolor="#000066">
                J<span style="font-family: 'MS Reference Sans Serif'; font-weight: bold; font-size: x-large; color: #00FF00;" 
                    font-size>Job Seekers&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; </span></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br></td>
        </tr>

        <tr>
            <td style="padding: 1px 4px; color: #00CC00;" valign="top" class="style6">
                <asp:SqlDataSource ID="coinfo" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    
                    
                    SelectCommand="SELECT [Name] AS Username, [Contact No] As contact no FROM [post resume]" ;
                   
                    <DeleteParameters>
                        <asp:Parameter Name="username" Type="String" />
                    </DeleteParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="company_name" Type="String" />
                        <asp:Parameter Name="location" Type="String" />
                        <asp:Parameter Name="no_of_emp" Type="Int32" />
                        <asp:Parameter Name="url" Type="String" />
                        <asp:Parameter Name="company_type" Type="String" />
                        <asp:Parameter Name="experience_required" Type="String" />
                        <asp:Parameter Name="skills_required" Type="String" />
                        <asp:Parameter Name="min_salary" Type="Decimal" />
                        <asp:Parameter Name="qualification_required" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                    </UpdateParameters>
                    <InsertParameters>
                        <asp:Parameter Name="company_name" Type="String" />
                        <asp:Parameter Name="location" Type="String" />
                        <asp:Parameter Name="no_of_emp" Type="Int32" />
                        <asp:Parameter Name="url" Type="String" />
                        <asp:Parameter Name="company_type" Type="String" />
                        <asp:Parameter Name="experience_required" Type="String" />
                        <asp:Parameter Name="skills_required" Type="String" />
                        <asp:Parameter Name="min_salary" Type="Decimal" />
                        <asp:Parameter Name="qualification_required" Type="String" />
                        <asp:Parameter Name="username" Type="String" />
                    </InsertParameters>
                </asp:SqlDataSource>
                
                <br />
                <br />
                <asp:GridView ID="GridView1" runat="server" AllowSorting="True" 
                    AutoGenerateColumns="False" CellPadding="4" DataSourceID="coinfo" 
                    ForeColor="#333333" GridLines="None" Height="177px" 
                    DataKeyNames="username">
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#EFF3FB" />
                    <Columns>
                        <asp:CommandField ButtonType="Button" HeaderText="Remove" 
                            ShowDeleteButton="True" />
                        <asp:BoundField DataField="company_name" HeaderText="company_name" 
                            SortExpression="company_name" />
                        <asp:BoundField DataField="location" HeaderText="location" 
                            SortExpression="location" />
                        <asp:BoundField DataField="no_of_emp" HeaderText="no_of_emp" 
                            SortExpression="no_of_emp" />
                        <asp:BoundField DataField="url" HeaderText="url" SortExpression="url" />
                        <asp:BoundField DataField="company_type" HeaderText="company_type" 
                            SortExpression="company_type" />
                        <asp:BoundField DataField="experience_required" 
                            HeaderText="experience_required" SortExpression="experience_required" />
                        <asp:BoundField DataField="skills_required" HeaderText="skills_required" 
                            SortExpression="skills_required" />
                        <asp:BoundField DataField="min_salary" HeaderText="min_salary" 
                            SortExpression="min_salary" />
                        <asp:BoundField DataField="qualification_required" 
                            HeaderText="qualification_required" SortExpression="qualification_required" />
                    </Columns>
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <EditRowStyle BackColor="#2461BF" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="Label1" runat="server" Text="No Records" Visible="False"></asp:Label>
            </td>
        </tr>





















        





















</asp:Content>
<asp:Content ID="Content2" runat="server" contentplaceholderid="head">
    <style type="text/css">
        .style6
        {
            width: 521px;
            height: 67px;
        }
    </style>
</asp:Content>

