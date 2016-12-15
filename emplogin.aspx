<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="emplogin.aspx.cs" Inherits="myjob.emplogin" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>




<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
 <table cellpadding="0" cellspacing="0" style="width: 100%; height: 360px;">
        <tr>
            <td style="width: 321px">
                &nbsp;</td>
            <td>
                                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td style="padding: 1px 4px; width: 321px">
&nbsp;&nbsp; <span class="style18" 
                    style="font-family: 'MS Reference Sans Serif'; font-weight: bold">&nbsp;<span 
                    style="color: #FF00FF"> </span></span>
                <span style="font-family: 'MS Reference Sans Serif'; font-weight: bold">
                <span style="border: 3px inset #666666; padding: 1px 4px; color: #FF00FF; font-size: large">
                Companies Login</span></span></td>
            <td rowspan="8" valign="top">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
                <span style="font-family: Garamond; font-weight: bold">Your search for job has come to an end with 
                this website.</span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                 <p style="height: 186px">
                     <table cellpadding="0" cellspacing="0" style="width: 100%; height: 131px">
                         <tr>
                             <td style="width: 219px">
                                 New organizations can sign up here</td>
                                                    <td rowspan="3" valign="top">
                                                        <asp:Image ID="Image1" runat="server" ImageUrl="~/images/stamp.jpg" 
                        BackColor="#0000CC" BorderColor="#660033" Height="202px" Width="258px"/>
                                                    </td>
                                                </tr>
                                                <tr>
                                                    <td style="width: 219px">
                                                        &nbsp;&nbsp;&nbsp; <b>&nbsp;</b><a href="emp_reg.aspx" 
                                                            style="text-decoration: none"><span 
                                                            style="color: #FF0000; font-weight: bold">Sign up</span></td>
                                                </tr>
                                                <tr>
                                                    <td style="height: 17px; width: 219px">
&nbsp;
                                                    </td>
                                                </tr>
                                            </table>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
          </p>
                
            &nbsp;
                
            </td>
            
        </tr>
        <tr>
            <td style="width: 321px">
             
                &nbsp;</td>
        </tr>
       
        <tr>
            <td style="width: 321px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; User name:&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="127px">
                </asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Username is missing!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 321px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                Password:
                <asp:TextBox ID="TextBox2" runat="server" Width="128px" textmode="Password"></asp:TextBox>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="Password is missing!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 321px; height: 18px;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="lblMsg" runat="server" Font-Bold="True" 
                    Font-Names="Microsoft Sans Serif" ForeColor="#000099"></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 321px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button 
                    ID="Button1" runat="server" Text="GO" Width="47px" onclick="Button1_Click" 
                    style="height: 26px"  />
            </td>
        </tr>
        <tr>
            <td style="width: 321px">
                <a href="changepass_comp.aspx" style="text-decoration: none"><b>
                <span style="color: #FF0000">Change password</span></b></a>&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 321px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>
</asp:Content> 


































































