<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="emp_details.aspx.cs" Inherits="myjob.emp_details" Title="Untitled Page" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<table cellpadding="0" cellspacing="0" 
    style="width: 100%; height: 537px; vertical-align:top">
        <tr>
            <td style="width: 485px; height: 4px;">
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
            <td style="padding: 1px 4px; width: 485px" bgcolor="#000066">
&nbsp;&nbsp; <span class="style18" 
                    style="font-family: 'MS Reference Sans Serif'; font-weight: bold">&nbsp;<span 
                    style="color: #FF00FF"> </span></span>
                <span style="font-family: 'MS Reference Sans Serif'; font-weight: bold">
                <span style="border: 3px inset #666666; padding: 1px 4px; color: #00CC00; font-size: large">
                Companies Details</span></span> <br><br></td>
        </tr>

        <tr>
            <td style="padding: 1px 4px; width: 485px" valign="top">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
                    DataSourceID="jobdatasource1" CellPadding="4" ForeColor="#333333" 
                    GridLines="None" Width="763px" 
                    onselectedindexchanged="GridView1_SelectedIndexChanged">
                    <FooterStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <RowStyle BackColor="#FFFBD6" ForeColor="#333333" />
                    <Columns>
                        <asp:CommandField ShowSelectButton="True" />
                        <asp:BoundField HeaderText="job-id" />
                        <asp:BoundField DataField="company" HeaderText="Company name" 
                            SortExpression="company" />
                        <asp:BoundField DataField="location" HeaderText="Location" 
                            SortExpression="location" />
                        <asp:BoundField DataField="no of emp" HeaderText="No of Employee" 
                            SortExpression="no of emp" />
                        <asp:BoundField DataField="url" HeaderText="Web URL" SortExpression="url" />
                        <asp:BoundField DataField="company type" HeaderText="Company Type" 
                            SortExpression="company type" />
                        <asp:BoundField HeaderText="min salary" />
                        <asp:BoundField HeaderText="expirience requied" />
                        <asp:BoundField />
                    </Columns>
                    <PagerStyle BackColor="#FFCC66" ForeColor="#333333" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#FFCC66" Font-Bold="True" ForeColor="Navy" />
                    <HeaderStyle BackColor="#990000" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
                </asp:GridView>
                <asp:SqlDataSource ID="jobdatasource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [emp_details]"></asp:SqlDataSource>
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
            </td>
        </tr>

</asp:Content>
