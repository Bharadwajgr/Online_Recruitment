<%@ Page Language="C#" MasterPageFile="~/Site2.Master" AutoEventWireup="true" CodeBehind="changpass_seekr.aspx.cs" Inherits="myjob.changepasswd" Title="Untitled Page" %>
<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<script runat="server">

    protected void btnChange_Click(object sender, EventArgs e)
    {
        // connect to db
        try
        {
        SqlConnection con = new SqlConnection();
        con.ConnectionString = "Data Source=.\\SQLEXPRESS;AttachDbFilename=|DataDirectory|\\jobs_dbase.mdf;Integrated Security=True;User Instance=True";
       
            con.Open();
            SqlCommand cmd = new SqlCommand("update [post resume] set password=@newpwd where [user name] = @uname and password = @oldpwd", con);
            cmd.Parameters.Add("@newpwd", SqlDbType.VarChar, 50).Value = txtNewPwd.Text;
            cmd.Parameters.Add("@uname", SqlDbType.VarChar, 50).Value = TextBox1.Text;                 //(String) Session["uname"];
            cmd.Parameters.Add("@oldpwd", SqlDbType.VarChar, 50).Value = txtOldPwd.Text;

            if (cmd.ExecuteNonQuery() == 1)
                lblMsg.Text = "Password Changed Successfully!";
            else
                lblMsg.Text = "Sorry! Old password is not valid";
           
        }
        catch (Exception ex)
        {
            lblMsg.Text = "Error :" + ex.Message;
        }
       
    }
</script>





<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


<h3>
        Change Password for job seekers</h3>
    <br />
    <table>
    
    <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                User name :</td>
            <td >
                <asp:TextBox ID="TextBox1" runat="server" ></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1"
                    ErrorMessage="Username is missing!"></asp:RequiredFieldValidator>
                </td>
        </tr>
    
    
    
        <tr>
            <td>
                &nbsp;&nbsp;&nbsp;&nbsp;
                Old Password :</td>
            <td >
                <asp:TextBox ID="txtOldPwd" runat="server" TextMode="Password"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtOldpwd"
                    ErrorMessage="Password is missing!"></asp:RequiredFieldValidator>
                </td>
        </tr>
        <tr>
            <td >
                &nbsp;&nbsp;
                New Password :</td>
            <td >
                <asp:TextBox ID="txtNewPwd" runat="server" TextMode="Password"></asp:TextBox></td>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtNewPwd"
                    ErrorMessage="Password is missing!"></asp:RequiredFieldValidator>
        </tr>
        <tr>
            <td >
                Confirm Password:</td>
            <td >
                <asp:TextBox ID="txtConfirmPwd" runat="server" TextMode="Password"></asp:TextBox>
                
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtConfirmPwd"
                    ErrorMessage="Password is missing!"></asp:RequiredFieldValidator>
                
                </td>
        </tr>
    </table>
    <br />
    <asp:Button ID="btnChange" runat="server" Text="Change Password" OnClick="btnChange_Click" /><br />
    <br />
    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <asp:Label ID="lblMsg" runat="server" Font-Bold="True" ForeColor="#6600CC"></asp:Label><br />



&nbsp;



</asp:Content>
