<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="seekers_login.aspx.cs" Inherits="myjob.seekers_login" Title="Untitled Page" %>


 
     
    <asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <table cellpadding="0" cellspacing="0" 
            style="width: 116%; height: 400px; vertical-align:top">
        <tr>
            <td style="width: 341px; height: 27px;">
                </td>
            <td rowspan="9" valign="top">
          
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <br />
&nbsp;<span style="font-family: Garamond; font-weight: bold" >Your search for job has come to an end with 
                this website.</span><p dir="ltr" style="height: 58px">
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                    &nbsp;&nbsp;&nbsp;&nbsp;<asp:Image ID="Image1" runat="server" ImageUrl="~/example7.jpg" 
                        BackColor="#0000CC" BorderColor="#660033" Height="144px" Width="176px"/>
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;
          </p>
                
                &nbsp;
                                        <br />
                                        <br />
&nbsp;<br />
                                        Are you a new user?sign up here.<br />
                                        <br />
                          <a href="jseeker_postresume.aspx" style="text-decoration: none">
                <span style="color: #FF0000; font-weight: bold">Sign up</span></a></td>
        </tr>
        <tr>
            <td style="padding: 1px 4px; width: 341px">
&nbsp;&nbsp; <span class="style18" 
                    style="font-family: 'MS Reference Sans Serif'; font-weight: bold">&nbsp;<span 
                    style="color: #FF00FF"> </span></span>
                <span style="font-family: 'MS Reference Sans Serif'; font-weight: bold">
                <span style="border: 3px inset #666666; padding: 1px 4px; color: #FF0066; font-size: large">
                Job Seekers Login</span></span></td>
        </tr>
        <tr>
            <td style="width: 341px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 341px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;User name:&nbsp;
                
                <asp:TextBox ID="TextBox1" runat="server" Width="127px"></asp:TextBox>
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Username is missing!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 341px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Password:&nbsp;&nbsp;
                <asp:TextBox ID="TextBox2" runat="server" Width="128px" TextMode="Password"></asp:TextBox>
                 <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2"
                    ErrorMessage="Password is missing!"></asp:RequiredFieldValidator>
            </td>
        </tr>
        <tr>
            <td style="width: 341px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                <asp:Button ID="Button1" runat="server" Text="GO" Width="49px" onclick="Button1_Click"/>
                    <asp:Label ID="lblsmg" runat="server" Text=""></asp:Label>
                    </td>
        </tr>
        <tr>
            <td style="width: 341px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="changpass_seekr.aspx" 
                    style="text-decoration: none"><b><span style="color: #FF0000">Change password</span></b></a>&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
        <tr>
            <td style="width: 341px">
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 341px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </td>
        </tr>
    </table>


</asp:Content>
