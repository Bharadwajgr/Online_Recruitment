<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="adminlogin.aspx.cs" Inherits="myjob.adminlogin" Title="Untitled Page" %>

<script runat="server">

   

        protected void Buttonok(object sender, EventArgs e)
        {

            String id = "admin";
            String password = "admin";
            int i = 0;
            if (TextBox1.Text == id && TextBox2.Text == password && i == 0)
            {

                Response.Redirect("admin.aspx");

            }
            else
                SMS.Text = "Password or Username is Wrong";

        }
    

    </script>
    
    
    
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<table bgcolor="#FFCCFF" 
        
        style="border-style: groove; width: 100%; height: 559px; background-color: #B8CFCF">
        <tr bgcolor="#00FFCC">
            <td style="height: 18px; " colspan="3" bgcolor="#660066">
                </td>
        </tr>
        <tr bgcolor="#0066FF">
            <td style="color: #FFFFFF; font-size: large; height: 2px;" 
                bgcolor="#00D200" colspan="3">
                &nbsp;&nbsp; 
                <span style="font-family: 'Microsoft Sans Serif'; color:black;font-weight: bold; font-size: x-large">Administrator Login</span>&nbsp; 
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                &nbsp; User Name :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:TextBox ID="TextBox1" runat="server" Width="125px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;&nbsp;&nbsp; Password :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:TextBox 
                    ID="TextBox2" runat="server" textmode="Password" Width="130px"></asp:TextBox>
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:Label 
                    ID="SMS" runat="server" Text=""></asp:Label>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
                &nbsp;
                
                <asp:Button ID="submit1" runat="server" Text="Submit" onclick="Buttonok" style="height: 26px" />
            </td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
            </td>
            <td style="width: 536px">
            </td>
            <td>
            </td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
        <tr>
            <td style="width: 184px">
                &nbsp;</td>
            <td style="width: 536px">
                &nbsp;</td>
            <td>
                &nbsp;</td>
        </tr>
    </table>



































</asp:Content>
